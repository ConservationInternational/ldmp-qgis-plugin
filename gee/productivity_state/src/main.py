"""
Code for calculating vegetation productivity state.
"""
# Copyright 2017 Conservation International

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import random
import json

import ee

from landdegradation import GEEIOError

from landdegradation.util import TEImage
from landdegradation.schemas import BandInfo


def productivity_state(year_bl_start, year_bl_end,
                       year_tg_start, year_tg_end,
                       ndvi_gee_dataset, geojson, EXECUTION_ID, logger):

    logger.debug("Entering productivity_state function.")

    ndvi_1yr = ee.Image(ndvi_gee_dataset)

    # compute min and max of annual ndvi for the baseline period
    bl_ndvi_range = ndvi_1yr.select(ee.List(['y{}'.format(i) for i in range(year_bl_start, year_bl_end + 1)])) \
        .reduce(ee.Reducer.percentile([0, 100]))

    # add two bands to the time series: one 5% lower than min and one 5% higher than max
    bl_ndvi_ext = ndvi_1yr.select(ee.List(['y{}'.format(i) for i in range(year_tg_start, year_tg_end + 1)])) \
        .addBands(bl_ndvi_range.select('p0').subtract((bl_ndvi_range.select('p100').subtract(bl_ndvi_range.select('p0'))).multiply(0.05)))\
        .addBands(bl_ndvi_range.select('p100').add((bl_ndvi_range.select('p100').subtract(bl_ndvi_range.select('p0'))).multiply(0.05)))

    # compute percentiles of annual ndvi for the extended baseline period
    bl_ndvi_perc = bl_ndvi_ext.reduce(ee.Reducer.percentile([10, 20, 30, 40, 50, 60, 70, 80, 90, 100]))

    # compute mean ndvi for the baseline and target period period
    bl_ndvi_mean = ndvi_1yr.select(ee.List(['y{}'.format(i) for i in range(year_bl_start, year_bl_end + 1)])) \
        .reduce(ee.Reducer.mean()).rename(['ndvi'])
    tg_ndvi_mean = ndvi_1yr.select(ee.List(['y{}'.format(i) for i in range(year_tg_start, year_tg_end + 1)])) \
        .reduce(ee.Reducer.mean()).rename(['ndvi'])

    # reclassify mean ndvi for baseline period based on the percentiles
    bl_classes = ee.Image(-32768) \
        .where(bl_ndvi_mean.lte(bl_ndvi_perc.select('p10')), 1) \
        .where(bl_ndvi_mean.gt(bl_ndvi_perc.select('p10')), 2) \
        .where(bl_ndvi_mean.gt(bl_ndvi_perc.select('p20')), 3) \
        .where(bl_ndvi_mean.gt(bl_ndvi_perc.select('p30')), 4) \
        .where(bl_ndvi_mean.gt(bl_ndvi_perc.select('p40')), 5) \
        .where(bl_ndvi_mean.gt(bl_ndvi_perc.select('p50')), 6) \
        .where(bl_ndvi_mean.gt(bl_ndvi_perc.select('p60')), 7) \
        .where(bl_ndvi_mean.gt(bl_ndvi_perc.select('p70')), 8) \
        .where(bl_ndvi_mean.gt(bl_ndvi_perc.select('p80')), 9) \
        .where(bl_ndvi_mean.gt(bl_ndvi_perc.select('p90')), 10)

    # reclassify mean ndvi for target period based on the percentiles
    tg_classes = ee.Image(-32768) \
        .where(tg_ndvi_mean.lte(bl_ndvi_perc.select('p10')), 1) \
        .where(tg_ndvi_mean.gt(bl_ndvi_perc.select('p10')), 2) \
        .where(tg_ndvi_mean.gt(bl_ndvi_perc.select('p20')), 3) \
        .where(tg_ndvi_mean.gt(bl_ndvi_perc.select('p30')), 4) \
        .where(tg_ndvi_mean.gt(bl_ndvi_perc.select('p40')), 5) \
        .where(tg_ndvi_mean.gt(bl_ndvi_perc.select('p50')), 6) \
        .where(tg_ndvi_mean.gt(bl_ndvi_perc.select('p60')), 7) \
        .where(tg_ndvi_mean.gt(bl_ndvi_perc.select('p70')), 8) \
        .where(tg_ndvi_mean.gt(bl_ndvi_perc.select('p80')), 9) \
        .where(tg_ndvi_mean.gt(bl_ndvi_perc.select('p90')), 10)

    # difference between start and end clusters >= 2 means improvement (<= -2 
    # is degradation)
    classes_chg = tg_classes.subtract(bl_classes)

    out = TEImage(classes_chg.addBands(bl_classes).addBands(tg_classes).int16(),
                  [BandInfo("Productivity state (degradation)", add_to_map=True,
                            metadata={'year_bl_start': year_bl_start, 'year_bl_end': year_bl_end, 'year_tg_start': year_tg_start, 'year_tg_end': year_tg_end}),
                   BandInfo("Productivity state classes", metadata={'year_start': year_bl_start, 'year_end': year_bl_end}),
                   BandInfo("Productivity state classes", metadata={'year_start': year_tg_start, 'year_end': year_tg_end})])

    return out


def run(params, logger):
    """."""
    logger.debug("Loading parameters.")
    year_bl_start = params.get('year_bl_start', 2001)
    year_bl_end = params.get('year_bl_end', 2012)
    year_tg_start = params.get('year_tg_start', 2013)
    year_tg_end = params.get('year_tg_end', 2015)
    geojson = params.get('geojson', None)
    ndvi_gee_dataset = params.get('ndvi_gee_dataset', None)

    logger.debug("Loading geojson.")
    if geojson is None:
        raise GEEIOError("Must specify an input area")
    else:
        geojson = json.loads(geojson)

    if ndvi_gee_dataset is None:
        raise GEEIOError("Must specify an NDVI dataset")

    # Check the ENV. Are we running this locally or in prod?
    if params.get('ENV') == 'dev':
        EXECUTION_ID = str(random.randint(1000000, 99999999))
    else:
        EXECUTION_ID = params.get('EXECUTION_ID', None)

    logger.debug("Running main script.")
    out = productivity_state(year_bl_start, year_bl_end, year_tg_start,
                             year_tg_end, ndvi_gee_dataset, geojson, 
                             EXECUTION_ID, logger)

    proj = ee.Image(ndvi_gee_dataset).projection()
    return out.export(proj, geojson, 'prod_state', logger, EXECUTION_ID)
