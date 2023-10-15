package ma.projet.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import javax.servlet.annotation.WebServlet;
import ma.projet.entity.User;
import ma.projet.service.ClientService;
import ma.projet.entity.Client;
import ma.projet.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import ma.projet.util.Utils;

@WebServlet(name = "UpdatePasswordController", urlPatterns = {"/updatePassword"})

public class UpdatePasswordController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        if (newPassword.equals(confirmPassword)) {
            HttpSession session = request.getSession();
            Client c = (Client) session.getAttribute("client");
            ClientService cs = new ClientService();
            c.setPassword(newPassword);
            cs.update(c);
            response.sendRedirect("auth.jsp");
        } else {
            request.setAttribute("msg", "Le mot de passe et la confirmation ne correspondent pas");
            request.getRequestDispatcher("updatePassword.jsp").forward(request, response);
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
        return "Short description";
    }

}
