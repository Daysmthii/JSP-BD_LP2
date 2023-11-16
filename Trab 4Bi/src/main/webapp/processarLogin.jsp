<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Processando Login</title>
<style>
body{background-image: url("images/fantasy.jpg");
background-size: cover;
color:rgb(255, 253, 252);}
h1{text-align: center;
font-size: 30px;
margin-top:5%;}
p{text-align: center;
font-size:20px;}
a{color:rgb(255, 253, 252);}
</style>
</head>
<body>
    <%
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        // Simulação de armazenamento de usuários em um banco de dados
        Map<String, String> usuarios = (Map<String, String>) application.getAttribute("usuarios");

        try {
            if (usuarios != null && usuarios.containsKey(usuario) && usuarios.get(usuario).equals(senha)) {
                session.setAttribute("usuarioLogado", usuario);
                response.sendRedirect("tarefas.jsp");
            } else {
                throw new Exception("Login falhou. Verifique suas credenciais.");
            }
        } catch (Exception e) {
    %>
    <h1><%= e.getMessage() %></h1>
    <p><a href='login.jsp'>Voltar para a página de login</a></p>
    <%
        }
    %>
</body>
</html>
