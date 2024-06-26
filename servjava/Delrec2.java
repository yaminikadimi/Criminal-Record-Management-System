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
public class Delrec2 extends HttpServlet{
    public void service(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
        PrintWriter out=res.getWriter();
        try{
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crm?autoReconnect=true&useSSL=false","root","@yaMini6");
            String crid=req.getParameter("crid");
            PreparedStatement ps=con.prepareStatement("delete from criminaldetails where crid=?");
            ps.setString(1, crid);
            int rs=ps.executeUpdate();
            if(rs>0){
                res.sendRedirect("editcrimrec.jsp");
            }
            }
        catch(Exception e){
            out.println("<html><body><br><br><br><br><center><h3>Error occured:"+e+"</center></body></html>");
        }
    }
}
