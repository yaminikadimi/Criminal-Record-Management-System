<%-- 
    Document   : status
    Created on : 10 Sep, 2023, 10:09:52 AM
    Author     : yamini kadimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/status.css" rel="stylesheet">
        <title>Update Status</title>
    </head>
    <body>
        <button><a href="editcrimrec.jsp"><b>◀Back</b></a></button><br><br><br><br>
    <center><form method="post" action="updstat">
            <label><b>Enter the criminal Id of the record you want to update the status</b></label><br><br>
            <input type="text" name="crid" required/><br><br><br>
            <input type="radio" name="status" value="Closed"/> <b>Closed</b>
            <input type="radio" name="status" value="Not Closed"/><b>Not Closed</b><br><br><br>
            <input type="submit" value="Update Status" class="sub">
        </form></center>
    </body>
</html>
