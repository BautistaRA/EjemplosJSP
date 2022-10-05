<%-- 
    Document   : DesgloseMonedas
    Created on : 05-oct-2022, 7:14:11
    Author     : bauti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="css/screen.css"/>
        <title>Insert title here</title>
    </head>
    <body>
        <%
            if (request.getParameter("pasta") != null && request.getParameter("pasta") != "") {
                double dinero = Double.parseDouble(request.getParameter("pasta"));
                int e50 = 0, e20 = 0, e10 = 0, e5 = 0, e2 = 0, e1 = 0;
                double cents = 0;

                if (dinero >= 50) {
                    e50 = (int) dinero / 50;
                    dinero = dinero % 50;
                }
                if (dinero >= 20) {
                    e20 = (int) dinero / 20;
                    dinero = dinero % 20;
                }
                if (dinero >= 10) {
                    e10 = (int) dinero / 10;
                    dinero = dinero % 10;
                }
                if (dinero >= 5) {
                    e5 = (int) dinero / 5;
                    dinero = dinero % 5;
                }
                if (dinero >= 2) {
                    e2 = (int) dinero / 2;
                    dinero = dinero % 2;
                }
                if (dinero >= 1) {
                    e2 = (int) dinero / 1;
                    cents = dinero % 1;
                }
                out.println("<span class='titulo'> Desglose de monedas <br/>");
                out.println("<span class='titulo'>Monedas de 50: </span>" + e50 + "<br/>");
                out.println("<span class='titulo'>Monedas de 20: </span>" + e20 + "<br/>");
                out.println("<span class='titulo'>Monedas de 10: </span>" + e10 + "<br/>");
                out.println("<span class='titulo'>Monedas de 5: </span>" + e5 + "<br/>");
                out.println("<span class='titulo'>Monedas de 2: </span>" + e2 + "<br/>");
                out.println("<span class='titulo'>Monedas de 1: </span>" + e1 + "<br/>");
                out.println("<span class='titulo'>Centimos: </span>" + cents + "<br/>");
                out.println("<br/><br/><a href='DesgloseMonedas.jsp'>Volver a calcular</a></p>");
            } else {
        %>
        <form action="DesgloseMonedas.jsp" method="post">
            <label>Dinero a cambiar:</label>
            <input type="text" name="pasta"/>
            <input type="submit" name="enviar" value="Calcular"/>
        </form>
        <%
            }
        %>
    </body>
</html>
