<%-- 
    Document   : cadastrar
    Created on : 02/07/2021, 02:27:29
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
        <link rel="stylesheet" href= "ESTILO/style.css">
        <script type="text/javascript" src="SCRIPT/script.js"></script>
    </head>
    <body>
        <h1>Cadastrar Anúncios</h1>
        <p>Por favor, preencha os campos abaixo para cadastrar o anúncio:</p>
        <div class="formulario">
            <form action="enviarcadastro.jsp" id="cadastrar" method="post">
                <label for="nome">Nome do Anúncio </label>    
                <input type="text" name="nome" id="nome" autocomplete="off" required="required"><br>
                <label for="cliente">Cliente </label>    
                <input type="text" name="cliente" id="cliente" autocomplete="off" required="required"><br>
                <label for="inicio" >Data de Início </label>    
                <input type="date" name="inicio" id="inicio" autocomplete="off" required="required"><br>
                <label for="termino">Data de Término </label>    
                <input type="date" name="termino" id="termino" autocomplete="off" required="required"><br>
                <label for="investimento">Investimento por Dia R$ </label>    
                <input type="number" name="investimento" id="investimento" autocomplete="off" required="required"><br>
                <button type="button" name="enviar" onclick="VerificarCadastro()">Enviar</button>
            </form>
        </div>

        <div id="consulta"><a href="index.html">Clique aqui para retornar à página principal</a></div>
    </body>
</html>
