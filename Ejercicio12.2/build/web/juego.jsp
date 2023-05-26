<%-- 
    Document   : juego
    Created on : 26 may 2023, 17:37:21
    Author     : AMANDA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="funciones.funcionJuego"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juego Piedra Papel o Tijera</title>
        //<link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
    <body>
        <h1>Juego</h1>
        <hr>
        
        <%
            funcionJuego personaje1 = new funcionJuego(request.getParameter("nombre1"), "homer.png");
            funcionJuego personaje2 = new funcionJuego(request.getParameter("nombre2"), "flanders.png");

            out.println(personaje1);
            out.println(personaje2);
        %>
            
        <%
            int aux1 = 0;
            int aux2 = 0;
            
            do{
                
                int jug1 = personaje1.juego();
                int jug2 = personaje2.juego();
                
                if (personaje1.jugada(jug1, jug2) == 1) {
                    aux1 += 1;
                    out.println("<p>" + personaje1.imagenesJugada(jug1) + " VS " + personaje2.imagenesJugada(jug2) + "</p>");
                    out.println("<br>");
                } else if (personaje1.jugada(jug1, jug2) == 2){
                    out.println("<p>" + personaje1.imagenesJugada(jug1) + " VS " + personaje2.imagenesJugada(jug2) + "</p>");
                    out.println("<br>");
                    aux2 += 1;
                } else {
                    out.println("<p>" + personaje1.imagenesJugada(jug1) + " VS " + personaje2.imagenesJugada(jug2) + "</p>");
                    out.println("<br>");
                }
                
            } while (aux1 <= 4 && aux2 <= 4);
            
            out.println("<p> Jugador 1: " + personaje1.getNombre() + "<br> Puntuación: " + aux1 + "</p>");
            out.println("<p> Jugador 2: " + personaje2.getNombre() + "<br> Puntuación: " + aux2 + "</p>");
            
        %>
    </body>
</html>
