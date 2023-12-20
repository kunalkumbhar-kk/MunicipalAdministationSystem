/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class User_login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String email=req.getParameter("mobno");
        String lpass=req.getParameter("pass");
        String login=req.getParameter("submit");
        
        out.println(email);
        out.println(lpass);
        
        Database db=new Database();
        String result=db.Connectdb();
       
        
        Connection cn=null;
        Statement st=null;
        
        HttpSession session=req.getSession();
        
        try
        {
        
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
            
            
            st=cn.createStatement();
            String sql="select * from user_signup where eid='"+email+"' and pass='"+lpass+"'";
            ResultSet rs=st.executeQuery(sql);
            
            if(rs.next())
            {
                session.setAttribute("cno", rs.getString("sid"));
                session.setAttribute("username", email);
                session.setAttribute("password", lpass);
                resp.sendRedirect("Revenue_home.jsp");
            }
            else
            {
             resp.setContentType("text/html;charset=UTF-8");
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Login Failed');");
             out.println("location='User_login.jsp';");
             out.println("</script>");
            }
            
            
        }catch(Exception ex)
        {
        out.println(ex.toString());
        } 
        
        if(login.equals("New User Registation"))
        {
          resp.sendRedirect("User_signup.jsp");
        }
    }   
}
