<%--
  Created by IntelliJ IDEA.
  User: adminn
  Date: 11/3/2020
  Time: 11:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Create new user</title>
</head>
<body>
<h1>Create new user</h1>
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
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td>Country:</td>
                <td><input type="text" name="country"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create new user"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
