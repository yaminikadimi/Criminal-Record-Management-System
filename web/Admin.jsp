<%-- 
    Document   : Admin
    Created on : 24 Aug, 2023, 10:25:21 AM
    Author     : yamini kadimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/admin.css" rel="stylesheet">
        <title>Admin Page</title>
    </head>
 
   
    <body>
         <script>
                function showpswd(){
                    var x=document.getElementById("showpass");
                    if(x.type=="password"){
                        x.type="text";
                    }
                    else{
                        x.type="password";
                    }
                }
            </script>
        <button class="but"><a href="index.jsp">Home</a></button><center>
        <div class="tab">
            <form  action="admserv" method="post" name="form1">
            
            <br><h1>ADMIN LOGIN</h1><br><br>
            <input type="text" placeholder="Your Id" name="adminid" required/><br><br>
            <input type="password" placeholder="Password" name="password" id="showpass" required/><br><br>
            <input type="checkbox" onclick="showpswd()">Show Password
            <br><br>
            
            <button type="submit">Login</button> <br><br><br>  
             
        </form>
        </div></center>
    </body>
</html>

