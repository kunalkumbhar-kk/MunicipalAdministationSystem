/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class admin_login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        PrintWriter out=resp.getWriter();
        
        String amno=req.getParameter("mobno");
        String apass=req.getParameter("lpass");
        String admin=req.getParameter("submit");
        
        out.println(amno);
        out.println(apass);
        
       if(amno.equals("Admin") && apass.equals("Password"))
       {
       resp.sendRedirect("dashboard.jsp");
       
       }
       else
       {
         resp.setContentType("text/html;charset=UTF-8");
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Login Failed');");
             out.println("location='admin_login.jsp';");
             out.println("</script>");
       
       }
       
    }
}