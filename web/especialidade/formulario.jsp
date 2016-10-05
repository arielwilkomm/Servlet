<%-- 
    Document   : formulario
    Created on : 14/09/2016, 21:33:01
    Author     : Ariel
--%>

<%@page import="br.edu.ifsul.dao.EspecialidadeDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="especialidadeDao" scope="session" type="EspecialidadeDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de Especialidades</title>
        <script>
            function doSalvar(){
                document.getElementById("acao").value = 'salvar';
                document.getElementById("form").submit();
                
            }
            function doCancelar(){
                document.getElementById("acao").value = 'cancelar';
                document.getElementById("form").submit();
                
            }
        </script>
    </head>
    <body>
        <h2>Edição de Especialidade</h2>
        <h2><%=especialidadeDao.getMensagem()%></h2>
        <form name="form" id="form" action="ServletEspecialidade" method="POST"> 
            Codigo: <input type="text" name="id" id="id" value="<%=especialidadeDao.getObjetoselecionado().getId() == null
                    ? "" : especialidadeDao.getObjetoselecionado().getId()%>" size="6" readonly/><br>
            
            Nome: <input type="text" name="descricao" id="descricao" value="<%=especialidadeDao.getObjetoselecionado().getDescricao()== null
                    ? "" : especialidadeDao.getObjetoselecionado().getDescricao()%>" size="40"/><br>
            
            
            <input type="button" value="Salvar" name="btnSalvar" onclick="doSalvar()"/>
            <input type="button" value="Cancelar" name="btnCancelar" onclick="doCancelar()"/>
            <input type="hidden" value="" name="acao" id="acao" />
        </form>
    </body>
</html>
