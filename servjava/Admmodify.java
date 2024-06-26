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
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yamini kadimi
 */
public class Admmodify extends HttpServlet{
    private Object rs;
    
     
    public void service(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException{
        PrintWriter out=res.getWriter();
        List<String[]> data = new ArrayList<>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String crid=req.getParameter("crid");
            String crfname=req.getParameter("fname");
            String crlname=req.getParameter("lname");
            int crage=Integer.parseInt(req.getParameter("age"));
            String crgender=req.getParameter("gender");
            String offense=req.getParameter("offense");
            String hdate=req.getParameter("hdate");
            
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crm?autoReconnect=true&useSSL=false","root","@yaMini6");
            PreparedStatement ps1=con.prepareStatement("select * from criminaldetails where crid=?");
            ps1.setString(1, crid);
            ResultSet rs1=ps1.executeQuery();
            if(rs1.next()){
                while (rs1.next()) {
                String[] row = new String[9];
                for (int i = 1; i <= 9; i++) { 
                    row[i-1]=rs1.getString(i);
                }    
            data.add(row);
            }
                req.setAttribute("data",data);
                PreparedStatement ps2=con.prepareStatement("UPDATE criminaldetails SET crfname=?,crlname=?, crage=?, crgender=?,offense=?, hdate=? WHERE crid=?");
                ps2.setString(1,crfname);
                ps2.setString(2,crlname);
               
                ps2.setInt(3,crage);
                ps2.setString(4,crgender);
                ps2.setString(5,offense);
                ps2.setString(6,hdate);
                ps2.setString(7,crid);
                int rs2=ps2.executeUpdate();
                if(rs2<0){
                    out.println("<html><body><br><br><br><br><center><h3>Cannot Update details</h3><br></h2><a href='admmodify.jsp'>Try again</a></h2></center></body></html>");
                }
                else{
                    res.sendRedirect("admlogged.jsp");
                }
            }
            else{
                out.println("<html><body><br><br><br><br><center><h3>No record with criminal Id:"+crid+"</h3><br></h2><a href='admmodify.jsp'>Try again</a></h2></center></body></html>");
            }
        }
        catch(Exception e){
            out.println("<html><body><br><br><br><br><center><h3>Error occured:"+e+"</h3></center></body></html>");
        }
}
}
