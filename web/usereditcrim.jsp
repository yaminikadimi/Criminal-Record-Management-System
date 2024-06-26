<%-- 
    Document   : usereditcrim
    Created on : 13 Sep, 2023, 3:26:05 PM
    Author     : yamini kadimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/usereditcrim.css" rel="stylesheet">
        <title>User Edit Criminal Record</title>
    </head>
    <body>
        <header>
            <a href="index.jsp" class="crm">Criminal Record Management</a>
        </header><br>
        <button><a href="userlogged.jsp">◀Back</a></button>
        <br><br><br>
        <table align="center">
            <tr>
                <td><button><b><a href="usermodify.jsp">Modify criminal Data</a></b></button></td>
                <td><button><b><a href="checkstatus.jsp">Check status of your complaint</a></b></button></td>
            </tr>
            <tr>
                <td colspan="2"><center><button><b><a href="withdraw.jsp">Want to withdraw complaint?</a></b></button></center></td>
            </tr>
            
        </table>

    </body>
</html>
