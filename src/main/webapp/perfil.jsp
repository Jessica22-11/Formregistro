<%-- 
    Document   : perfil
    Created on : 11/04/2025, 11:54:06 a. m.
    Author     : tatic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                margin: 0;
                padding: 0;
                background: #fff;
                color: #333;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .tarjeta {
                background-color: #e3d6e6;
                border-radius: 12px;
                padding: 30px 40px;
                box-shadow: 0 4px 20px rgba(0,0,0,0.1);
                text-align: center;
                width: 350px;
            }

            h1 {
                margin-bottom: 20px;
                color: #460d6f;
            }

            p {
                margin: 10px 0;
                font-size: 16px;
            }

            .botton{
                display: inline-block;
                margin-top: 20px;
                background-color: white;
                color: black;
                text-decoration: none;
                border-radius: 17px;
                transition: background-color 0.3s ease;
                padding: 9px;
                font-size: 14px;
            }

            .botton:hover {
                background-color: #72467c;
                color :white;
            }

            
            a{
                color:red;
                text-decoration: none;
            }
            .error {
                color: red;
                font-weight: bold;
                background: linear-gradient(to bottom, #8e45e0, #9b59b6);
                padding: 15px;
                border-radius: 8px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        
    <%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("usuario") == null) {
    %>
         <p style="color:black; font-weight:bold;">Acceso denegado. Por favor, <a href="index.jsp">inicia sesión</a> para continuar.</p>
    <%
    }else {
    String usuario = (String) sesion.getAttribute("usuario");

    %>
    
    <div class="tarjeta">
    
    <h1>Perfil de Usuario</h1>
    
        <p><strong>Nombre de usuario:</strong> <%= usuario %></p>
        <p><strong>Correo:</strong> <%= usuario %>@ejemplo.com</p>
        <br>
        
        
        <a  href="index.jsp" class="botton">Volver al inicio</a>
        
        
    </div>
        
        <%
            }
        %>

    </body>
</html>
