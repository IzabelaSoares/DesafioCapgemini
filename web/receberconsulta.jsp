<%-- 
    Document   : recerberconsulta
    Created on : 04/07/2021, 23:10:24
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
        <title>Consultar Anúncios</title>
    </head>
    <body>  
        <%
            //CLIENTES
            Anuncio cliente = new Anuncio();
            List<Anuncio> lista = cliente.listaClientes();

            //PEGAR OS PARAMETROS
            String cliente1 = request.getParameter("cliente");
            String inicio = request.getParameter("inicio");
            String termino = request.getParameter("termino");

            //LISTAGEM DE CONSULTA
            Anuncio consulta = new Anuncio();
            List<Anuncio> listagem = consulta.consultar(cliente1, inicio, termino);

            //FORMATAR A DATA
            SimpleDateFormat formato = new SimpleDateFormat("dd-MM-yyyy");
        %>
        <h1>Consultar Anúncios</h1>
        <section>
            <form action="receberconsulta.jsp" method="POST">
                <label for="cliente">Cliente </label>
                <select name="listacliente" id="cliente">
                    <option name="vazio" value=""> </option>
                    <% for (Anuncio c : lista) { %>
                    <option name="cliente">
                        <% out.write(c.getCliente()); %>
                    </option>
                    <%}%>
                </select> 
                <label for="inicio">Data de Início </label>    
                <input type="date" name="inicio" id="inicio">
                <label for="termino">Data de Término </label>    
                <input type="date" name="termino" id="termino">
                <button type="button" name="enviar" onclick="Consultar()">Consultar</button>
                <br>
            </form>
            <div id="pageConsulta">
                <table>
                    <thead>
                    <th>Anúncio</th>
                    <th>Total <br>Investido</th>
                    <th>Máximo de <br>Visualizações</th>
                    <th>Máximo de <br>Compartilhamentos</th>
                    <th>Máximo de <br>Cliques</th>
                    </thead>
                    <tbody>
                            <% for(Anuncio a : listagem) {%>
                                <tr>
                                    
                                    <td><% out.write(String.valueOf(a.getNome())); %></td>
                                    <td><% out.write(String.valueOf(a.getInvestimento())); %></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>                       
                                </tr>
                            <%}%>
                        </tbody>
                </table> 
            </div>
        </section>
        <footer>
            <div id="consulta">
                <a href="index.html">Clique aqui para retornar à página principal</a>
            </div>
        </footer>
    </body>
</html>
