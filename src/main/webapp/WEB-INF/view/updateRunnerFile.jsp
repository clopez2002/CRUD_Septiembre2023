<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 8/10/2023
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Update runner</title>

    <!-- Aca le decimos donde estan los estilos-->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>

</head>
<body>

        <header>

            <h1>Update Runner</h1>

        </header>

        <form:form action="processRunnerInsertedURL" modelAttribute="runnerAttributeToUpdate" method="post"><!-- esta linea le dice donde mandar la info, le da el attributo y el metodo a usar -->
            <form:hidden path="id"/>
            <table border="1">

                <tr>
                    <td>Nombre</td>                         <!--Texto -->
                    <td><form:input path="nombre"/></td>
                </tr>

                <tr>
                    <td>Apellido</td>
                    <td><form:input path="apellido"/></td>
                </tr>

                <tr>
                    <td>Edad</td>
                    <td><form:input path="edad"/></td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td><form:input path="email"/></td>
                </tr>

                <tr>
                    <td>Dorsal</td>
                    <td><form:input path="dorsal"/></td>
                </tr>

                <tr>
                    <td>Tiempo</td>
                    <td><form:input path="tiempo"/></td>
                </tr>

                <tr>

                    <td colspan="2"><input type="submit" value="Update"></td>

                </tr>


            </table>


        </form:form>


</body>
</html>
