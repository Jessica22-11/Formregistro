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
    </head>
    <body>
        
    <%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("usuario") == null) {
    %>
         <p style="color:red; font-weight:bold;">Acceso denegado. Por favor, <a href="login.jsp">inicia sesión</a> para continuar.</p>
    <%
    }else {
    String usuario = (String) sesion.getAttribute("usuario");

    %>
    
    <h2>Perfil de Usuario</h2>
    
        <p><strong>Nombre de usuario:</strong> <%= usuario %></p>
        <p><strong>Correo:</strong> <%= usuario %>@ejemplo.com</p>
        <br>
        <a href="resultado.jsp">Volver al inicio</a>
        
        <%
            }
        %>

    </body>
</html>
