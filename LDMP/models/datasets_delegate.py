"""
/***************************************************************************
 LDMP - A QGIS plugin
 This plugin supports monitoring and reporting of land degradation to the UNCCD 
 and in support of the SDG Land Degradation Neutrality (LDN) target.
                              -------------------
        begin                : 2021-02-25
        git sha              : $Format:%H$
        copyright            : (C) 2017 by Conservation International
        email                : trends.earth@conservation.org
 ***************************************************************************/
"""

__author__ = 'Luigi Pirelli / Kartoza'
__date__ = '2021-03-03'

from functools import partial
from typing import Optional, Union
from qgis.PyQt.QtCore import (
    QModelIndex,
    Qt,
    QCoreApplication,
    QObject,
    pyqtSignal,
    QRectF,
    QAbstractItemModel
)
from qgis.PyQt.QtWidgets import (
    QStyleOptionViewItem,
    QToolButton,
    QMenu,
    QStyledItemDelegate,
    QItemDelegate,
    QWidget,
    QAction
)
from qgis.PyQt.QtGui import (
    QPainter,
    QIcon
)
from LDMP.models.datasets import (
    Dataset,
    Datasets
)
from LDMP.models.algorithms import AlgorithmDescriptor
from LDMP import __version__, log, tr
from LDMP.gui.WidgetDatasetItem import Ui_WidgetDatasetItem


class DatasetItemDelegate(QStyledItemDelegate):

    def __init__(self, parent: QObject = None):
        super().__init__(parent)

        self.parent = parent

        # manage activate editing when entering the cell (if editable)
        self.enteredCell = None
        self.parent.entered.connect(self.manageEditing)

    def manageEditing(self, index: QModelIndex):
        # close previous editor
        if index == self.enteredCell:
            return
        else:
            if self.enteredCell:
                self.parent.closePersistentEditor(self.enteredCell)
        self.enteredCell = index

        # do nothing if cell is not editable
        model = index.model()
        flags = model.flags(index)
        if not (flags & Qt.ItemIsEditable):
            return

        # activate editor
        self.parent.openPersistentEditor(self.enteredCell)

    def paint(self, painter: QPainter, option: QStyleOptionViewItem, index: QModelIndex):
        # get item and manipulate painter basing on idetm data
        model = index.model()
        item = model.data(index, Qt.ItemDataRole)

        # if a Dataset => show custom widget
        if isinstance(item, Dataset):
            # get default widget used to edit data
            editorWidget = self.createEditor(self.parent, option, index)
            editorWidget.setGeometry(option.rect)
            pixmap = editorWidget.grab()

            painter.drawPixmap(option.rect.x(), option.rect.y(), pixmap)
        else:
            super().paint(painter, option, index)

    def sizeHint(self, option: QStyleOptionViewItem, index: QModelIndex):
        model = index.model()
        item = model.data(index, Qt.ItemDataRole)

        if isinstance(item, Dataset):
            widget = self.createEditor(None, option, index)
            return widget.size()
        return super().sizeHint(option, index)

    def createEditor(self, parent: QWidget, option: QStyleOptionViewItem, index: QModelIndex):
        # get item and manipulate painter basing on item data
        model = index.model()
        item = model.data(index, Qt.ItemDataRole)

        if isinstance(item, Dataset):
            editorWidget = DatasetEditorWidget(parent)
            editorWidget.labelDatasetName.setText(item.name)
            editorWidget.labelCreationDate.setText(item.creation_date.strftime('%Y-%m-%d %H:%M:%S'))
            editorWidget.labelSourceName.setText(item.source)

            # set icons
            icon = QIcon(':/plugins/LDMP/icons/mActionDeleteSelected.svg')
            editorWidget.pushButtonDelete.setIcon(icon)
            icon = QIcon(':/plugins/LDMP/icons/mActionPropertiesWidget.svg')
            editorWidget.pushButtonDetails.setIcon(icon)
            icon = QIcon(':/plugins/LDMP/icons/mActionAddRasterLayer.svg')
            editorWidget.pushButtonLoad.setIcon(icon)

            return editorWidget
        else:
            return super().createEditor(parent, option, index)

class DatasetEditorWidget(QWidget, Ui_WidgetDatasetItem):
    def __init__(self, parent=None):
        super(DatasetEditorWidget, self).__init__(parent)
        self.setupUi(self)
        self.setAutoFillBackground(True) # this allow to hide background prerendered pixmap
