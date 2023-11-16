<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-
q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
crossorigin="anonymous"></script>
    <title>Login</title>
 <style>
body {text-align: center;
background-image: url("images/fantasy.jpg");
background-size: cover;
}
h1{color:rgb(255, 253, 252);}
div{
    width:450px;
    height:300px;
    border-radius: 10px;
    margin:0,auto;
    margin-top:120px;
    -webkit-border-radius:10px;
    -moz-border-radius:10px;
    border-radius:10px;
    margin:0 auto;
    margin-top:120px;
    text-align: center;
    backdrop-filter: blur(15px);
    color:rgb(255, 253, 252);
    padding-top: 20px;
    }
    input{
    width:60%;
    height:30px;
    font-size: 22px;
    margin-bottom: 10px;
    background-color: #fff;
    padding-left: 40px;
    border:none;
    border-radius: 5px;
    background-repeat: no-repeat;
    background-position: 10px;
    font-size: 12px;
    text-align: start ;
    }
    a{color:rgb(255, 253, 252);  }
</style>
</head>
<body>
<br>
<br>
<br>
<br>
    <div><h1>Fazer Login</h1> <br>
    <form action="processarLogin.jsp" method="post" >
    Email: <input type="text" name="usuario" placeholder="Insira seu Email"><br>
    Senha: <input type="password" name="senha" placeholder="Senha"><br><br>
    <input class="btn btn-outline-secondary" type="submit" name="login" value="Login" style="width: 100px; height: 50px"></div>
    </form>
    <p><a href="index.jsp">Voltar para a página inicial</a></p>
</body>
</html>
