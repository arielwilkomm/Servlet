<%-- 
    Document   : listar
    Created on : 14/09/2016, 20:35:47
    Author     : Ariel
--%>

<%@page import="br.edu.ifsul.trabalho.Especialidade"%>
<%@page import="br.edu.ifsul.dao.EspecialidadeDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="especialidadeDao" scope="session" type="EspecialidadeDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Listagem de especialidade</title>
    </head>
    <body>

        <a href="../index.html">index</a>
        <h2>Especialidades</h2>
        <h2><%=especialidadeDao.getMensagem()%></h2>
        <a href="ServletEspecialidade?acao=incluir">Incluir</a>
        <table border = "1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Especialidade e : especialidadeDao.getLista()) {
                %>
                <tr>
                    <th><%=e.getId()%></th>
                    <th><%=e.getDescricao()%></th>
                    <th><a href="ServletEspecialidade?acao=alterar&id=<%=e.getId()%>">Alterar</a></th>
                    <th><a href="ServletEspecialidade?acao=excluir&id=<%=e.getId()%>">Excluir</a></th>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

    </body>
</html>
