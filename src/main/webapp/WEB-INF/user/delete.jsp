<%--
  Created by IntelliJ IDEA.
  User: adminn
  Date: 11/4/2020
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Delete User</title>
</head>
<body>
<h1>Delete user</h1>
<p><a href="/users">Back to user list</a></p>
<p>
    <c:if test="${message != null}">
        <span>${message}</span>
    </c:if>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>User Information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td>${user.getName()}></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>${user.getEmail()}</td>
            </tr>
            <tr>
                <td>Country:</td>
                <td>${user.getCountry()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete user"></td>
                <td><a href="/users">Back to user list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
