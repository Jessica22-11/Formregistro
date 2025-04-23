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
            background: #f2e9f2;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.1);
            max-width: 430px;
            margin: auto;
            text-align: center;
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
        .Menú {
            
            display: flex;
            align-items: anchor-center;
            flex-direction: row;
            justify-content: center;
            background: #755e75;
            border-radius: 10px;
            width: 425px;
            height: 27px;
            
            
        }
        a{
             color: #f7f2f7;
             text-decoration: none;
             margin: 0 10px;
             font-size: 15px;
        }
        .auno{
            margin: 0 10px 0 0;
        }
        h2 {
            text-align: center;
            color: black;
        }
       
        .Menu a:hover {
            background: #2980b9;
           
        }
    </style>
    </head>
    <body>
       
     <div class="container">
          <nav class="Menú">
            
           <ul class="menu-items">
                    
               <a class="auno" href="#">Inicio</a>
                    <a href="perfil.jsp">Perfil</a>
                    <a href="#">Contacto</a>
                    <a href="#">Ayuda</a>
                </ul>   
        </nav>
    <h1>${mensaje}</h1>
    
    <% 
        Boolean valido = (Boolean)request.getAttribute("esValido");
        if(valido != null && valido) { 
    %>
        <p>Bienvenido, ${usuario}!</p>
        <p>Has iniciado sesión correctamente.</p>

    <% } else { %>
        <p>Usuario o contraseña incorrectos.</p>
        <a href="index.jsp" cl >Volver a intentar</a>
    <% } %>
    
     </div>    
    </body>
</html>
