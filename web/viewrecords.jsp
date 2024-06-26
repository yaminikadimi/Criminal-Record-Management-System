<%-- 
    Document   : viewrecords
    Created on : 3 Sep, 2023, 12:12:12 PM
    Author     : yamini kadimi
--%>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/viewrecords.css" rel='stylesheet'>
        <title>Records Registered By Admin(s)</title>
    </head>
    <body>
        <button><a href="viewrecmenu.jsp"><b>Back</b></a></button><br>
    <center><h2>Criminal Record List</h2></center>
        <table align="center">
            <tr>
                <th>Criminal Id</th>
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
