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
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
</head>
<body>
        Si el runner no esta, lo informamos por aca y ponemos boton para volver al inicio

        <tr>

            <th> El dorsal ingresado no figura</th>

        </tr>
        <br>

        <input type="button" value="Return Home" onclick="window.location.href='runnersListURL'; return false;"/>
</body>
</html>
