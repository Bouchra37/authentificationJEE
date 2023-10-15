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
import ma.projet.service.ClientService;
import ma.projet.entity.Client;

@WebServlet(name = "VerifyCodeController", urlPatterns = {"/verifyCode"})

public class VerifyCodeController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int code = Integer.parseInt(request.getParameter("verificationCode"));
        ClientService cs = new ClientService();
        HttpSession session = request.getSession();
        Client c = (Client) session.getAttribute("client");
        if (c != null) {
            if (c.getCode() == code) {
                response.sendRedirect("updatePassword.jsp");
            } else {
                request.setAttribute("msg", "Le code est incorrect");
                request.getRequestDispatcher("verifyCode.jsp").forward(request, response);
            }
        } else {
            response.sendRedirect("verifyCode.jsp?msg= session vide!! ");
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
        return "verify code";
    }
}
