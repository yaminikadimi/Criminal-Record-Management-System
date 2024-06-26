<%-- 
    Document   : userview
    Created on : 14 Sep, 2023, 10:53:57 AM
    Author     : yamini kadimi
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/userview.css" rel="stylesheet">
        <title>View Your Records</title>
    </head>
    <body>
         <button><a href="userlogged.jsp">Back</a></button>
        <div class="tab" align="center">
            <form action='userview' align='center' method='post'>
        <h2 align="center">Enter Details</h2>
               <label id='uname'><b>Username:</b>
                   <input type="text" name="uname" required />   
               </label><br><br>
                <label id='password'><b>Password</b>
                   <input type="password" name="password" required />   
               </label><br><br>
                <button><b><a href="userview.jsp">Refresh</a></b></button> <button type='submit'><b><a>View Records</a></b></button><br><br>
             </form>
        </div>
            
          <% ResultSet rs=(ResultSet)request.getAttribute("rs");
          if(rs!=null){%>
           <table align="center">
            <tr>
                <th>Criminal Id</th>
                <th>Username</th>
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
                    <td><c:out value="${value}"/></td>
                </c:forEach>
            </tr>
            </c:forEach>
             
        </table>
                <% }%>
      
    
    </body>
</html>
