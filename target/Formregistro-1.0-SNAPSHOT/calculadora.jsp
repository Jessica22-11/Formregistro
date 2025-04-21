<%-- 
    Document   : calculadora
    Created on : 10/04/2025, 11:40:02 a. m.
    Author     : tatic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calcualdora Simple</title>
         <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f4f8;
            padding: 40px;
            display: flex;
            justify-content: center;
        }

        .contenedor {
            background: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.1);
            width: 400px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            margin-top: 20px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #0ff24b;
            color: white;
            border: none;
            cursor: pointer;
            transition: 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #76c28a;
        }

        .resultado {
            background: #e8f5e9;
            color: #2e7d32;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0px 0px 8px rgba(46, 125, 50, 0.2);
            margin-top: 20px;
        }

        .error {
            background: #ffebee;
            color: #c62828;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0px 0px 8px rgba(198, 40, 40, 0.2);
            margin-top: 20px;
        }
    </style>
    </head>
    <body>
        <div class="contenedor">
        <h1>Calculadora en JSP</h1>
        
        
        <%!
            private int total;
            
            public int metodoSuma(int a, int b) {
                return a + b;
            }
            
            public int metodoResta(int a, int b) {
                return a - b;
            }

            public int metodoMultiplicacion(int a, int b) {
                return a * b;
            }
            
            public int metodoDivision(int a, int b) {
                return a / b;
            }
            


        %>
        
        
        <h2>Formulario para calcular: </h2>
        <form method="post">
            Primer número: <input type="number" name="num1" value="">
            <br><br>
            Segundo número: <input type="number" name="num2" value="" />
            <br><br>
            Operacion:
            <select name="operacion">
                <option value="suma">Suma</option>
                <option value="resta">Resta</option>
                <option value="multiplicacion">Multiplicaion</option>
                <option value="division">Division</option>
            </select>
            <br><br>
            <input type="submit" value="Calcular"> 
        </form>
        
        <%
            if(request.getMethod().equals("POST")) {
                try {
                    int num1 = Integer.parseInt(request.getParameter("num1"));
                    int num2 = Integer.parseInt(request.getParameter("num2"));
                    String operacion = request.getParameter("operacion");
                    
                    int resultado = 0;
                    boolean operacionValida = true;
                    String mensajeError = "";
                    
                    
                    if("suma".equals(operacion)) {
                        resultado = metodoSuma(num1, num2);
                    }else if("resta".equals(operacion)) {
                        resultado = metodoResta(num1, num2);
                    }else if ("multiplicacion".equals(operacion)) {
                        resultado = metodoMultiplicacion(num1, num2);
                    }else if("division".equals(operacion)) {
                        if(num2 == 0){
                        resultado = metodoDivision(num1, num2);
                        }else{
                        operacionValida = false;
                        } 
                    }          
        %>
        <div class="resultado">
        <h3>El resultado de la operacion es: <%= resultado%> </h3>
        </div>
        <%
            }catch(Exception e) {
                out.println("<div class='error'>No se puede Dividir en 0</div>");
            }
          }
        %> 
        </div>
            
    </body>
</html>
