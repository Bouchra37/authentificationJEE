<%-- 
    Document   : welcome
    Created on : 10 oct. 2023, 12:25:31
    Author     : Lachgar
--%>

<%@page import="ma.projet.entity.Employe"%>
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
        }

        h1 {
            color: #007bff;
        }
    </style>
</head>
    <body>
        <%! Employe e;%>
        <%
          if(session==null){
              response.sendRedirect("auth.jsp");
          } else{
              e = (Employe)session.getAttribute("employe");
          }
                %>
        <h1>
            Welcome Employe : <%= e.getEmail()%>
            
        </h1>
            
            <form action="deconnexion">
            <input type="submit" value="deconnéxion">
        </form>

    </body>
</html>
