<%-- 
    Document   : LetraDNI
    Created on : 05-oct-2022, 7:25:01
    Author     : bauti
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/screen.css"/>
<title>DNI</title>
</head>
<body>

       <%
             if (request.getParameter("dni") != null && request.getParameter("dni") != ""){
                    String[] letras = {"T", "R", "W", "A", "G", "M", "Y", "F", "P", "D", "X", "B", "N", "J", "Z", "S", "Q", "V", "H", "L", "C", "K", "E"};
                    int n = Integer.parseInt(request.getParameter("dni"));
                    String r = letras[n%23];
                    out.println("<p><span class='titulo'>Numero DNI: </span>" + n + "<br><span class='titulo'>Letra DNI: </span>" + r);
                    out.println("<br/><br/><a href='LetraDNI.jsp'>Volver a calcular letra</a></p>");
             }
             else{
       %>
       <h1>Generador letra DNI</h1>
       <form action="LetraDNI.jsp" method="post">
             <label>Dni (Sin letra): </label><input type="text" name="dni">
             <input type="submit" name="enviar">
       </form>
       <%
             }
       %>
</body>
</html>