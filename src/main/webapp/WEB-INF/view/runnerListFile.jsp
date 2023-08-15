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
            <th>Update</th>
            <th>Delete</th>
        </tr>

        <!-- ahora un bucle: forEach, para mostrar cada uno de los runners -->

        <c:forEach var="runnersTEMP" items="${runnersAttributes}">

            <!--c:url es para relacionar el boton de abajo de update, y llamar a la nueva URL-->
            <c:url var="linkUpdate" value="/runnersHomeURL/updateRunnerURL">
                    <c:param name="runnerId" value="${runnersTEMP.id}"/> <!-- con esto le pasamos el ID del runer a midificar-->
            </c:url>


            <!-- Ahora Boton para eliminar -->
            <c:url var="deleteLink" value="/runnersHomeURL/deleteRunnerURL">
                <c:param name="runnerId" value="${runnersTEMP.id}"/>
            </c:url>



            <tr>
                <td>${runnersTEMP.nombre}</td>
                <td>${runnersTEMP.apellido}</td>
                <td>${runnersTEMP.edad}</td>
                <td>${runnersTEMP.email}</td>
                <td>${runnersTEMP.dorsal}</td>
                <td>${runnersTEMP.tiempo}</td>

                <!-- Boton de modificar el registro-->
                <td><a href="${linkUpdate}"><input type="button" value="Update"/></a> </td>


                <!-- Boton para eliminar -->
                <td><a href="${deleteLink}"><input type="button" value="Delete"
                                                   onclick="if (!(confirm('Esta seguro de eliminar el usuario?'))) return false"/></a> </td>

            </tr>




        </c:forEach>


    </table>

    <!-- Boton para insertar runner en la BBDD, el cual nos tiene que redireccionar a otro formulario JSP -->

    <br/> <!-- linea en blanco-->
    <input type="button" value="Insert new Runner" onclick="window.location.href='insertNewRunnerURL'; return false;"/>


    <!-- Boton para buscar Runner por Dorsal, y que nos lleva a otra URL-->
    <input type="button" value="Serach Runner by Dorsal" onclick="window.location.href='searchRunnerByDorsalURL'; return false;"/>


</body>
</html>
