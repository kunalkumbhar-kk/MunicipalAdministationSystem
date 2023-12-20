/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class Death extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String dreg=req.getParameter("regno");
        String dpn=req.getParameter("deadp");
        String fname=req.getParameter("fn");
        String moname=req.getParameter("mname");
        String gen=req.getParameter("Gender");
        String dplace=req.getParameter("dp");
        String death=req.getParameter("submit");
        
        out.println(dreg);
        out.println(dpn);
        out.println(fname);
        out.println(moname);
        out.println(gen);
        out.println(dplace);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(death.equals("Search"))
        {
            Connection cn=null;
            Statement st=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
               cn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from death_registration where did='"+dreg.toString()+"'";
                
                ResultSet rs=st.executeQuery(sql);
                
                while(rs.next())
                {
                    req.setAttribute("dperson", rs.getString("dname"));
                    req.setAttribute("fname", rs.getString("fname"));
                    req.setAttribute("mname", rs.getString("mname"));
                    req.setAttribute("gen", rs.getString("gender"));
                    req.setAttribute("dplace", rs.getString("dplace"));
                    
                    req.getRequestDispatcher("Death.jsp").forward(req, resp);
                }
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
    }
    
    
}
