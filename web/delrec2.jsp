<%-- 
    Document   : delrec2
    Created on : 9 Sep, 2023, 4:16:00 PM
    Author     : yamini kadimi
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/delrec.css" rel="stylesheet">
        <title>Delete Record</title>
    </head>
    <body><br>
        <button><a href="delrec1.jsp">◀Back</a></button><br><br>
        
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
    
    <tr>
        <%
        ResultSet searchresult=(ResultSet)request.getAttribute("searchresult");
        String crid=searchresult.getString(1);
        ResultSetMetaData rsm=searchresult.getMetaData();
        int colcount=rsm.getColumnCount();
        for(int i=1;i<=colcount;i++){
    %>
    <td><%=searchresult.getString(i)%></td> <%}%>
    </tr>
         </table><br><br>
     <form action='delrec2'>
         <input type='hidden'name='crid' value=" <%=crid%>">
    <center><button class="but">Delete</button></center>
    </form>
         
    </body>
</html>
