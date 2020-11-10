<%--
  Created by IntelliJ IDEA.
  User: adminn
  Date: 11/4/2020
  Time: 11:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View user</title>
</head>
<body>
<p><a href="/users">Back to user list</a></p>
<form>
        <fieldset>
            <legend>User Information</legend>
            <table>
                <tr>
                    <td>Name:</td>
                    <td>${user.getName()}</td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>${user.getEmail()}</td>
                </tr>
                <tr>
                    <td>Country:</td>
                    <td>${user.getCountry()}</td>
                </tr>
            </table>
        </fieldset>
</form>
</body>
</html>
