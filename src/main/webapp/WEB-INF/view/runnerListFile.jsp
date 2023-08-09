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

</body>
</html>
