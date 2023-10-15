/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.projet.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import javax.servlet.annotation.WebServlet;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import ma.projet.service.ClientService;
import ma.projet.entity.Client;
import ma.projet.service.EmailSender;
import ma.projet.service.SendMailTLS;

@WebServlet(name = "ForgotPasswordController", urlPatterns = {"/forgotPassword"})
public class ForgotPasswordController extends HttpServlet {
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String email = request.getParameter("email");
    ClientService cs = new ClientService();
    Client c = cs.getByEmail(email);
    
    if (c != null) {
        System.out.println(c.getEmail());
        int code = (int) (Math.random() * 9000) + 1000; 
        c.setCode(code);
        cs.update(c);
        
        HttpSession session = request.getSession();
        session.setAttribute("client", c);
        
        EmailSender.send(String.valueOf(code), email);
        
        
        response.sendRedirect("verifyCode.jsp");
    } else {
        
             request.setAttribute("msg", "Email incorrecte");
            request.getRequestDispatcher("forgotPassword.jsp").forward(request, response);
    }
}
 @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "forgot password";
    }


}

