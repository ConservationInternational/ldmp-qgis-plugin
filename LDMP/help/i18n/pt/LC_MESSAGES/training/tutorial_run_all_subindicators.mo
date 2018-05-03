��                           ,        J  ^  h  �   �     �     �     �  9  �  �   /  �   �  I   a  G   �  v  �  �   j	  �   %
  �  �
     x  ;  �  �   �     `  d   y  �   �  j  }  :  �  �   #  �     �   �  �   �  ]   �  A   �  j   .  �  �  ,   t  $   �  �  �    Y     h  #   z     �  [  �  �      �   �  K   Y  D   �  �  �  �   �   �   !  �  "     �#  :  $  �   L%  "   �%  c   &  �   &  �  )'  :  �(    *  �    +  �    ,  �   �,  f   �-  _   L.  z   �.   **Estimated time of completion**: 30 minutes **Internet access**: Required **Objective**: Learn how to run SDG 15.3.1 sub-indicators (changes in land productivity, land cover and soil organic carbon) using Trends.Earth and the default data: LPD from JRC for land productivity, ESA CCI for land cover, and SoilGrids for soil organic carbon. In this tutorial we will use Uganda as an example, but you can choose any study area. A light blue bar will temporarily show, indicating that the task was successfully submitted. The analysis will be run in Google servers and could take between 5 and 15 minutes depending on the size of the study area (larger areas tend to take longer). Area of analysis Click **Save** to continue Dates For example, by default it is considered that a pixel that changed from **Grassland** to **Tree-covered** will be considered as improved. However, if in your study area woody plant encroachment is a degradation process, that transition should be changed for that particular study area to degradation (minus sign). If using Trends.Earth for official purposes, it is recommended that users choose an official boundary provided by the designated office of their country. If you did change the meaning of some of the transitions, click on **Save table to file...** to save the definition for later use. Then click **Next**. If you have made no changes to the default matrix, simply click **Next**. In the **Area** tab define the area of analysis. There are two options: In the **Land Cover Setup** tab you have the option of using the default aggregation method proposed by the UNCCD default data or you can customize the aggregation of the legend from the original ESA CCI land cover classes to the 7 required for UNCCD reporting. To customize it, click on **Edit definition** and the **Setup aggregation of land cover data** window will open. In the **Options** tab you can define the **Task name** and make some **Notes** to identify the analysis you are running. What information to indicate is optional, but we suggest noting: In the **Setup** tab, select the years of analysis (2000-2015) and make sure that the **UNCCD default data** is selected, and click next. In this window you will see the original ESA CCI land cover class in the column **Input class** and the final aggregation in the column **Output class**. To change the output class simply click in the drop down arrow next to the color, and select the final output class you want the input class to be reassigned to. Note that this step is only needed if you consider that the default aggregation scheme does not represent the conditions of your study area. Indicators run Refer to the :ref:`indicator-15-3-1` section of this manual to learn about the Trends.Earth productivity indicators developed following the `UNCCD Good Practice Guidance (GPG) <http://www2.unccd.int/sites/default/files/relevant-links/2017-10/Good%20Practice%20Guidance_SDG%20Indicator%2015.3.1_Version%201.0.pdf>`_. Refer to the :ref:`task_download` tutorial for instructions on how to check the status of the tasks submitted and for downloading results from Trends.Earth. Run 1-step subindicators Search for the Trends.Earth toolbar within QGIS, and click on the Calculate icon (|iconCalculator|). The **Calculate Indicators** menu will open. In that window, click on **Calculate all three sub-indicators in one step** button found under Step 1 - Option 1. The **Define Effects of Land Cover Change** tab is where you define the meaning of each land cover transition in terms of degradation. Transitions indicated in red (minus sign) will be identified as degradation in the final output, transitions in beige (zero) will be identified as stable, and transitions in green (plus sign) will be identified as improvements. The `Natural Earth Administrative Boundaries`_ provided in Trends.Earth are in the `public domain`_. The boundaries and names used, and the designations used, in Trends.Earth do not imply official endorsement or acceptance by Conservation International Foundation, or by its partner organizations and contributors. Use provided country and state boundaries: If you want to use this option make sure the **Administrative area** option is highlighted, and then select the First Level (country) or Second Level (state or province depending on the country). Use your own area file: If you want to use your own area of analysis, make sure the **Area from file** option is highlighted. Then click **Browse** and navigate to the folder in your computer where you have the file stored. When done, click **Calculate** and the task will be submitted to Google Earth Engine for calculations. You will notice that the **Calculate SDG 15.3.1 indicator (one-step)** window will disappear and you will be brought back to QGIS. When you are done editing, click **Save definition file**. This option will save you time next time you run the tool, by simply loading the definition file you previously saved. When you have selected the area for which you want to compute the indicators, click **Next**. You will be back at the **Land Cover Setup** tab, click **Next**. `Download this page as a PDF for off-line use <../pdfs/Trends.Earth_Tutorial02_Computing_Indicators.pdf>`_ Project-Id-Version: Trends.Earth 0.57
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-05-02 15:51-0400
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: Alex Zvoleff <azvoleff@conservation.org>, 2018
Language: pt
Language-Team: Portuguese (https://www.transifex.com/conservation-international/teams/80165/pt/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.3
 **Tempo estimado de conclusão**: 30 minutos **Acesso à Internet**: Obrigatório **Objetivo**: Aprender a executar os subindicadores dos ODS 15.3.1 (mudanças na produtividade da terra, cobertura do solo e carbono orgânico do solo) usando Trends.Earth e os dados padrão: LPD do JRC para produtividade da terra, ESA CCI para terra cobertura e SoilGrids para carbono orgânico do solo. Neste tutorial, usaremos o Uganda como exemplo, mas você pode escolher qualquer área de estudo. Uma barra azul clara será exibida temporariamente, indicando que a tarefa foi enviada com sucesso. A análise será executada nos servidores do Google e poderá levar entre 5 e 15 minutos, dependendo do tamanho da área de estudo (áreas maiores tendem a demorar mais). Área de análise Clique em **Salvar** para continuar datas Por exemplo, por padrão, considera-se que um pixel que mudou de **Grassland** para **Tree-covered** será considerado como melhorado. No entanto, se em sua área de estudo a invasão de plantas lenhosas for um processo de degradação, essa transição deve ser alterada para essa área de estudo em particular para degradação (sinal de menos). Se estiver usando o Trends.Earth para fins oficiais, é recomendável que os usuários escolham um limite oficial fornecido pelo escritório designado de seu país. Se você alterou o significado de algumas das transições, clique em **Salvar tabela no arquivo...** para salvar a definição para uso posterior. Em seguida, clique em **Next**. Se você não fez alterações na matriz padrão, basta clicar em **Next**. Na aba **Área**, defina a área de análise. Existem duas opções: Na aba **Configuração da Cobertura da Terra**, você tem a opção de usar o método de agregação proposto pelos dados padrão da UNCCD ou pode personalizar a agregação da legenda das classes de cobertura da terra original da ESA CCI para as 7 necessárias para relatórios da UNCCD. . Para personalizá-lo, clique em **Editar definição** e a janela **Agregação de configuração de dados de cobertura do solo** será aberta. Na guia **Opções**, você pode definir o **Nome da tarefa** e fazer algumas **Notas** para identificar a análise que está sendo executada. Quais informações para indicar são opcionais, mas sugerimos que você observe: Na guia **Setup**, selecione os anos de análise (2000-2015) e certifique-se de que os **dados padrão UNCCD** estejam selecionados e clique em next. Nesta janela, você verá a classe de cobertura de terra ESA CCI original na coluna **Classe de entrada** e a agregação final na coluna **Classe de saída**. Para alterar a classe de saída, basta clicar na seta suspensa ao lado da cor e selecionar a classe de saída final para a qual a classe de entrada será reatribuída. Observe que essa etapa é necessária apenas se você considerar que o esquema de agregação padrão não representa as condições de sua área de estudo. Indicadores executados Consulte a seção :ref:`indicator-15-3-1` deste manual para aprender sobre os indicadores de produtividade Trends.Earth desenvolvidos após a `UNCCD Good Practice Guidance (GPG) <http://www2.unccd.int/sites/default/files/relevant-links/2017-10/Good%20Practiceuidance_SDG%20Indicator%2015.3.1_Version%201.0.pdf>`_. Consulte o tutorial :ref:`task_download` para obter instruções sobre como verificar o status das tarefas enviadas e para fazer o download dos resultados do Trends.Earth. Executar subindicadores de 1 passo Procure a barra de ferramentas Trends.Earth no QGIS e clique no ícone Calcular (|iconCalculator|). O menu **Calculate Indicators** será aberto. Nessa janela, clique no botão **Calcular todos os três sub-indicadores em uma etapa** encontrados na Etapa 1 - Opção 1. A aba **Definir Efeitos da Mudança da Cobertura da Terra** é onde você define o significado de cada transição da cobertura da terra em termos de degradação. As transições indicadas em vermelho (sinal de menos) serão identificadas como degradação no resultado final, as transições em bege (zero) serão identificadas como estáveis ​​e as transições em verde (sinal de adição) serão identificadas como melhorias. The `Natural Earth Administrative Boundaries`_ provided in Trends.Earth are in the `public domain`_. The boundaries and names used, and the designations used, in Trends.Earth do not imply official endorsement or acceptance by Conservation International Foundation, or by its partner organizations and contributors. Use os limites de país e estado fornecidos: Se você quiser usar essa opção, certifique-se de que a opção **Área Administrativa** esteja destacada e, em seguida, selecione Primeiro Nível (país) ou Segundo Nível (estado ou província, dependendo do país). Use seu próprio arquivo de área: se você quiser usar sua própria área de análise, verifique se a opção **Área do arquivo** está realçada. Em seguida, clique em **Navegar** e navegue até a pasta em seu computador onde você armazenou o arquivo. Quando terminar, clique em **Calcular** e a tarefa será enviada ao Google Earth Engine para cálculos. Você notará que a janela **Calcular SDG 15.3.1 (um passo)** desaparecerá e você será levado de volta ao QGIS. Quando terminar de editar, clique em **Salvar arquivo de definição**. Esta opção economizará tempo na próxima vez que você executar a ferramenta, simplesmente carregando o arquivo de definição que você salvou anteriormente. Quando você tiver selecionado a área para a qual deseja calcular os indicadores, clique em **Next**. Você estará de volta na guia **Configuração da cobertura do solo**, clique em **Próximo**. `Faça o download desta página como um PDF para uso off-line <../pdfs/Trends.Earth_Tutorial02_Computing_Indicators.pdf>`_ 