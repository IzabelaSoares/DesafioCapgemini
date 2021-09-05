# Desafio Capgemini 
Este desafio possuia duas partes, a calculadora e o cadastrador de anuncios... <br>

## Calculadora  de Anúncios
Está localizada como `calculadora.html`, porém o script é javascript, a razão de estar assim é que desenvolvi em uma página web
para ser mais divertido o desenvolvimento deste projeto. <br>
Gostei muito de realizar a calculadora, por isso se quiser detalhes dela, criei um repositório com os arquivos e um readme.md explicativo, <br>
para acessar o repositório veja o link [CalculadoraCapgemini](https://github.com/IzabelaSoares/CalculadoraCapgemini.git) <br>

## Cadastro de Anúncios

### O Desafio:

#### Crie um sistema que permita o cadastro de anúncios. O anúncio deverá conter os seguintes dados:

nome do anúncio <br>
cliente <br>
data de início <br>
data de término <br>
investimento por dia <br>

#### O sistema fornecerá os relatórios de cada anúncio contendo:

valor total investido <br>
quantidade máxima de visualizações <br>
quantidade máxima de cliques <br>
quantidade máxima de compartilhamentos <br>
Os relatórios poderão ser filtrados por intervalo de tempo e cliente <br>

### Informações Técnicas:

IDE utilizada: Apache Netbeans <br>
Linguagens de Programação utilizadas: Backend para métodos e classes Java e JavaServerPage, Frontend para validação JavaScript <br>
Outras Linguagens: Marcação HTML, Estilo CSS <br>
Banco de Dados: PostgresSQL + IDE DBeaver <br>
Servidor: Localhost + Apache Tomcat <br>
Maiores dificuldades: desenvolvimento dos métodos e juntar web + poo + banco de dados <br>
Maiores facilidades: desenvolvimento do site, banco de dados e scripts de javascript <br>
Tempo dedicado: ainda não calculado <br>

### Executar o sistema 

1. Faça um git clone do projeto para sua maquina local e o abra com o Netbeans <br>
2. Crie o banco de dados anuncio de acordo com o banco usado no projeto (o CRUD estará na pasta principal mesmo) <br>
3. Na aba Project acesse AnunciosCapgemini -> Libraries e verifique se consistem os seguintes arquivos <br> 
`PostgreSQL JDBC Driver`, `JDK 1.8 (Default)`, `Apache Tomcat or TomEE` <br>
4. Na aba Services acesse Databases -> Drives -> PostgreSQL, selecione o `conecting using...` e conecte com o banco de dados <br>
5. Na aba Project acesse AnunciosCapgemini -> Source Packages -> utils -> Conexao e abra o arquivo, <br>
nele verifique e altere as propriedades de conexão para com o banco de dados: `url`, `user` e `password`<br>
6. Selecione na barra de ferramentas o browser e selecione o navegador que você deseja executar o projeto (ele é javaweb) <br>
7. Conecte-se a internet <br>
8. Execute o programa sem problemas <br>


