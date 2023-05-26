<%-- 
    Document   : index
    Created on : 26 may 2023, 16:48:04
    Author     : AMANDA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="funciones.funcionJuego"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        //<link rel="stylesheet" href="estilo.css">
        <title>PIEDRA PAPEL O TIJERA</title>
    </head>
    <body>
        <h1>Personajes</h1>
        
        <form method="post" action="juego.jsp">
        Introduce el nombre del primer personaje:
        <input type="text" name="nombre1">
        <br>
        Introduzca el nombre del segundo personaje:
        <input type="text" name="nombre2">
        <input type="submit" value="OK">
        </form>
            
    </body>
</html>