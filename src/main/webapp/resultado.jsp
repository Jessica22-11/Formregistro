<%-- 
    Document   : resultado
    Created on : 11/04/2025, 10:46:03 a. m.
    Author     : tatic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado de Validación</title>

        <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            padding: 40px;
        }
        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.1);
            max-width: 600px;
            margin: auto;
        }
        h1 {
            color: #2c3e50;
            text-align: center;
        }
        .success {
            color: green;
        }
        .error {
            color: red;
        }
        .menu {
            margin-top: 30px;
        }
        h2 {
            text-align: center;
            color: black;
        }
        .menu a {
            text-align: center;
            display: inline-block;
            margin: 10px;
            padding: 10px 15px;
            background: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            box-shadow: 2px 2px 5px rgba(0,0,0,0.2);
        }
        .menu a:hover {
            background: #2980b9;
        }
    </style>
    </head>
    <body>
     <div class="container">
         
         
    <h1>${mensaje}</h1>
    
    <% 
        Boolean valido = (Boolean)request.getAttribute("esValido");
        if(valido != null && valido) { 
    %>
        <p>Bienvenido, ${usuario}!</p>
        <p>Has iniciado sesión correctamente.</p>
        <div class="menu">
            <h2>Menú de opciones</h2>
            <a href="perfil.jsp">Perfil</a>
            <a href="Config.jsp">Configuración</a>
            <a href="help.jsp">Ayuda</a>
            <a href="index.jsp">Cerrar Sesion</a>
        </div>
    <% } else { %>
        <p>Usuario o contraseña incorrectos.</p>
        <a href="index.jsp" cl >Volver a intentar</a>
    <% } %>
    
     </div>

        
    </body>
</html>
