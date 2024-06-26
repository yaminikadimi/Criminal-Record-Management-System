<%-- 
    Document   : viewusersrec
    Created on : 15 Sep, 2023, 4:06:49 PM
    Author     : yamini kadimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/viewusersrec.css">
        <title>Records Registered By Users</title>
    </head>
    <body>
        <button><a href="viewrecmenu.jsp"><b>Back</b></a></button><br>
    <center><h2>Criminal Record List</h2></center>
        <table align="center">
            <tr>
                <th>Criminal Id</th>
                <th>User Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Offense Type</th>
                <th>Incident Date(yyyy-mm-dd)</th>
                <th>Registered Date(dd-mm-yyyy)</th>
                <th>Status</th>
            </tr>
           
            <c:forEach items="${data}" var="row">          
            <tr>
                <c:forEach items="${row}" var="value">
                    <td>${value}</td>
                </c:forEach>
            </tr>
            </c:forEach>
            
        </table>
    </body>
</html>
