<%-- 
    Document   : register
    Created on : 11 Sep, 2023, 12:51:56 PM
    Author     : yamini kadimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/register.css" rel="stylesheet">
        <title>Register User</title>
    </head>
    <body>
        <script>
           
            function checkpass(){
                   var pass=document.getElementById("setpass").value;
            var cfmpass=document.getElementById("cfmpass").value;
            var passmsg=document.getElementById("passmsg");
            if(pass.length<8 || cfmpass.length<8){
                    passmsg.textContent="❌Password should have more than or equal to 8 characters";
                    return false;
                }
                if(pass!==cfmpass){
                    passmsg.textContent="❌Passwords do not match";
                    return false;
                }
            }
            
            function showsetpswd(){
                    var x=document.getElementById("setpass");
                    var y=document.getElementById("cfmpass");
                    if(x.type=="password" || y.type=="password" ){
                        x.type="text";
                        y.type="text";
                    }
                    else{
                        x.type="password";
                        y.type="password";
                    }
                }
                
                
               
        </script>
        
        <button><a href="index.jsp">Home</a></button>
        <h2 align="center">User Details</h2>
        <div class="tab">
            <form action='usercheck' align='center' method='post'><br>
               <label id='uname'><b>Username:</b>
                   <input type="text" name="uname" required />   
               </label>
                <button type="reset" ><b>Clear</b></button>
                <button><b><a href="register.jsp" class="ref">Refresh Page</a></b></button><br>
             <button class="avail" action='usercheck' >Check for username availability </button><br><br>
           
            <% String msg=(String)request.getAttribute("msg");
            if(msg!=null){
            %>
            <center><input type='text' id="msg" value='<%=msg%>' readonly/><br><br></center> <%}%>
             </form>
        </div>
        <div class="tab">
            <form align="center" action="reguser" method="post" onsubmit="return checkpass()">
            <br>
            <label id='uname'><b>Username:</b>
                <input type="text" name="uname" required />  <br><br></label>
            <label id='name'><b>First Name:</b>
                <input type="text" name="fname" required/>
            </label>
             <label id='name'><b>Last Name:</b>
                <input type="text" name="lname"/>
             </label><br><br><br>
             
             <label ><b>Set Password:  </b>
                <input id='setpass' type="password" name="setpass"/> <input type="checkbox" onclick="showsetpswd()"/>Show Password
             </label><br><br>
             <label ><b>Confirm password:</b>
                 <input id='cfmpass'type="password" name="cfmpass"/><br>
             </label>
             <span id="passmsg" style="color: red"></span><br><br><br>
             <label><b>Age:</b>
                 <input type='number' name='age' required/>
             </label><br><br><br>
             <label><b>Gender:</b >
                 <input type='radio' name='gender' required value="Male" /> Male
                 <input type='radio' name='gender' value="Female" required /> Female
                 <input type='radio' name='gender' value="Other" required /> Other
             </label><br><br><br>
             <label><b>Mobile:</b>
                 <input type='text' name='mobile' required/>
             </label><br><br>
             <label><b>E-Mail:</b>
                 <input type='email' name='email' required/>
             </label><br><br>
             <button type="reset"><b>Clear</b></button><br><br>
             
             <center><button type="submit" id="sub" onclick="return avail()"><b>Submit Details</b></button></center><br>
             
             <center>Had Account Already?<a href="user.jsp"><b>Login</b></a></center><br>
        </form>
    </div>
    </body>
</html>


