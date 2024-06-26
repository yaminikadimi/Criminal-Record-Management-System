<%-- 
    Document   : withdraw
    Created on : 14 Sep, 2023, 10:49:04 AM
    Author     : yamini kadimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='css/withdraw.css'/>
        <title>User Withdraw Complaint</title>
    </head>
    <body>
        <button><a href="usereditcrim.jsp">◀Back</a></button>
        <p>Dear User,<br><br>If you want to withdraw your complaint please provide the details below and also the valid reason. In case if you were
            threatened to do so please reach out to us. We don't encourage injustice and will help you out.</p>
        
        <form action='withdraw' method='post'><center>
        <h2 align="center">Enter Details</h2>
               <label ><b>Username:</b> </label>
                   <input type="text" name="uname" required />   
              <label ><b>Password</b></label>
                   <input type="password" name="password" required /><br><br>
               <label ><b>Criminal ID:</b></label>
                   <input type="text" name="crid" required /><br><br>
                <label ><b>Reason:</b></label>
                <select required name='reason'>
                    <option value='' disabled selected>select the reason</option>
                    <option value='Incorrect data'>I provided incorrect data</option>
                    <option value='Mistook'>I mistook for someone else</option>
                    <option value='Threatened'>I was threatened</option>
                    <option value='Don not want to report'>I don't want to report</option>
                    <option value='Not to disclose'>i prefer not to disclose the reason</option>
                </select><br><br>
                <button type='reset'>Clear</button> &nbsp;&nbsp;&nbsp;
                <button type='submit'>Send Request</button><br><br>
            </center></form>
    </body>
</html>
