<%-- 
    Document   : admlogged
    Created on : 1 Sep, 2023, 4:19:02 PM
    Author     : yamini kadimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/admlogged.css" rel="stylesheet">
        <title>Admin Logged in</title>
    </head>
    <body>
        <header>
            <a href="index.jsp" class="crm">Criminal Record Management</a>
        </header>
        <br><br><br>
        
        <table align="center">
            <tr>
                <td><button><b><a href="addcriminal.jsp" >Add Criminal</a></b></button></td>
                <td><button><b><a href="editcrimrec.jsp">Edit Criminal Record</a></b></button></td>
            </tr>
            <tr>
                <td><button><b><a href="viewrecmenu.jsp">View Records</a></b></button></td>
                <td><button><b><a href="userlist">View Users List</a></b></button></td>
            </tr>
            <tr>
                <td><button id="but"><a href="Admin.jsp"><b>Log Out</b></a></button></td>
            </tr>
        </table>
    </body>
</html>
