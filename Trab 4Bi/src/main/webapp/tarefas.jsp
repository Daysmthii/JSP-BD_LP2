<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gerenciamento de Tarefas</title>
    <style>
        body {
            background-image: url("images/fantasy.jpg");
            background-size: cover;
            color: rgb(255, 253, 252);
        }

        h1 {
            text-align: center;
            font-size: 30px;
            margin-top: 5%;
        }

        p {
            text-align: center;
            font-size: 20px;
        }

        a {
            color: rgb(255, 253, 252);
        }
    </style>
</head>
<body>
    <%
        String usuarioLogado = (String) session.getAttribute("usuarioLogado");

        if (usuarioLogado != null && !usuarioLogado.isEmpty()) {
    %>
    <h1>Bem-vindo, <%= usuarioLogado %>!</h1>
    <p>Gerencie suas tarefas aqui.</p>
    <p><a href="logout.jsp">Sair</a></p>
    <%
        } else {
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>
