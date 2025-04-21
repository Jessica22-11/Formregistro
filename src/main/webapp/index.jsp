<%-- 
    Document   : index
    Created on : 9/04/2025, 11:18:34 a. m.
    Author     : tatic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Usuario</title>
    </head>
    <body>
        <div> Registro de Usuario</div>
        <form name="registro" action="ProcesarRegistro" method="get">
            <br><br>
            Nombre: <input type="text" name="nombre" value="" />
            <br><br>
            Apellido: <input type="text" name="apellido" value="" />
            <br><br>
            Edad: <input type="number" name="edad" value=""/>
            <br><br>
            Email: <input type="email" name="email" value=""/>
            <br><br>
            <input type="submit" value="Registrar" />
        </form>
        
        
    </body>
</html>
