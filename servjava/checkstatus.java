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
public class checkstatus extends HttpServlet{
    public void service(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
        PrintWriter out=res.getWriter();
    
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            String crid=req.getParameter("crid");
            String uid=req.getParameter("uid");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crm?autoReconnect=true&useSSL=false","root","@yaMini6");
            PreparedStatement ps=con.prepareStatement("select status from usercrimdetails where crid=? and uid=?");
            ps.setString(1,crid);
            ps.setString(2,uid);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                String checkStatus=rs.getString("status");
                System.out.println(checkStatus);
                req.setAttribute("checkStatus", checkStatus);
                req.getRequestDispatcher("checkstatus.jsp").forward(req, res);
            }
            else{
                out.println("<html><body><br><br><br><br><center><h3>No record with criminal Id:<span style='color:red'>"+crid+"</span> corresponding to the username:<span style='color:red'>"+uid+"</span></h3><br></h2><a href='checkstatus.jsp'><b>Try again</b></a></h2></center></body></html>");
            }
            ps.close();
            con.close();  
        }
            
    
        catch (Exception e) {
            out.println("<html><body><br><br><br><br><center><h3>Error occured:"+e+"</center></body></html>");
        }
    
}
}
