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

@WebServlet(name = "ValidarUsuario", urlPatterns = {"/ValidarUsuario"})
public class ValidarUsuario extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("usuario");
        String pass = request.getParameter("clave");
        
        boolean esValido = false;
        String mensaje = "";
       
        if("admin1".equals(user) && "1234".equals(pass)
          || "admin2".equals(user) && "1234".equals(pass)
          || "admin3".equals(user) && "2222".equals(pass)) {
            esValido = true;
            mensaje = "Registro Exitoso";
            
            HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario",user);
            

        } else {
            mensaje = "Registro Inválido";
        }
        
        request.setAttribute("esValido", esValido);
        request.setAttribute("mensaje", mensaje);
        request.setAttribute("usuario", user);
        
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
        
        response.setContentType("text/html;charset=UTF-8");
        
      
    }
}
    


