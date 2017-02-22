<%-- 
    Document   : calcula
    Created on : 22/02/2017, 11:36:32
    Author     : Edson Melo de Souza (prof.edson.melo@gmail.com)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculos em JSP</title>
    </head>
    <body>
        <h1>Recuperando os dados e realizando um cálculo</h1>
        <%
            /**
             * Declarando variáveis para receber os valores informados e a
             * operação. Perceba que há conversão de tipos, pois os dados
             * enviados são do tipo String.
             */
            double valor1 = Double.parseDouble(request.getParameter("valor1"));
            double valor2 = Double.parseDouble(request.getParameter("valor2"));
            double resultado = 0.0d;
            int operacao = Integer.parseInt(request.getParameter("operacao"));

            /**
             * Utiliza um switch para verificar qual operação foi selecionada As
             * opções são numéricas, pois o JSP não aceita caracteres no switch.
             */
            switch (operacao) {
                case 1:
                    resultado = (valor1 + valor2);
                    break;
                case 2:
                    resultado = (valor1 - valor2);
                    break;
                case 3:
                    resultado = (valor1 * valor2);
                    break;
                case 4:
                    resultado = (valor1 / valor2);
                    break;
            }

            /**
             * Exibindo o resultado
             */
            out.print("O resultado da operação é: " + resultado);
        %>
    </body>
</html>
