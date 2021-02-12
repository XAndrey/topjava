<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="javatime" uri="http://sargue.net/jsptags/time" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<%--&lt;%&ndash;    <fmt:parseDate value="${meal.dateTime}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />&ndash;%&gt;--%>
<%--&lt;%&ndash;    <fmt:formatDate pattern="dd.MM.yyyy HH:mm" value="${ parsedDateTime }" />&ndash;%&gt;--%>
<%--&lt;%&ndash;    <javatime:parseLocalDateTime value="${meal.dateTime}" pattern="yyyy-MM-dd" var="parsedDate" />&ndash;%&gt;--%>
<%--&lt;%&ndash;    <p>${parsedDateTime}</p>&ndash;%&gt;--%>
<table border="1">
    <thead>
    <tr>
        <td>Date</td>
        <td>Description</td>
        <td>Calories</td>
    </tr>
    </thead>
    <c:forEach items="${meals}" var="d">
            <c:if test="${d.excess eq true}">
                <tr style="color: red;">
            </c:if>
            <c:if test="${d.excess eq false}">
                <tr style="color: green;">
            </c:if>
            <td>${d.dateTime}</td>
            <td>${d.description}</td>
            <td>${d.calories}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>