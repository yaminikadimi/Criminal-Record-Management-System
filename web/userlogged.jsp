<%-- 
    Document   : userlogged
    Created on : 11 Sep, 2023, 9:15:17 PM
    Author     : yamini kadimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/userlogged.css" rel="stylesheet">
        <title>User logged in</title>
    </head>
    <body>
        <header>
            <a href="index.jsp" class="crm">Criminal Record Management</a>
        </header>
        <br><br><br><br><br>
        
        <table align="center">
            <tr>
                <td><button><b><a href="usercrimdet.jsp" >Add Criminal</a></b></button></form></td>
                <td><button><b><a href="usereditcrim.jsp">Edit Criminal Record</a></b></button></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><button><b><a href="userview.jsp">View your complaints</a></b></button></td>
            </tr>
            <tr>
                <td><button id="but"><a href="user.jsp"><b>Log Out</b></a></button></td>
            </tr>
        </table>
    </body>
    </body>
</html>
