<%-- 
    Document   : editarUsuario
    Created on : 29-03-2021, 3:22:33
    Author     : rivaa
--%>


<%@page import="model.Usuario"%>
<%@page import="model.Data"%>
<%
    Data d = new Data();

    String id = request.getParameter("id");

    Usuario u = null;

    if (id != null) {
        u = d.getUsuarioId(id);

    }else{
        System.out.println("NO FUNCIONAAAAAAAAA ES NULL");
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar</h1>


        <form action="editarUsuario.do" method="POST">
            rut:
            <input type="text" name="txtRut" value="<%= u.getRut()%>" required/> <br/>

            nombre:
            <input type="text" name="txtNombre"value="<%= u.getNombre()%>" required/>
            pass:
            <input type="text" name="txtPass" value="<%= u.getPass()%>" required/> <br/>

            <input type="submit" value="Editar"/>



        </form>
        <a href="index.jsp">volver</a>
    </body>
</html>
