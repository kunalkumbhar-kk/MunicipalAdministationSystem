/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.awt.Event;
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
public class Birth_Search extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String rno=req.getParameter("rid");
        String cname=req.getParameter("chname");
        String fname=req.getParameter("vname");
        String mname=req.getParameter("moname");
        String gen=req.getParameter("Gender");
        String bplace=req.getParameter("jp");
        String search=req.getParameter("Search");
        
        out.println(rno);
        out.println(cname);
        out.println(fname);
        out.println(mname);
        out.println(gen);
        out.println(bplace);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(search.equals("Search"))
        {
            Connection cn=null;
            Statement st=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from birth_registration where brid='"+rno.toString()+"'";
                
                ResultSet rs=st.executeQuery(sql);
                
                while(rs.next())
                {
                    req.setAttribute("chname", rs.getString("cname"));
                    req.setAttribute("vname", rs.getString("fname"));
                    req.setAttribute("moname", rs.getString("mname"));
                    req.setAttribute("", rs.getString("cs"));
                    req.setAttribute("jp", rs.getString("bplace"));
                    
                    req.getRequestDispatcher("Birth_search.jsp").forward(req, resp);
                }
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
        
    }
}
