<%-- 
    Document   : conversorMonedas
    Created on : 05-oct-2022, 6:50:04
    Author     : bauti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Conversiones</title>
</head>
<body>
       <%
             if (request.getParameter("euros") != null && request.getParameter("euros") != ""){
                    Double euros = Double.parseDouble(request.getParameter("euros"));
                    Double[] monedas = {1.4638, 1.6446, 1.4296, 161.45, 10.869, 35.868};
                    String [] monedasTexto = {"Dólar americano", "Dólar australiano", "Dólar canadiense", "Yen japonés", "Yuan chino", "Rublo ruso"};
                   
                    out.println("<h1>Euros: " + euros + "</h1>");
                    out.println("<table>");
                    out.println("<tr>");
                    out.println("<th>Moneda</td>");
                    out.println("<th>Tasa de cambio</td>");
                    out.println("<th>Resultado</td>");
                    out.println("</tr>");
                    for (int i = 0; i < monedas.length; i++){
                           out.println("<tr>");
                           out.println("<td>" + monedasTexto[i] + "</td>");
                           out.println("<td>" + monedas[i] + "</td>");
                           out.println("<td>" + monedas[1] * euros + "</td>");
                           out.println("</tr>");
                    }
                    out.println("</table>");
             }
             else{
       %>
       <form action="conversorMonedas.jsp" method="post">
             <label>Euros</label>
             <input type="text" name="euros"/>
             <input type="submit" name="enviar" value="Convertir"/>
       </form>
       <%
             }
       %>
</body>
</html>