<%-- 
    Document   : consultar
    Created on : 02/07/2021, 02:28:40
    Author     : Izabela
--%>

<%@page import="java.util.List"%>
<%@page import="dominio.Anuncio"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href= "ESTILO/style.css">
        <script type="text/javascript" src="SCRIPT/script.js"></script>
        <title>Consultar de Anúncios</title>
    </head>
    <body>  
        <%
            //PEGAR OS PARAMETROS
            String inicio = request.getParameter("inicio");
            String termino = request.getParameter("termino");

            Anuncio cliente = new Anuncio();
            List<Anuncio> lista = cliente.listaClientes();
        %>
        <h1>Consultar Anúncios</h1>
        <section>
            <form action="receberconsulta.jsp" method="POST">
                <div id="pageConsulta">
                    <label for="cliente">Cliente </label>
                    
                    <select name="codigoempregado">
                     <% for(Anuncio c: lista){ %>
                        <option name="codigoempregado" value="<%out.write(""+c.getId());%>">
                            <% out.write(c.getCliente()); %>
                        </option>
                     <%}%>
                 </select> 
                    <label for="inicio">Data de Início </label>    
                    <input type="date" name="inicio" id="inicio">
                    <label for="termino">Data de Término </label>    
                    <input type="date" name="termino" id="termino">
                    <button type="button" name="enviar" onclick="VerificarConsulta()">Consultar</button>
                    <br>
                </div>
                <table>
                    <thead>
                    <th>Anúncio</th>
                    <th>Total <br>Investido</th>
                    <th>Máximo de <br>Visualizações</th>
                    <th>Máximo de <br>Compartilhamentos</th>
                    <th>Máximo de <br>Cliques</th>
                    </thead>
                </table> 
            </form>
        </section>
        <footer>
            <div id="consulta">
                <a href="index.html">Clique aqui para retornar à página principal</a>
            </div>
        </footer>
    </body>
</html>
