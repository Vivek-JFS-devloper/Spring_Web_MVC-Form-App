<%@ page language="java" 
contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Display Collection Data</title>
</head>
<body>
    <h2 style="text-align: center">Students Details</h2>
    <table border="1" style="width: 100%; text-align: left; border-collapse: collapse;">
        <thead>
            <tr>
                <th>S.No</th>
                <th>Name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Course</th>
                <th>Timings</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${student}" var="s" varStatus="index">
                <tr>
                    <td>${index.count}</td>
                    <td>${s.name}</td>
                    <td>${s.email}</td>
                    <td>${s.gender}</td>
                    <td>${s.course}</td>
                    <td>${s.timings}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
