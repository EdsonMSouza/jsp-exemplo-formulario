<%-- 
    Document   : calcula.jsp
    Created on : 22/02/2017, 11:05:21
    Author     : Edson Melo de Souza (prof.edson.melo@gmail.com)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Página JSP</h1>
        <h2>
            Esta página receberá os dados originados do formulário e realizará
            o processamento dos dados enviados!
        </h2>
        <%
            /**
             * Vamos "pegar" os dados enviados pelo formulário e apresentar na
             * tela
             *
             * A seguir são declaradas quatro variáveis do tipo String para
             * receber os dados (pelo nome dos campos do formulário). As
             * variáveis recebem o valor de cada campo utilizando a instrução:
             * request.getParameter("nome do campo do formulario")
             */
            String nome = request.getParameter("nome");
            String sobrenome = request.getParameter("sobrenome");
            String email = request.getParameter("email");
            String telefone = request.getParameter("telefone");

            /**
             * A seguir os dados são apresentados no navegador
             */
            out.print("Nome: " + nome + "<br>");
            out.print("Sobrenome: " + sobrenome + "<br>");
            out.print("Email: " + email + "<br>");
            out.print("Telefone: " + telefone + "<br>");
        %>
    </body>
</html>
