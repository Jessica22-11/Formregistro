/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servert;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ValidarUsuario", urlPatterns = {"/ValidarUsuario"})
public class ValidarUsuario extends HttpServlet {

    @Override
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String user = request.getParameter("Usuario");
        String pass = request.getParameter("Clave");
        
  
        boolean esValido = false;
       
        
        HttpSession session = request.getSession();
        
        Integer IntentosFallidos = (Integer) session.getAttribute("IntentosFallidos");
        if(IntentosFallidos == null){
            IntentosFallidos = 0;
        
        }
        
        
        if("admin1".equals(user) && "1234".equals(pass) 
                || "admin2".equals(user) && "1234".equals(pass)
                || "admin3".equals(user) && "4567".equals(pass) ){
          esValido = true;
          
        }else{
         IntentosFallidos++;
         session.setAttribute("IntentosFallidos", IntentosFallidos);
        }
        
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            
            if(esValido){
                out.println("<h1>Registro exitoso</h1>");
                out.println("<p>Bienvenido, " + user + "!</p>");
            }else{
                out.println("<h1>Registro invalido</h1>");
                out.println("<p>Usuario o contraseña incorrectos.</p>");
                out.println("<p>Intentos fallidos: " + IntentosFallidos + "</p>");
                out.println("<a href ='login.jsp'>Volver a intentar</a>");
            }
            
            
            
            
            out.println("<h1>Servlet ValidarUsuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    }

    


