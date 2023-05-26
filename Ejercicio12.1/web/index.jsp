<%-- index.jsp (proyecto GatosConClaseYBocadillos) --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="funciones.funcionesGatos"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Animales</title>
        <link rel="stylesheet" type="text/css" href="estiloForm.css" />
    </head>
    <body>
        <h1>Animales</h1>
        <form method="post" action="bocadillos.jsp">
        Primer Nombre: <input type="text" name="nombre1"/></br>
        Segundo Nombre: <input type="text" name="nombre2"/></br>
        Tercer Nombre: <input type="text" name="nombre3"/></br>
        <input type="submit">
        </form>
    </body>
</html>
