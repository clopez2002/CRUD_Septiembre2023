<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 8/22/2023
  Time: 1:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Runner no encontrado</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
</head>
<body>

        <header>

            <h1>El Dorsal ingresado no corresponde a ningun corredor registrado</h1>

        </header>

        <br>

        <input type="button" value="Return Home" onclick="window.location.href='runnersListURL'; return false;"/>

        <footer> Vuelvas prontos!!</footer>
</body>
</html>
