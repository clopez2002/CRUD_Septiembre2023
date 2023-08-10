<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 8/10/2023
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <!-- Aca le decimos donde estan los estilos-->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
</head>
<body>

    <form:form action="processRunnerInsertedURL" modelAttribute="insertedRunnerAttributes" method="post"><!-- esta linea le dice donde mandar la info, le da el attributo y el metodo a usar -->

        <table>

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

                <td colspan="2"><input type="submit" value="Insert"></td>

            </tr>


        </table>


    </form:form>

</body>
</html>
