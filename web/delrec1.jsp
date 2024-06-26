<%-- 
    Document   : delrec
    Created on : 8 Sep, 2023, 7:47:07 AM
    Author     : yamini kadimi
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/delrec.css" rel="stylesheet">
        <title>Delete Records</title>
    </head>
    <body><br>
        <button><a href="editcrimrec.jsp">◀Back</a></button><br><br><br><br>
        <form align="center" method="post" action="delrec1">
            <label><b>Enter the criminal Id of the record you want to delete</b></label><br><br>
                <input type="text" name="crid" required/><br><br>
                <center><button type="submit"><b>Search</b></button></center>
        </form>
    
    </body>
</html>
