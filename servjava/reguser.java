/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servjava;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLIntegrityConstraintViolationException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yamini kadimi
 */
public class reguser extends HttpServlet{
    public void service(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
        PrintWriter out = res.getWriter();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crm?autoReconnect=true&useSSL=false","root","@yaMini6");
            String uname=req.getParameter("uname");
            String fname=req.getParameter("fname");
            String lname=req.getParameter("lname");
            String age=req.getParameter("age");
            String gender=req.getParameter("gender");
            String mobile=req.getParameter("mobile");
            String email=req.getParameter("email");
            String password=req.getParameter("cfmpass");
            
            PreparedStatement ps=con.prepareStatement("insert into userdetails(uid,ufname,ulname,uage,ugender,umobile,uemail,upassword) values(?,?,?,?,?,?,?,?)");
            ps.setString(1,uname);
            ps.setString(2,fname);
            ps.setString(3,lname);
            ps.setString(4,age);
            ps.setString(5,gender);
            ps.setString(6,mobile);
            ps.setString(7,email);
            ps.setString(8,password);
            
            int rs=ps.executeUpdate();
            if(rs>0){
                res.sendRedirect("user.jsp");
            }
            
        }
        catch(SQLIntegrityConstraintViolationException e){
            out.println("<html><body><br><br><br><br><center><h3>The username is already taken</h3><br><h4>"
                    + "<a href='register.jsp'>Try again</a> with different username</h4></center></body></html>");
        }
        catch(Exception e){
            
        }
    }
    
}
