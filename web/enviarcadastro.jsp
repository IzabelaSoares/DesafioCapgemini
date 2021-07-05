<%-- 
    Document   : enviarcadastro
    Created on : 02/07/2021, 20:44:54
    Author     : Izabela
--%>

<%@page import="java.sql.Date"%>
<%@page import="dominio.Anuncio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastrar Anúncios</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="refresh" content="0; URL='index.html'"/>
        <link rel="stylesheet" href= "ESTILO/style.css">
        <script type="text/javascript" src="SCRIPT/script.js"></script>
    </head>
    <body>
            <%  //INSTANCIAR O CADASTRO DE ANUNCIO      
                Anuncio cadastro = new Anuncio();

                //PEGAR OS INPUTS DA TELA
                String cliente = request.getParameter("cliente");
                String nome = request.getParameter("nome");
                Date inicio = Date.valueOf(request.getParameter("inicio"));
                Date termino = Date.valueOf(request.getParameter("termino"));
                Integer investimento = Integer.parseInt(request.getParameter("investimento"));

                //PASSAR OS PARAMETROS PARA OS SETTERS
                cadastro.setNome(nome);
                cadastro.setCliente(cliente);
                cadastro.setInicio(inicio);
                cadastro.setTermino(termino);
                cadastro.setInvestimento(investimento);
            %>
    </body>
</html>