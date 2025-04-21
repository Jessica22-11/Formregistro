<%-- 
    Document   : index
    Created on : 9/04/2025, 11:20:40 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
       
        <div>Registro de Usuario</div>
        
        <form name="registro" action="ProcesarRegistroServert" method="get">
            <br><br>
           Nombre: <input type="text" name="nombre" value="" />
           <br><br>
           Apellido: <input type="text" name="apellido" value="" />
           <br><br>
           Email: <input type="email" name="email" value="" />
           <br><br>
            Edad : <input type="number" name="edad" value="" />
              <br><br>
           Registrar: <input type="submit" value="Registrar" />
         
         </form>
        
        
    </body>
</html>
