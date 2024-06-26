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
import java.sql.ResultSetMetaData;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yamini kadimi
 */
public class status extends HttpServlet{
    public void service(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
        PrintWriter out=res.getWriter();
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crm?autoReconnect=true&useSSL=false","root","@yaMini6");
            String crid=req.getParameter("crid");
            String status=req.getParameter("status");
            PreparedStatement ps=con.prepareStatement("select * from usercrimdetails where crid=?");
            ps.setString(1,crid);
            ResultSet rs=ps.executeQuery();
            
            PreparedStatement ps1=con.prepareStatement("select * from criminaldetails where crid=?");
            ps1.setInt(1,Integer.parseInt((crid)));
            ResultSet rs1=ps1.executeQuery();
            
            boolean crim=rs1.next();
            boolean usercrim=rs.next();
            
            if(!crim && !usercrim){
                out.println("<html><body><br><br><br><br><center><h3>No record with criminal Id:"+crid+"</h3><br></h2><a href='status.jsp'>Try again</a></h2></center></body></html>");
            }
            else if(crim && usercrim){
                PreparedStatement ps2=con.prepareStatement("UPDATE criminaldetails SET status=? WHERE crid=?;");
                PreparedStatement ps3=con.prepareStatement("UPDATE usercrimdetails SET status=? WHERE crid=?;");
                ps2.setString(1,status);
                ps2.setInt(2,Integer.parseInt((crid)));
                 ps3.setString(1,status);
               ps3.setString(2,crid);
                int rs2=ps2.executeUpdate();
                int rs3=ps3.executeUpdate();
                if(rs2>0 && rs3>0){
               res.sendRedirect("admlogged.jsp");
            }
                else{
                    out.println("<html><body><br><br><br><br><center><h3>Error occured.Check your details.<br><a href='status.jsp'>Try again</a></center></body></html>");
                }
            }
            else if(crim && !usercrim){
                
                PreparedStatement ps4=con.prepareStatement("UPDATE criminaldetails SET status=? WHERE crid=?;");
                 ps4.setString(1,status);
                ps4.setInt(2,Integer.parseInt((crid)));
                int rs4=ps4.executeUpdate();
                if(rs4>0){
               res.sendRedirect("admlogged.jsp");
            }
                else{
                    out.println("<html><body><br><br><br><br><center><h3>Error occured.Check your details.<br><a href='status.jsp'>Try again</a></center></body></html>");
                }
            }
        }
        catch(Exception e){
            out.println("<html><body><br><br><br><br><center><h3>Error occured:"+e+"</center></body></html>");
        }
    }
}
