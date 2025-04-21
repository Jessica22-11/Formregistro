<%-- 
    Document   : login
    Created on : 10/04/2025, 10:08:29 a. m.
    Author     : tatic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso de usuario</title>
        
    </head>
    <body>
        <nav>
            <a href="login.jsp">Iniciar Sesion</a>
            <a href="perfil.jsp">Perfil</a>
            <a href="Config.jsp">Configuración</a>
            <a href="help.jsp">Ayuda</a>
            <a href="index.jsp">Cerrar Sesion</a>
        </nav>
        <div>Ingreso Usuario</div>
        <form name="viewport" action="ValidarUsuarioServlet" method="post">
            <br><br>
            Usuario: <input type="text" name="usuario" value="" />
            <br><br>
            Clave: <input type="password" name="clave" value="" />
            <br><br>
            <input type="submit" value="Ingresar" />
            <br><br>
        </form>
    </body>
</html>
