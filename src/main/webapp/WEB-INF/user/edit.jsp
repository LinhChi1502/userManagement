<%--
  Created by IntelliJ IDEA.
  User: adminn
  Date: 11/4/2020
  Time: 9:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit user</title>
</head>
<body>
<h1>Edit user</h1>
<p>
    <c:if test="${message != null}">
        <span>${message}</span>
    </c:if>
</p>
<p><a href="/users">Back to user list</a></p>
<form method="post">
    <fieldset>
        <legend>User Information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="${user.getName()}"></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" value="${user.getEmail()}"></td>
            </tr>
            <tr>
                <td>Country:</td>
                <td><input type="text" name="country" value="${user.getCountry()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit user"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
