<%-- 
    Document   : bocadillos
    Created on : 16 may 2023, 16:34:18
    Author     : AMANDA
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="funciones.funcionesGatos"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Animales y bocadillos</title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
    <body>
        <h1>Animales</h1>
        <hr>
        <%
        funcionesGatos g1 = new funcionesGatos(request.getParameter("nombre1"), "koala.jpg");
        funcionesGatos g2 = new funcionesGatos(request.getParameter("nombre2"), "mono.png");
        funcionesGatos g3 = new funcionesGatos(request.getParameter("nombre3"), "oso.png");
        out.println(g1);
        out.println(g2);
        out.println(g3);
        out.println(g2.frases());
        out.println(g3.frases());
        out.println(g1.frases());
        %>
    </body>
</html>
