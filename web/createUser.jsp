 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro</h1>
        
        
        
        <form action="createUser.do" method="POST">
            Rut:
            <input type="text" name="txtRut" required/> <br/>
            Name:
            <input type="text" name="txtNombre" required/> <br/>
            Password:
            <input type="text" name="txtPass" required/> <br/>
            
            <input type="submit" value="Go"/>
          
            
            
        </form>
        
    </body>
</html>
