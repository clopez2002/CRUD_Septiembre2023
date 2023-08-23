<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 8/15/2023
  Time: 2:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Runner by Dorsal</title>
    <!-- Aca le decimos donde estan los estilos-->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
</head>
<body>

    <header>

        <h1>Inser dorsal to search</h1>

    </header>


    <form action="getRunnerInformationFromDorsalNumberURL" method="get">

        <input type="text" name="runnerDorsalToSearch">
        <input type="submit">

    </form>

</body>
</html>
