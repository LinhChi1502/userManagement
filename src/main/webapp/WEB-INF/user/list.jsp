<%--
  Created by IntelliJ IDEA.
  User: adminn
  Date: 11/3/2020
  Time: 4:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Product List</h1>
<p><a href="/users">Back to user list</a></p>
<p><a href="/users?action=create">Create new user</a></p>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td><a href="/users?action=view&id=${user.id}">${user.name}</a></td>
            <td>${user.email}</td>
            <td>${user.country}</td>
            <td><a href="/users?action=edit&id=${user.id}">Edit</a></td>
            <td><a href="/users?action=delete&id=${user.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
