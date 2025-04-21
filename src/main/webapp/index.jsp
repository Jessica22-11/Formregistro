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
        <div class="contenedor-principal">
            <nav class="menu">
                <input type="checkbox" id="toggle-menu">
                <label for="toggle-menu" class="hamburguesa">☰</label>

                <ul class="menu-items">
                    <li><a href="#">Inicio</a></li>
                    <li><a href="perfil.jsp">Servicios</a></li>
                    <li><a href="#">Contacto</a></li>
                    <li><a href="#">Ayuda</a></li>
                </ul>
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
