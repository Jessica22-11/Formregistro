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
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProcesarRegistro", urlPatterns = {"/ProcesarRegistro"})


/**
 *
 * @author Personal
 */
public class ProcesarRegistroServert extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String registrar = request.getParameter("registrar");
        String edad = request.getParameter("edad");
        
         response.setContentType("text/html;charset=UTF-8");
  
        
         try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Resultado del registro</title>");            
            out.println("</head>");
            out.println("<body>");
            
             if (nombre == null || nombre.isBlank() ||  apellido  == null || apellido.isBlank()){
        out.println("<p>Error</p>");
        out.println("<a href = 'index.jsp'>Volver a intentar</a> ");
        }else{
            
                 
            out.println("<h1>Resgistro Procesado" + request.getContextPath() + "</h1>");
            out.println("<p>nombre: " + nombre + "</p>");
            out.println("<p>apellido: " + apellido + "</p>");
            out.println("<p>email: " + email + "</p>");
            out.println("<p>edad: " + edad + "</p>");
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

    private void processRequest(HttpServletRequest request, HttpServletResponse response, String registro_exitoso) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

   
 

}
