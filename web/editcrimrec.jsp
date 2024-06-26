<%-- 
    Document   : editcrimrec
    Created on : 4 Sep, 2023, 4:27:19 PM
    Author     : yamini kadimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/editcrimrec.css" rel="stylesheet">
        <title>Edit Criminal Record</title>
    </head>
    <body>
        <header>
            <a href="index.jsp" class="crm">Criminal Record Management</a>
        </header><br>
        <button><a href="admlogged.jsp">◀Back</a></button>
        <br><br><br>
        <table align="center">
            <tr>
                <td><button><b><a href="admmodify.jsp">Modify criminal Data</a></b></button></td>
                <td><button><b><a href="delrec1.jsp">Delete Records</a></b></button></td>
            </tr>
            <tr>
                <td colspan="2"><center><button><b><a href="status.jsp">Update status of the complaint</a></b></button></center></td>
            </tr>
            
        </table>
    </body>
</html>
