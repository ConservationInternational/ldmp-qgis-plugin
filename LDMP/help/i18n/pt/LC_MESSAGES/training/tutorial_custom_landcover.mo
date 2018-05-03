��    7      �              �  ,   �  !   �  ~   �  H   [     �     �  R   �  Z    �   s  R   �     R  �   m     X     q  �   w  9  >	  ?   x
  i   �
     "  �   ;  �   �  I   m  G   �  ,  �  �   ,     �  \   �     S  �   _  m   A     �  �   �  z   �      Y  !  k   {  :  �  1  "  \   T     �     �  �   �  k   �  �   B  �   �     �     �  Y   �  s   #  �   �  �   I  ]   �  a  9  l   �  �    ,   �   )   %!  �   O!  O   �!     A"     S"  �   c"  �  �"  �   �$  a   Y%  #   �%    �%     �&     '  �   '  [  �'  V   X)  v   �)     &*  �   8*  �   �*  K   �+  D   �+  �  ",  �   �-     �.  `   �.     /    /  y   ,0     �0  �   �0  �   �1  Q  *2  �  |3  �   5  :  �5  G  �6     $8     �8  .   �8    �8  ~   �9  �   s:  �   ;     <     <  w   ,<  �   �<  �   3=  �   >  f   �>  �  !?  }   �@   **Estimated time of completion**: 40 minutes **Internet access**: Not required **Objective**: Learn how to load custom land cover data and to compute the land cover change sub-indicator using Trends.Earth. A progress bar will appear showing the percentage of the task completed. Area of analysis Artificial = 17 Back at the **Load a Custom Land Cover dataset** click **OK** for the tool to run. Back at the **Load a Custom Land Cover dataset** window you have options for selecting the band number in which the productivity data is stored, in case your input file is a multi band raster. You also have the option of modifying the resolution of the file. We recommend leaving those as defaults unless you have valid reasons for changing them. Back at the **Load a Custom Land Cover dataset** window, click **Browse** at the bottom of the window to select the **Output raster file**. Click **Browse** at the bottom of the window to select the **Output raster file**. Click **Save** to continue Click on the **Edit definition** button, this will open the **Setup aggregation of land cover data menu**. Here you need to assign each of the original input values of your dataset to one of the 7 UNCCD recommended land cover classes. Cropland = 12 through 14 Dates Define the year of reference for the data. In this case, since the land cover dataset for Uganda was developed for the **year 2000**, define it as such. Make sure you are assigning the correct year. For example, by default it is considered that a pixel that changed from **Grassland** to **Tree-covered** will be considered as improved. However, if in your study area woody plant encroachment is a degradation process, that transition should be changed for that particular study area to degradation (minus sign). For this example, the Uganda dataset has 18 land cover classes: From the Metadata of the land cover dataset, we know that the best aggregation approach is the following: Grassland = 8 through 11 If using Trends.Earth for official purposes, it is recommended that users choose an official boundary provided by the designated office of their country. If you did change the meaning of some of the transitions, click on **Save table to file...** to save the definition for later use. Then click **Next**. If you have made no changes to the default matrix, simply click **Next**. In the **Area** tab define the area of analysis. There are two options: In the **Load a Custom Land Cover dataset** use the radio button to select the format of the input file (raster or vector). For this tutorial select raster, but you could run it with your land cover vector data if you prefer. Click on **Browse** to navigate to the land cover file you wish to import. In the **Options** tab you can define the **Task name** and make some **Notes** to identify the analysis you are running. What information to indicate is optional, but we suggest noting: Indicators run Navigate to the folder where you want to save the file. Assign it a name and click **Save**. No data = 0 Now that both land cover datasets have been imported into Trends.Earth, the land cover change analysis tool needs to be run. Search for the Trends.Earth toolbar within QGIS, and click on the Calculate icon (|iconCalculator|). Once you have imported the land cover maps for years 2000 and 2015, you should have them both loaded to QGIS. Other land = 18 Refer to the :ref:`tut_compute_sdg` tutorial for instructions on how to use the land cover sub-indicator to compute the final SDG 15.3.1 after integration with changes land productivity and soil organic carbon. The **Calculate Indicators** menu will open. In that window, click on **Land cover** button found under Step 1 - Option 2. The **Calculate Land Cover Change** window will open. In the **Setup** tab, click on **Custom land cover dataset**. Use the drop down option next to **Initial layer (initial year)** and **Final layer (target year)** to change the dates accordingly. When done, click **Next**. The **Define Degradation** tab is where you define the meaning of each land cover transition in terms of degradation. Transitions indicated in red (minus sign) will be identified as degradation in the final output, transitions in beige (zero) will be identified as stable, and transitions in green (plus sign) will be identified as improvements. The **Load data** menu will open. Select **Land cover** from the **Import a custom input dataset** section. The `Natural Earth Administrative Boundaries`_ provided in Trends.Earth are in the `public domain`_. The boundaries and names used, and the designations used, in Trends.Earth do not imply official endorsement or acceptance by Conservation International Foundation, or by its partner organizations and contributors. The land cover dataset for this tutorial were provided by the `Regional Centre For Mapping Resource For Development <http://geoportal.rcmrd.org/layers/servir%3Auganda_landcover_2014_scheme_i>`_ and can be downloaded from this `link <https://www.dropbox.com/s/rl8afjh7xhnhk5a/uganda_land_cover.zip?dl=0>`_. To load custom land cover data click on the (|iconfolder|) icon in the Trends.Earth toolbar. Tree covered = 1 through 7 Use custom land cover data Use provided country and state boundaries: If you want to use this option make sure the **Administrative area** option is highlighted, and then select the First Level (country) or Second Level (state or province depending on the country). Use the **Select input file** window to navigate to the file to be imported, select it, and click **Open**. Use the **Setup aggregation of land cover data menu** to assign to each number in the **Input class** its corresponding **Output class**. Use your own area file: If you want to use your own area of analysis, make sure the **Area from file** option is highlighted. Then click **Browse** and navigate to the folder in your computer where you have the file stored. Water body = 16 Wetland = 15 When the processing is completed, the imported land cover dataset will be loaded to QGIS. When the processing is completed, the imported land cover degradation sub-indicator dataset will be loaded to QGIS. When you are done editing, click **Save definition file**. This option will save you time next time you run the tool, by simply loading the definition file you previously saved. When you click **Calculate**, the **Coose a name for the output file** will open. Select where to save the file and its name, and click **Save**. When you have selected the area for which you want to compute the indicators, click **Next**. You have one imported custom land cover data for one year (2000), but two are needed to perform the land cover change analysis. Repeat now steps 1 through 11, but this time with the most recent land cover map. For this tutorial, we will use another land cover map from Uganda from the year 2015. **Make sure to change the year date in the import menu**. `Download this page as a PDF for offline use <../pdfs/Trends.Earth_Tutorial05_Using_Custom_Land_Cover.pdf>`_ Project-Id-Version: Trends.Earth 0.57
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-05-02 15:51-0400
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: Mariano Gonzalez-Roglich <mgonzalez-roglich@conservation.org>, 2018
Language: pt
Language-Team: Portuguese (https://www.transifex.com/conservation-international/teams/80165/pt/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.3
 **Tempo estimado de conclusão**: 40 minutos **Acesso à Internet**: não obrigatório **Objetivo**: Aprenda como carregar dados de cobertura de terra personalizados e calcular o sub-indicador de mudança de cobertura do solo usando o Trends.Earth. Uma barra de progresso aparecerá mostrando a porcentagem da tarefa concluída. Área de análise Artificial = 17 De volta ao **Carregar um conjunto de dados da Cobertura da Terra Personalizada** clique em **OK** para a ferramenta ser executada. De volta à janela **Carregar um conjunto de dados de cobertura de terra personalizada**, você tem opções para selecionar o número da banda em que os dados de produtividade são armazenados, no caso de seu arquivo de entrada ser uma rasterização de várias bandas. Você também tem a opção de modificar a resolução do arquivo. Recomendamos deixar esses como padrões, a menos que você tenha motivos válidos para alterá-los. De volta à janela **Carregar um conjunto de dados de cobertura de terra personalizada**, clique em **Navegar** na parte inferior da janela para selecionar o arquivo de raster **Saída**. Clique em **Navegar** na parte inferior da janela para selecionar o **Arquivo de saída raster**. Clique em **Salvar** para continuar Clique no botão **Editar definição**, isso abrirá a agregação **Configuração do menu de dados de cobertura do solo**. Aqui você precisa atribuir cada um dos valores de entrada originais do seu conjunto de dados a uma das 7 classes de cobertura terrestre recomendadas pelo UNCCD. Lavoura = 12 a 14 datas Defina o ano de referência para os dados. Neste caso, uma vez que o conjunto de dados de cobertura da terra para Uganda foi desenvolvido para o **ano 2000**, defina-o como tal. Verifique se você está atribuindo o ano correto. Por exemplo, por padrão, considera-se que um pixel que mudou de **Grassland** para **Tree-covered** será considerado como melhorado. No entanto, se em sua área de estudo a invasão de plantas lenhosas for um processo de degradação, essa transição deve ser alterada para essa área de estudo em particular para degradação (sinal de menos). Para este exemplo, o conjunto de dados de Uganda tem 18 classes de cobertura de terra: Dos Metadados do conjunto de dados de cobertura da terra, sabemos que a melhor abordagem de agregação é a seguinte: Pastagem = 8 a 11 Se estiver usando o Trends.Earth para fins oficiais, é recomendável que os usuários escolham um limite oficial fornecido pelo escritório designado de seu país. Se você alterou o significado de algumas das transições, clique em **Salvar tabela no arquivo...** para salvar a definição para uso posterior. Em seguida, clique em **Next**. Se você não fez alterações na matriz padrão, basta clicar em **Next**. Na aba **Área**, defina a área de análise. Existem duas opções: No conjunto de dados **Carregar uma Cobertura Terrestre Personalizada**, use o botão de rádio para selecionar o formato do arquivo de entrada (raster ou vetor). Para este tutorial, selecione raster, mas você poderá executá-lo com seus dados vetoriais de cobertura da terra, se preferir. Clique em **Browse** para navegar até o arquivo de cobertura territorial que você deseja importar. Na guia **Opções**, você pode definir o **Nome da tarefa** e fazer algumas **Notas** para identificar a análise que está sendo executada. Quais informações para indicar são opcionais, mas sugerimos que você observe: Indicadores executados Navegue até a pasta onde você deseja salvar o arquivo. Atribua um nome e clique em **Salvar**. Nenhum dado = 0 Agora que ambos os conjuntos de dados de cobertura da terra foram importados para o Trends.Earth, a ferramenta de análise de mudança de cobertura da terra precisa ser executada. Procure a barra de ferramentas Trends.Earth no QGIS e clique no ícone Calcular (|iconCalculator|). Depois de ter importado os mapas de cobertura da terra para os anos 2000 e 2015, você deve ter ambos carregados no QGIS. Outro terreno = 18 Consulte o tutorial :ref:`tut_compute_sdg` para obter instruções sobre como usar o subindicador de cobertura da terra para calcular o ODS final 15.3.1 após a integração com a produtividade da terra e o carbono orgânico do solo. O menu **Calculate Indicators** será aberto. Nessa janela, clique no botão **Cobertura da terra** encontrado na Etapa 1 - Opção 2. A janela **Calcular Mudança de Cobertura da Terra** será aberta. Na guia **Configuração**, clique em **Conjunto de dados da cobertura terrestre personalizada**. Use a opção suspensa ao lado de **Camada inicial (ano inicial)** e **Camada final (ano de destino)** para alterar as datas de acordo. Quando terminar, clique em **Next**. A aba **Definir Degradação** é onde você define o significado de cada transição de cobertura da terra em termos de degradação. As transições indicadas em vermelho (sinal de menos) serão identificadas como degradação no resultado final, as transições em bege (zero) serão identificadas como estáveis ​​e as transições em verde (sinal de adição) serão identificadas como melhorias. O menu **Carregar dados** será aberto. Selecione **Cobertura do solo** na seção **Importar um conjunto de dados de entrada personalizado**. The `Natural Earth Administrative Boundaries`_ provided in Trends.Earth are in the `public domain`_. The boundaries and names used, and the designations used, in Trends.Earth do not imply official endorsement or acceptance by Conservation International Foundation, or by its partner organizations and contributors. O conjunto de dados de cobertura do solo para este tutorial foi fornecido pelo `Centro Regional para o Recurso de Mapeamento para o Desenvolvimento <http://geoportal.rcmrd.org/layers/serviruganda_landcover_2014_scheme_i>`_ e pode ser baixado deste `link <https://www.dropbox.com/s/rl8afjh7xhnhk5a/uganda_land_cover.zip?dl=0>`_. Para carregar dados de cobertura de terra personalizados, clique no ícone (|iconfolder|) na barra de ferramentas Trends.Earth. Árvore coberta = 1 a 7 Use dados de cobertura de terra personalizados Use os limites de país e estado fornecidos: Se você quiser usar essa opção, certifique-se de que a opção **Área Administrativa** esteja destacada e, em seguida, selecione Primeiro Nível (país) ou Segundo Nível (estado ou província, dependendo do país). Use a janela **Selecionar arquivo de entrada** para navegar até o arquivo a ser importado, selecione-o e clique em **Abrir**. Use a agregação **Setup do menu de dados de cobertura do solo** para atribuir a cada número na classe **Input** sua correspondente **Output class**. Use seu próprio arquivo de área: se você quiser usar sua própria área de análise, verifique se a opção **Área do arquivo** está realçada. Em seguida, clique em **Navegar** e navegue até a pasta em seu computador onde você armazenou o arquivo. Corpo d'água = 16 Pantanal = 15 Quando o processamento estiver concluído, o conjunto de dados da cobertura da terra importada será carregado no QGIS. Quando o processamento estiver concluído, o conjunto de dados do subindicador da degradação da cobertura importada será carregado no QGIS. Quando terminar de editar, clique em **Salvar arquivo de definição**. Esta opção economizará tempo na próxima vez que você executar a ferramenta, simplesmente carregando o arquivo de definição que você salvou anteriormente. Quando você clica em **Calcular**, o **Um nome para o arquivo de saída** será aberto. Selecione onde salvar o arquivo e seu nome e clique em ** Salvar**. Quando você tiver selecionado a área para a qual deseja calcular os indicadores, clique em **Next**. Você tem um dado de cobertura de terra personalizado importado por um ano (2000), mas dois são necessários para executar a análise de mudança de cobertura do solo. Repita agora as etapas de 1 a 11, mas desta vez com o mapa de cobertura da terra mais recente. Para este tutorial, usaremos outro mapa de cobertura do solo de Uganda a partir do ano de 2015. **Certifique-se de alterar a data do ano no menu de importação**. `Faça o download desta página como um PDF para uso off-line <../pdfs/Trends.Earth_Tutorial05_Using_Custom_Land_Cover.pdf>`_ 