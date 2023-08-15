<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 8/15/2023
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
</head>
<body>

        <form:form action="getRunnerInformationFromDorsalNumberURL" modelAttribute="Attributes" method="post"><!-- esta linea le dice donde mandar la info, le da el attributo y el metodo a usar -->

            <table border="1">
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Edad</th>
                    <th>Email</th>
                    <th>Dorsal</th>
                    <th>Tiempo</th>


                </tr>

                <tr>
                    <td><form:input path="nombre"/></td>
                    <td><form:input path="apellido"/></td>
                    <td><form:input path="edad"/></td>
                    <td><form:input path="email"/></td>
                    <td><form:input path="dorsal"/></td>
                    <td><form:input path="tiempo"/></td>
                </tr>


            </table>


        </form:form>

        <input type="button" value="Return Home" onclick="window.location.href='runnersListURL'; return false;"/>

</body>
</html>
