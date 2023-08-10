<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 8/8/2023
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <!-- Aca le decimos donde estan los estilos-->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>

</head>
<body>


    <table border="1">

        <tr>    <!-- tr que habre y tr que cierra me hace una fila-->
            <th>Nombre</th> <!-- th son los rotulos de los campos -->
            <th>Apellido</th>
            <th>Edad</th>
            <th>Email</th>
            <th>Dorsal</th>
            <th>Tiempo</th>
        </tr>

        <!-- ahora un bucle: forEach, para mostrar cada uno de los runners -->

        <c:forEach var="runnersTEMP" items="${runnersAttributes}">


            <tr>
                <td>${runnersTEMP.nombre}</td>
                <td>${runnersTEMP.apellido}</td>
                <td>${runnersTEMP.edad}</td>
                <td>${runnersTEMP.email}</td>
                <td>${runnersTEMP.dorsal}</td>
                <td>${runnersTEMP.tiempo}</td>
            </tr>


        </c:forEach>


    </table>

    <!-- Boton para insertar runner en la BBDD, el cual nos tiene que redireccionar a otro formulario JSP -->

    <br/> <!-- linea en blanco-->

    <input type="button" value="Insert new Runner" onclick="window.location.href='insertNewRunnerURL'; return false;"/>

</body>
</html>
