��          �               �  ,   �  !   �  `     z   m  a  �  �   J     �     	  d   $  g  �  j   �  -  \     �  �   �     e	  u   {	  �   �	  
   �
     �
  m   �
  W   :     �  k   �  `     n   |  �  �  +   �          "  �   �  �  S  �   :       "   %  t   H  �  �  ~   j  ~  �     h    y     ~  �   �  �   ;  
        )  �   B  w   �  6   R  z   �  u     �   z   **Estimated time of completion**: 20 minutes **Internet access**: Not required **Objective**: Learn how to load custom land productivity data computed outside of Trends.Earth. Back at the **Load a Custom Land Productivity Dataset** window click **OK** on the lower right corner to process the data. Back at the **Load a Custom Land Productivity Dataset** window you have options for selecting the band number in which the productivity data is stored, in case your input file is a multi band raster. You also have the option of modifying the resolution of the file. We recommend leaving those as defaults unless you have valid reasons for changing them. Click **Browse** at the bottom of the window to select the **Output raster file** and navigate to the folder where you want to save the file. Assign it a name and click **OK**. Declining = 1 Early signs of decline = 2 For the productivity data to be used in Trends.Earth the file need to be coded in the following way: If the values of the input file do not exactly match the requirements describe above, you will see a warning message. In many cases the warning is triggered by the definition of NoData, but the tool will still try to import it. For that reason, it is **extremely important** for you to explore the output layer to make sure the results are mapped as expected. If your layer is not coded in such a way, please do the necessary adjustments prior to using Trends.Earth. In the **Load a Custom Land Productivity Dataset** use the radio button to select the format of the input file (raster or vector). For this tutorial select raster, since the data distributed by the UNCCD is in raster format. Click on **Browse** to navigate to the productivity file you wish to import. Increasing = 5 Land productivity data should be formatted following UNCCD guidelines for reporting indicating areas of declining, early signs of decline, stable but stressed, stable, or increasing primary productivity. No data = 0 or -32768 Once you click **OK** in the warning window, a progress bar will appear showing the percentage of the task completed. Refer to the :ref:`tut_compute_sdg` tutorial for instructions on how to use the imported LPD to compute the final SDG 15.3.1 after integration with land cover and soil organic carbon. Stable = 4 Stable but stressed = 3 The **Load data** menu will open. Select **Productivity** from the **Import a custom input dataset** section. To load productivity data click on the (|iconfolder|) icon in the Trends.Earth toolbar. Use custom productivity data Use the **Select input file** window to navigate to the file to be imported, select it, and click **Open**. When the processing is completed, the imported land productivity dataset will be loaded to QGIS. `Download this page as a PDF for offline use <../pdfs/Trends.Earth_Tutorial04_Using_Custom_Productivity.pdf>`_ Project-Id-Version: Trends.Earth 0.57
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-05-02 15:51-0400
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: Mariano Gonzalez-Roglich <mgonzalez-roglich@conservation.org>, 2018
Language: fr
Language-Team: French (https://www.transifex.com/conservation-international/teams/80165/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.3
 **Temps estimé d'achèvement**: 20 minutes **Accès Internet**: Non requis **Objectif**: Apprenez à charger des données de productivité terrestre personnalisées calculées en dehors de Trends.Earth. De retour à la fenêtre **Charger un ensemble de données de productivité terrain personnalisé**, cliquez sur **OK** dans le coin inférieur droit pour traiter les données. De retour à la fenêtre **Charger un ensemble de données de productivité terrain personnalisé**, vous avez des options pour sélectionner le numéro de bande dans lequel les données de productivité sont stockées, dans le cas où votre fichier d'entrée est un raster multi-bande. Vous avez également la possibilité de modifier la résolution du fichier. Nous vous recommandons de les laisser comme paramètres par défaut, sauf si vous avez des raisons valables de les changer. Cliquez sur **Parcourir** en bas de la fenêtre pour sélectionner **Fichier raster en sortie** et naviguez jusqu'au dossier dans lequel vous souhaitez enregistrer le fichier. Attribuez-lui un nom et cliquez sur **OK**. En déclin = 1 Les premiers signes de déclin = 2 Pour les données de productivité à utiliser dans Trends.Earth, le fichier doit être codé de la façon suivante: Si les valeurs du fichier d'entrée ne correspondent pas exactement aux exigences décrites ci-dessus, vous verrez un message d'avertissement. Dans de nombreux cas, l'avertissement est déclenché par la définition de NoData, mais l'outil essaie toujours de l'importer. Pour cette raison, il est **extrêmement important** pour vous d'explorer la couche de sortie pour vous assurer que les résultats sont mappés comme prévu. Si votre couche n'est pas codée de cette manière, veuillez faire les ajustements nécessaires avant d'utiliser Trends.Earth. Dans le **Charger un ensemble de données de productivité terrain personnalisé**, utilisez le bouton radio pour sélectionner le format du fichier d'entrée (raster ou vecteur). Pour ce didacticiel, sélectionnez raster, car les données distribuées par UNCCD sont au format raster. Cliquez sur **Parcourir** pour accéder au fichier de productivité que vous souhaitez importer. Augmentation = 5 Les données sur la productivité des terres doivent être formatées selon les directives de la CNULD pour les rapports indiquant les zones de déclin, les premiers signes de déclin, la productivité primaire stable mais stressée, stable ou en augmentation. Aucune donnée = 0 ou -32768 Une fois que vous avez cliqué sur **OK** dans la fenêtre d'avertissement, une barre de progression apparaît indiquant le pourcentage de la tâche terminée. Reportez-vous au tutoriel :ref:`tut_compute_sdg` pour obtenir des instructions sur l'utilisation du LPD importé pour calculer l'ODD final 15.3.1 après intégration avec la couverture terrestre et le carbone organique du sol. Stable = 4 Stable mais stressé = 3 Le menu **Charger les données** s'ouvre. Sélectionnez **Productivité** dans la section **Importer un ensemble de données d'entrée personnalisé**. Pour charger les données de productivité, cliquez sur l'icône (|iconfolder|) dans la barre d'outils de Trends.Earth. Utiliser des données de productivité personnalisées Utilisez la fenêtre **Select input file** pour accéder au fichier à importer, sélectionnez-le et cliquez sur **Open**. Lorsque le traitement est terminé, l'ensemble de données de productivité terrestre importé est chargé dans QGIS. `Télécharger cette page en format PDF pour une utilisation hors connexion <../pdfs/Trends.Earth_Tutorial04_Using_Custom_Productivity.pdf>`_ 