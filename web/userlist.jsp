<%-- 
    Document   : userlist
    Created on : 10 Sep, 2023, 10:15:55 PM
    Author     : yamini kadimi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/userlist.css" rel="stylesheet">
        <title>Users List</title>
    </head>
    <body>
       <button><a href="admlogged.jsp"><b>Back</b></a></button><br>
       <center><h2>Users List</h2></center>
        <table align="center">
            <tr>
                <th>User Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Mobile Number</th>
                <th>E-Mail</th>
            </tr>
            <c:forEach items="${data}" var="row">
                <tr>
                    <c:forEach items="${row}" var="value">
                        <td>${value}</td>
                    </c:forEach>
                </tr>
            </c:forEach>
           
    </body>
</html>
