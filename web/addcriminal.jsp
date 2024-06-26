<%-- 
    Document   : addcriminal
    Created on : 2 Sep, 2023, 4:01:03 PM
    Author     : yamini kadimi
--%>


<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/addcriminal.css" rel='stylesheet'>
        <title>Add Criminal</title>
    </head>
    <body>
        <button><a href="admlogged.jsp">◀Back</a></button>
        <h2 align="center">Criminal Details</h2>
        <form align="center" action="addcrim" method="post">
            <br>
            <label id='name'><b>First Name:</b>
                <input type="text" name="fname" required/>
            </label>
             <label id='name'><b>Last Name:</b>
                <input type="text" name="lname"/>
             </label><br><br><br>
             <label><b>Age(Approx.):</b>
                 <input type='number' name='age' required/>
             </label><br><br><br>
             <label><b>Gender:</b >
                 <input type='radio' name='gender' required value="Male" /> Male
                 <input type='radio' name='gender' value="Female" required /> Female
                 <input type='radio' name='gender' value="Other" required /> Other
             </label><br><br><br>
             <label><b>Offense Type:</b>
                 <input type='text' name='offense' required/>
             </label><br><br>
             <label><b>Date of the Incident:</b>
                 <input type='date' name='hdate' required/>
             </label><br><br>
             <label><b>Registered Date:</b>
                 <%
                    LocalDate currentDate = LocalDate.now();
                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
                    String cd = currentDate.format(formatter);

                     %>
                 <input type='text' name='rdate' readonly="readonly" value="<%=cd%>">
             </label><br><br>
             <center><button type="submit"><b>Submit Details</b></button></center>
             
        </form>
    </body>
</html>
