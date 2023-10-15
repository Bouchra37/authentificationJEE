<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Réinitialiser le mot de passe</title>
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

        h4 {
                color: red;
                text-align: center;
                margin-top: 15px;
                margin-left: 140px;
                margin-bottom: auto;
            }     
        </style>
    </head>
    <body>
           <video autoplay loop muted>
            <source src="anim.mp4" type="video/mp4">
        </video>
        <div class="card">
            <form action="updatePassword" method="POST">
                <h1>Réinitialiser le mot de passe</h1>
                <div class="col">
                    <label for="newPassword">Nouveau mot de passe :</label>
                    <div class="input-container">
                        <input type="password" id ="newPassword"  name="newPassword" required autofocus>
                    </div>
                </div>

                <div class="col">
                    <label for="confirmPassword">Confirmez le nouveau mot de passe :</label>
                    <div class="input-container">
                        <input type="password" id ="confirmPassword" name="confirmPassword" required>
                    </div>
                </div>
                <div class="col-12">
                        <input type="submit" value="Réinitialiser le mot de passe">
                </div>
                    <div class="col">
                            <h4>${msg}</h4>
                    </div>
            </form>
        </div>
    </body>
</html>

