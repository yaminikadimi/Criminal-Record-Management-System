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
public class Delrec1 extends HttpServlet{
    public void service(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
        PrintWriter out=res.getWriter();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crm?autoReconnect=true&useSSL=false","root","@yaMini6");
            String crid=req.getParameter("crid");
            PreparedStatement ps=con.prepareStatement("select * from criminaldetails where crid=?");
            ps.setString(1, crid);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                req.setAttribute("crid", crid);
                req.setAttribute("searchresult", rs);
                req.getRequestDispatcher("/delrec2.jsp").forward(req, res);
                
            }
            else{
                out.println("<html><body><br><br><br><br><center><h3>No record with criminal Id:"+crid+"</h3><br></h2><a href='delrec1.jsp'>Try again</a></h2></center></body></html>");
            }
        }
        catch(Exception e){
            out.println("<html><body><br><br><br><br><center><h3>Error occured:"+e+"</center></body></html>");
        }
        
    }
}
