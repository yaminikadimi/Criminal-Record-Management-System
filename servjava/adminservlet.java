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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author yamini kadimi
 */
public class adminservlet extends HttpServlet{
    public void service(HttpServletRequest req,HttpServletResponse res) throws IOException{
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            PrintWriter out=res.getWriter();
            String un=req.getParameter("adminid");
            String pw=req.getParameter("password");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crm?autoReconnect=true&useSSL=false","root","@yaMini6");
            PreparedStatement ps = con.prepareStatement("SELECT aid,apassword FROM admin WHERE aid=? AND apassword=?");
            ps.setString(1,un);
            ps.setString(2,pw);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                req.setAttribute("un", un);
                RequestDispatcher rd = req.getRequestDispatcher("admlogged.jsp");
                rd.forward(req, res);
                  
            }
            else{
                out.println("<html><body><br><br><h1><center>Login unsuccessful!</h1></center><br><center><a href='Admin.jsp'><h3>Try again</h3></a></center></html></body>");
            }
            rs.close();
            ps.close();
            con.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}
