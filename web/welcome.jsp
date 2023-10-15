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
     .card {
                max-width: 700px;
                margin: 0 auto;
                padding: 50px;
                border: 4px solid gray;
                margin-top: 10em;
                border-radius: 25px;
                background-color: #f9f9f9;
                font-size: 20px;
            }

        h1 {
            color: #A983E7;
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
            background-color: #A983E7;
        }
    </style>
</head>
    <body>
            <div class="card">

        <%! Client c;%>
        <%
          if(session==null){
              response.sendRedirect("auth.jsp");
          } else{
              c = (Client)session.getAttribute("client");
          }
                %>
        <h3>
            Welcome <%= c.getRole()%>: <h1><%= c.getNom() %> <%= c.getPrenom() %> ! </h1>
            
        </h3>
            <p class="welcome-message">Vous êtes connectés en tenat que <%= c.getRole()%>.</p>
        <form action="deconnexion">
            <input type="submit" class="logout-button" value="Déconnexion">
        </form>
            </div>
    </body>
</html>
