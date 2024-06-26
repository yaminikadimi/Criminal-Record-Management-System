<%-- 
    Document   : user
    Created on : 11 Sep, 2023, 12:09:39 PM
    Author     : yamini kadimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/user.css" rel="stylesheet">
        <title>User login</title>
    </head>
        <body>
            <header>
                <div class="menu">
                    <p>CRIMINAL RECORDS</p>
                    <a class="home" href="index.jsp">Home</a>
                    <a class="contact" href="mailto:apcriminalrecords@gmail.com">Contact</a>
                </div>
            </header>
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
            
        
        <div class="logpage">
            <div class="left">
                <div class="head">
                    <p>You can:</p>
                </div>
                <div class="line"></div>
                <img src="Images/entering_data.jpg"> 
                <div class="step">
                    <i class="fa-regular fa-square-check"></i>
                    <p>Register (Login if already registered)</p>
                </div>
                <div class="step">
                    <i class="fa-regular fa-square-check"></i>
                    <p>Enter details of the complaint</p>
                </div>
                <div class="step">
                    <i class="fa-regular fa-square-check"></i>
                    <p>Know your complaint status</p>
                </div>   
            </div>

            <div class="right">
                <div class="head2">
                    <h1>USER LOGIN</h1>
                </div>
                <div class="line"></div>
                
                <form  action="userserv" method="post" name="form1">
                    <input type="text" placeholder="Your Id" name="userid" required/>
                    <input type="password" placeholder="Password" name="password" id="showpass" required/>
                    <div class="passwd">
                        <input type="checkbox" onclick="showpswd()">Show Password
                    </div>
                    <button type="submit">Login</button>
                    <div class="reg">
                        <p>No account yet?</p> <a href="register.jsp">Register</a>
                    </div>
                
                
                </form>
            </div>
        </div>
    </body>
</html>
