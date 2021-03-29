<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    Data d = new Data();

    List<Usuario> ls = d.getUsuarios();
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>


        <a href="createUser.jsp">Crear usuario</a>
        <%="<br>"%>
        <a href="#">editar usuario</a>
        <%="<br>"%>
        <a href="#">eliminar usuario</a>
         <%="<br>"%>
          <%="<br>"%>


        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>RUT</th>
                    <th>NOMBRE</th>
                    <th>PASS</th>
                    <th>Editar</th>
                    <th>Eliminar</th>
                </tr>
            </thead>

            <% for (Usuario u : ls) {%>
            <tbody>
                <tr>
                    <td><%= u.getId()%></td>
                    <td><%= u.getRut()%></td>
                    <td><%= u.getNombre()%></td>
                    <td><%= u.getPass()%></td>
                    <td> <a href="editarUsuario.jsp?id=<%= u.getId() %>" >Editar</a> </td>
                    <td><a href="eliminarUsuario.jsp?id=<%=u.getId()  %>">Eliminar</a></td>
                </tr>
            </tbody>

            <%

                }
            %>
        </table>


    </body>
</html>
