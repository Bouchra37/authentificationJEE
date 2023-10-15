<%-- 
    Document   : welcome
    Created on : 10 oct. 2023, 12:25:31
    Author     : Lachgar
--%>

<%@page import="ma.projet.entity.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            text-align: center;
            padding: 20px;
        }

        .container {
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            margin: 0 auto;
        }

        h1 {
            color: #007bff;
        }

        .welcome-message {
            font-size: 24px;
            margin-top: 20px;
        }

        .logout-button {
            background-color: gray;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        .logout-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
    <body>
            <div class="container">

        <%! Client c;%>
        <%
          if(session==null){
              response.sendRedirect("auth.jsp");
          } else{
              c = (Client)session.getAttribute("client");
          }
                %>
        <h1>
            Welcome <%= c.getRole()%>: <%= c.getNom() %> !
            
        </h1>
            <p class="welcome-message">Vous êtes connectés en tenat que <%= c.getRole()%>.</p>
        <form action="deconnexion">
            <input type="submit" class="logout-button" value="Déconnexion">
        </form>
            </div>
    </body>
</html>
