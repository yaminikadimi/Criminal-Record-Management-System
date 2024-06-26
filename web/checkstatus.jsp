<%-- 
    Document   : checkstatus
    Created on : 13 Sep, 2023, 7:35:29 PM
    Author     : yamini kadimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check status of Complaint</title>
        <link href="css/checkstatus.css" rel="stylesheet">
    </head>
    <body>
        <button><a href="usereditcrim.jsp">◀Back</a></button><br>
    <center>
        <form  method="post" action="checkstatus">
            <label><b>Criminal ID:</b></label><br><br>
                <input type="text" name="crid" required/><br><br>
                <p><label><b>Username:</b></label><br><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                    <input type="text" name="uid" required/>&nbsp;&nbsp;
                <button><b><a href="checkstatus.jsp" class="ref">Refresh</a></b></button><br><br>
                <center><button type="submit"><b>Check</b></button></center><br><br>
              
              <%String msg=(String)request.getAttribute("checkStatus");
              if(msg!=null){%>
              <input type="text" name="status" readonly value="<%= msg %>"> <br><br>
                <%}%>
                
              </form>
    </center>
    </body>
</html>
