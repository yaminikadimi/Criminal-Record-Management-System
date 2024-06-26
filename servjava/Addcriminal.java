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
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yamini kadimi
 */
public class Addcriminal extends HttpServlet{
    public void service(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException{
        PrintWriter out=res.getWriter();
    
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
//            String id=req.getParameter("id");
            String fname=req.getParameter("fname");
            String lname=req.getParameter("lname");
            int age=Integer.parseInt(req.getParameter("age"));
            String gender=req.getParameter("gender");
            String offense=req.getParameter("offense");
            String hdate=req.getParameter("hdate");
            String rdate=req.getParameter("rdate");

            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crm?autoReconnect=true&useSSL=false","root","@yaMini6");
            PreparedStatement ps1=con.prepareStatement("select * from criminaldetails");
            ResultSet rs1=ps1.executeQuery();
            if(!rs1.next()){
                PreparedStatement updateStatement = con.prepareStatement("ALTER TABLE criminaldetails AUTO_INCREMENT = 23301");
                int rowsUpdated = updateStatement.executeUpdate();
                
            }
            PreparedStatement ps = con.prepareStatement("insert into criminaldetails(crfname,crlname,crage,crgender,offense,hdate,rdate) values(?,?,?,?,?,?,?)");
            // Set the ID for the record to update
            
            
            ps.setString(1,fname);
            ps.setString(2,lname);
            ps.setInt(3,age);
            ps.setString(4,gender);
            ps.setString(5,offense);
            ps.setString(6,hdate);
            ps.setString(7,rdate);
            
            int rs= ps.executeUpdate();
            if(rs>0){
                 res.sendRedirect("admlogged.jsp");
//                 req.getRequestDispatcher("viewrec").forward(req, res);
      
                 
            }
            else{
                out.println("<html><body><br><br><h1><center>Unable to enter data!</h1></center><br><center><a href='addcriminal.jsp'><h3>Try again</h3></a></center></html></body>");
            }
            ps.close();
            con.close();  
    }
        catch(Exception e){
        out.println("<html><body><center><br><br><h3>An Error occured!"+e+"</h3></center></body></html>");
    }
       
}
}
