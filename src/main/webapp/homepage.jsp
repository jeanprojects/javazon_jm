<%-- 
    Document   : homepage
    Created on : 26 août 2019, 12:01:13
    Author     : alexa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        ${msg}
        <br>
        <c:forEach items="${articles}" var="art">
            Article : ${art.nom}
            <br>
        </c:forEach>
    </body>
</html>
