��    "      ,              <  ,   =  �   j  K        _      }  �   �     /  �   M  (   �  �         3     5   8  p   n  �   �  �   c  >   	  O   A	  G   �	  �   �	     �
  �   �
  M  �  l   �  p  ]  �   �  �   R  H    �   N    �  �   �  r  �  h   �  �  h  +   S  �     D   G      �  $   �  �   �  %   �  �   �  :   R  !  �  H  �  B   �  :   ;  u   v  �   �  �   |   Q   <!  `   �!  O   �!  �   ?"  '   7#    _#  a  m$  �   �%  �  R&  �   	(  �   �(  �  i)  �   9,  h  �,  �   G/  �   0  �   �1   **Estimated time of completion**: 20 minutes **FAILED**: There has been some error in the parameters selected and the task could not be completed. Please run the tool again to make sure all parameters are correct. **FINISHED**: The task has been completed and it is ready to be downloaded. **Internet access**: Required **OPTIONAL: Computing Pyramids** **Objective**: Learn how to check the status of submitted tasks, download them and compute pyramids for faster visualization of results in QGIS. **Overview format**: External **RUNNING**: The task has been successfully submitted to Earth Engine and it is being processed. Wait a few minutes and click **Refresh list** again. **Resampling method**: Nearest Neighbour A new folder named **New Folder** will appear on your desktop with the name highlighted in blue. Type the name you want to assign it. In this example, we named it **Trends.Earth**. Then press the **Enter** key on your keyboard to save the name. A window will open for you to define the location (the folder you just created on the Desktop) and the name of the output file. Make the name as informative as possible so you can tell what information it contains the next time you want to use those results. Click **OK** to go back to the QGIS main interface. Make sure that the settings at the bottom are set to: Move your mouse cursor to the **New** option at the bottom of the menu, and another menu will show to the right. Navigate again to QGIS, and click on the cloud with the arrow facing down icon (|iconCloudDownload|) from the Trends.Earth toolbar. Navigate with your cursor to the layer you want to compute pyramids for and right click over it. A menu will open. Navigate to **Properties** and click on it. Navigate with your mouse cursor to **Folder** and right-click. Once in the Desktop, **right click** on an empty space and a menu will display. Once on the **Pyramids** tab you will see a description about they are. Once the download is completed, the results will be loaded in QGIS. In this example you'll see a layer for each of the SDG 15.3.1 computed: land productivity, land cover, and soil organic carbon. Task status & download The **Download results from Earth Engine** will open. Click **Refresh List** to check the updated status of the tasks submitted in the previous section of the tutorial (:ref:`1-step_subindicators`). One of three messages will show there: The Download window will disappear and you will be brought back to the QGIS interface. You will see light blue progress bar indicating which percentage of the file has been downloaded. This could take from a few seconds to several minutes depending on the size of the area selected and the speed of the Internet connection available. The Layer Properties menu will open. From the options on the left, navigate to **Pyramids** and click on it. The results of Trends.Earth analysis are rasters in TIF format for indicators and XLSX spreadsheets for the tabular outputs. You will need to define in each case where files will be stored in your computer. We recommend you create a folder where to store the results for easy posterior access. The **Desktop** is a location usually selected because it is easy to find. Then click on the **Build pyramids** button. The progress bar next to it will show which percentage of the task has been completed. To create a folder in your computer's desktop, navigate there by minimizing all the windows and programs you have open (Note: not closing, simply removing them from the display). To the right of the window you will see the **Resolutions** options. Selecting all of them will make displaying in QGIS the fastest, but this could take hours to compute depending on the file size and processing capabilities of the computer you are using. For the Uganda example, we can select them all, but if using a larger area or higher spatial resolution than the default 250m, we recommend you select alternating resolutions options (i.e. one resolution selected and one not selected, and so on). Resolutions are selected by clicking on them. When selected, they will turn blue. When pyramids have been built you will notice that the icons next to the resolutions will have changed from **red crosses** to **yellow pyramids**. When the raster file is too big, due to a large study area, high spatial resolution, or a large number of bands in the file, the data could take several seconds to display. If you change the zoom or turn layers on an  off frequently, this could make the work a bit frustrating. An option to overcome this is to compute **Pyramids** to the file. This process will take from **minutes to hours** to run depending on the size of the area, so make sure to have enough time for it to process. To compute pyramids you have to: When the task shows status **FINISHED** you can select it by clicking on it (it will be highlighted in blue), and them click on the **Download results** button. When using the **Calculate all three sub-indicators in one step** option (described in the previous tutorial :ref:`1-step_subindicators`), all the bands are stored in a single TIF file, so even though you see three layers loaded in the QGIS window, they all refer to the same file. This means that the pyramids need to be computed only once for the three sub-indicators. `Download this page as a PDF for offline use <../pdfs/Trends.Earth_Tutorial03_Downloading_Results.pdf>`_ Project-Id-Version: Trends.Earth 0.57
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
 **Temps estimé d'achèvement**: 20 minutes **FAILED**: Il y a eu une erreur dans les paramètres sélectionnés et la tâche n'a pas pu être complétée. Veuillez réexécuter l'outil pour vous assurer que tous les paramètres sont corrects. **FINI**: La tâche est terminée et prête à être téléchargée. **Accès Internet**: Obligatoire **FACULTATIF: Calcul des pyramides** **Objectif**: Apprenez à vérifier l'état des tâches soumises, à les télécharger et à calculer des pyramides pour une visualisation plus rapide des résultats dans QGIS. **Présentation générale**: externe **RUNNING**: La tâche a été envoyée à Earth Engine et elle est en cours de traitement. Attendez quelques minutes et cliquez à nouveau sur **Actualiser la liste**. **Méthode de rééchantillonnage**: Voisin le plus proche Un nouveau dossier nommé **Nouveau dossier** apparaîtra sur votre bureau avec le nom surligné en bleu. Tapez le nom que vous voulez lui attribuer. Dans cet exemple, nous l'avons nommé **Trends.Earth**. Appuyez ensuite sur la touche **Entrée** de votre clavier pour enregistrer le nom. Une fenêtre s'ouvrira pour vous permettre de définir l'emplacement (le dossier que vous venez de créer sur le bureau) et le nom du fichier de sortie. Faites en sorte que le nom soit aussi informatif que possible afin de pouvoir dire quelles informations il contient la prochaine fois que vous voudrez utiliser ces résultats. Cliquez sur **OK** pour revenir à l'interface principale de QGIS. Assurez-vous que les paramètres en bas sont définis sur: Déplacez le curseur de votre souris sur l'option **Nouveau** en bas du menu, et un autre menu s'affichera à droite. Accédez à nouveau à QGIS et cliquez sur le nuage avec la flèche vers le bas icône (|iconCloudDownload|) de la barre d'outils Trends.Earth. Naviguez avec votre curseur sur la couche pour laquelle vous voulez calculer les pyramides et faites un clic droit dessus. Un menu va s'ouvrir. Accédez à **Propriétés** et cliquez dessus. Naviguez avec le curseur de votre souris sur **Dossier** et faites un clic droit. Une fois dans le bureau, cliquez avec le bouton droit sur un espace vide et un menu s'affichera. Une fois sur l'onglet **Pyramides**, vous verrez une description à leur sujet. Une fois le téléchargement terminé, les résultats seront chargés dans QGIS. Dans cet exemple, vous verrez une couche pour chacun des ODD 15.3.1 calculés: la productivité des terres, la couverture des terres et le carbone organique des sols. Statut de la tâche et téléchargement Les **résultats de téléchargement de Earth Engine** s'ouvriront. Cliquez sur **Actualiser la liste** pour vérifier l'état mis à jour des tâches soumises dans la section précédente du tutoriel (:ref:`1-step_subindicators`). L'un des trois messages montrera là: La fenêtre de téléchargement disparaîtra et vous serez redirigé vers l'interface QGIS. Vous verrez une barre de progression bleu clair indiquant quel pourcentage du fichier a été téléchargé. Cela peut prendre de quelques secondes à plusieurs minutes selon la taille de la zone sélectionnée et la vitesse de la connexion Internet disponible. Le menu Propriétés de la couche s'ouvre. À partir des options sur la gauche, naviguez jusqu'à **Pyramides** et cliquez dessus. Les résultats de l'analyse de Trends.Earth sont des rasters au format TIF pour les indicateurs et des tableurs XLSX pour les sorties tabulaires. Vous devrez définir dans chaque cas où les fichiers seront stockés dans votre ordinateur. Nous vous recommandons de créer un dossier où stocker les résultats pour faciliter l'accès postérieur. Le **Bureau** est un emplacement généralement sélectionné car il est facile à trouver. Puis cliquez sur le bouton **Construire les pyramides**. La barre de progression à côté indique le pourcentage de la tâche terminée. Pour créer un dossier sur le bureau de votre ordinateur, naviguez là en minimisant toutes les fenêtres et les programmes que vous avez ouverts (Note: ne pas fermer, en les supprimant simplement de l'affichage). À droite de la fenêtre, vous verrez les options **Résolutions**. En sélectionnant chacun d'entre eux, l'affichage dans QGIS sera le plus rapide, mais cela pourrait prendre des heures à calculer en fonction de la taille du fichier et des capacités de traitement de l'ordinateur que vous utilisez. Pour l'exemple ougandais, nous pouvons tous les sélectionner, mais si vous utilisez une zone plus grande ou une résolution spatiale supérieure à 250m par défaut, nous vous recommandons de sélectionner des options de résolutions alternatives (résolution sélectionnée et non sélectionnée, etc.). Les résolutions sont sélectionnées en cliquant dessus. Lorsqu'ils sont sélectionnés, ils deviennent bleus. Lorsque les pyramides ont été construites, vous remarquerez que les icônes à côté des résolutions auront changé de **croix rouges** à **pyramides jaunes**. Lorsque le fichier raster est trop volumineux, en raison d'une grande zone d'étude, d'une résolution spatiale élevée ou d'un grand nombre de bandes dans le fichier, l'affichage des données peut prendre plusieurs secondes. Si vous modifiez le zoom ou désactivez fréquemment les calques, cela pourrait rendre le travail un peu frustrant. Une option pour surmonter ceci est de calculer **Pyramides** dans le fichier. Ce processus prendra de **minutes à heures** à courir en fonction de la taille de la zone, alors assurez-vous d'avoir assez de temps pour le traitement. Pour calculer les pyramides, vous devez: Lorsque la tâche affiche le statut **FINI**, vous pouvez le sélectionner en cliquant dessus (il sera surligné en bleu) et en cliquant sur le bouton **Télécharger les résultats**. Lorsque vous utilisez l'option **Calculer les trois sous-indicateurs en une étape** (décrite dans le tutoriel précédent :ref:`1-step_subindicators`), toutes les bandes sont stockées dans un seul fichier TIF, donc même si vous voyez trois couches chargées dans la fenêtre QGIS, elles se réfèrent toutes au même fichier. Cela signifie que les pyramides doivent être calculées une seule fois pour les trois sous-indicateurs. `Télécharger cette page en format PDF pour une utilisation hors connexion <../pdfs/Trends.Earth_Tutorial03_Downloading_Results.pdf>`_ 