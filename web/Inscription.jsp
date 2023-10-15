<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                text-align: center;
            }
  video {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                object-fit: cover;
                z-index: -1;
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
                text-align: center;
                margin-bottom: 20px;
                color: #333;
            }

            .col {
                width: 100%;
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 10px;
            }

            label {
                width: 30%;
                font-weight: bold;
                color: #333;
            }

            .input-container {
                width: 70%;
            }

            input[type="text"],
            input[type="password"] {
                width: 100%;
                padding: 10px;
                margin-right: 30px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            input[type="submit"],
            button {
                width: 30%;
                padding: 10px 20px;
                background-color: #A983E7;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                margin-top: 12px;
                margin-left: 80px;
            }

            input[type="submit"]:hover,
            button:hover {
                background-color: gray;
            }

            h3 {
                color: red;
                text-align: center;
                margin-top: 10px;
            }       
        </style>
    </head>
    <body>
           <video autoplay loop muted>
            <source src="anim.mp4" type="video/mp4">
        </video>
        <div class="card">
            <form action="Inscription" method="POST">
                <h1>Inscription</h1>
                <div class="col">
                    <label for="nom">Nom :</label>
                    <div class="input-container">
                        <input type="text" id="nom" name="nom" value="" required autofocus placeholder="Entrez votre nom">
                    </div>
                </div>

                <div class="col">
                    <label for="prenom">Prénom :</label>
                    <div class="input-container">
                        <input type="text" id="prenom" name="prenom" value="" required placeholder="Entrez votre prénom">
                    </div>
                </div>
                <div class="col">
                    <label for="email">Email :</label>
                    <div class="input-container">

                        <input type="text" id="email" name="email" value="" required placeholder="Entrez votre email">
                    </div>
                </div>
                <div class="col">
                    <label for="password">Mot de passe :</label>
                    <div class="input-container">

                        <input type="password" id="password" name="password" value="" required placeholder="Entrez un mot de passe">
                    </div>
                </div>
                <div class="col">
                    <label for="date">Date :</label>
                    <div class="input-container">
                        <input type="date" id="date" name="date" value="" required style="width: 150px; margin-left: -68%;">
                    </div>
                </div>


                <div class="col">
                    <div class="input-container">

                        <input type="submit" value="Valider">
                    </div>
                </div>
                <br>
                <p>Vous avez déjà un compte ? <a href="auth.jsp">Se connecter</a></p>
            </form>
        </div>
    </body>
</html>