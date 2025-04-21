/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;



/**
 *
 * @author tatic
 */
@WebServlet(name ="ProcesarRegistro", urlPatterns = {"/ProcesarRegistro"})
public class ProcesarRegistroServlet extends HttpServlet {
    
        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String edad = request.getParameter("edad");
        String email = request.getParameter("email");
        
        response.setContentType("text/html;charset=UTF-8");
        
        try(PrintWriter out = response.getWriter()){
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Resultado del Registro</title>");            
            out.println("</head>");
            out.println("<body>");
             if (nombre == null || nombre.isBlank() || apellido == null || apellido.isBlank()){
            out.println("<p>No se puede ingresar</p>");
            out.println("<a href='index.jsp'>Volver a intentar</a>");
             }else{
            out.println("<h1>Registro Procesado</h1>");
            out.println("<p>Nombre:" + nombre + "</p>");
            out.println("<p>Apellido:" + apellido + "</p>");
            out.println("<p>Edad: " + edad + "</p>");
            out.println("<p>Email:" + email + "</p>");
            out.println("</body>");
            out.println("</html>"); 
             }
        } 
    }
    
    
    
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         doGet(request, response);
    
        }
    }

 

