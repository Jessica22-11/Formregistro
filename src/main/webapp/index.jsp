<%-- 
    Document   : login
<<<<<<< HEAD
    Created on : 10/04/2025, 10:08:29 a. m.
    Author     : tatic
=======
    Created on : 10/04/2025, 10:09:01 a. m.
    Author     : Personal
>>>>>>> bc0483a714c335e8524827d29c26afb4fef36fa7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso de usuario</title>
        <style>
            body{
                background-color: #f2f0ed;
                font-family: Arial;
            }
            h1{
                text-align: center;
                color: white;
                font-family: Arial;
            }
            .img-login{
                display: block;
                margin: auto;
                width: 70px;
                height: 70px;
            }
            .menu {

                padding: 10px;
                position: relative;
            }

            /* Botón hamburguesa */
            .hamburguesa {
                font-size: 28px;
                color: white;
                cursor: pointer;
                display: inline-block;
            }

            /* Ocultar checkbox */
            #toggle-menu {
                display: none;
            }

            /* Lista de enlaces oculta por defecto */
            .menu-items {
                display: none;
                list-style: none;
                padding: 0;
                margin: 0;
                background-color: #d7aef5;
            }

            /* Mostrar menú cuando el checkbox está activado */
            #toggle-menu:checked + .hamburguesa + .menu-items {
                display: block;
            }

            /* Estilos de los ítems del menú */
            .menu-items li {
                padding: 10px;
                border-top: 1px solid #e3bbf0s;
            }

            .menu-items li a {
                color: white;
                text-decoration: none;
                display: block;
            }

            .menu-items li a:hover {
                background-color: #555;
            }
            .contenedor-principal{
                background-image: url('img/3154.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
                margin: auto;
                display: block;
                width: 600px;
                height: 900px;
            }
            .formulario{
                display: flex;
                color: white;
                flex-direction: column;
                justify-content: center; /* Centra horizontalmente */
                align-items: center;     /* Centra verticalmente */
                height: 59vh;
                width: 604px;
            }
            .btn-ingresar{

                border-radius: 24px;
                padding: 11px;
                width: 123px;
                color: black;
                background: white;
                border: none;
            }
            input[type="text"],
            input[type="password"]{
                border: none;
                border-bottom: 1px solid #d29de3; /* Línea inferior */
                background-color: transparent;
                padding: 8px;
                width: 50%;
                outline: none;
                color: #000; /* O el color de texto que prefieras */
                font-size: 16px;
            }
            



        </style>
        
    </head>
    <body>
        <div class="contenedor-principal">
            <nav class="menu">
                <input type="checkbox" id="toggle-menu">
                <label for="toggle-menu" class="hamburguesa">☰</label>

                <ul class="menu-items">
                    
                    <li><a href="#">Inicio</a></li>
                    <li><a href="perfil.jsp">Perfil</a></li>
                    <li><a href="#">Contacto</a></li>
                    <li><a href="#">Ayuda</a></li>
                </ul>
            </nav>
            <img class="img-login" src="img/usuario-seguro.png" alt="Usuario"/>
            
        <h1>Ingreso Usuario</h1>
        <form class="formulario" name="Ingreso" action="ValidarUsuario" method="post">
            <br><br>
            Usuario: <input type="text" name="usuario" value="" />
            <br><br>
            Clave: <input type="password" name="clave" value="" />
            <br><br>
            <input type="submit" value="Ingresar" />
            <br><br>
        </form>
        </div>
    </body>
</html>
