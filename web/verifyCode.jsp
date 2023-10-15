<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vérification du code</title>
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
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
        }
        input[type="text"] {
            width: 80%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #A983E7;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: gray;
        }
          h4 {
                color: red;
                text-align: center;
                margin-top: 15px;
                margin-bottom: auto;
            }
         
    </style>
</head>
<body>
       <video autoplay loop muted>
            <source src="anim.mp4" type="video/mp4">
        </video>    
    <div class="card">
        <form action="verifyCode" method="POST">
            <h1>Vérification du code</h1>
 
            <label for="verificationCode">Code de vérification :</label>
            <input type="text" name="verificationCode" required autofocus>
            <input type="submit" value="Vérifier le code">
            <div class="col">
                    <div class="input-container">
                        <h4>${msg}</h4>
                    </div>
                </div>
        </form>
    </div>
</body>
</html>
