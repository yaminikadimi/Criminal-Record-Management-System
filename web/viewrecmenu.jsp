<%-- 
    Document   : viewrecmenu
    Created on : 15 Sep, 2023, 3:45:21 PM
    Author     : yamini kadimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/viewrecmenu.css" rel='stylesheet'>
        <title>View Records Menu</title>
    </head>
    <body>
        <button><a href="admlogged.jsp">◀Back</a></button>
        <center><table>
            <tr>
                <td><form method="post" action="viewrec">
            <button type="submit">Registered By Admin</button>
                    </form></td>
                    <td><form method="post" action="viewuser">
            <button type="submit">Registered By Users</button>
                    </form></td>
            </tr>
            
            </table></center>
    </body>
</html>
