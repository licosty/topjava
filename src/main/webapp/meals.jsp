<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <style>
        th, td {
            padding: 10px;
            border: 2px solid #666;
        }
    </style>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<div class="title">
    <h2><span style="color: crimson">L</span>ist of <span style="color: crimson">M</span>eals</h2>
</div>

<jsp:useBean id="mealsTo" scope="request" type="java.util.List"/>
<table style="border-collapse:collapse">
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
    </tr>
    <c:forEach items="${mealsTo}" var="mealTo">
        <tr style="color:${mealTo.excess ? 'limegreen' : 'red'}">
            <fmt:parseDate value="${mealTo.dateTime}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate"/>
            <fmt:formatDate value="${parsedDate}" pattern="dd.MM.yyyy HH:mm" var="formatDate"/>
            <td>${formatDate}</td>
            <td>${mealTo.description}</td>
            <td>${mealTo.calories}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
