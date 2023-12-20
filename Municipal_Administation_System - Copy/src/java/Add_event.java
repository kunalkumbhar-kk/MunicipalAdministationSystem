/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class Add_event extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        
        PrintWriter out=resp.getWriter();
        
        String eventid=req.getParameter("eid");
        String eventname=req.getParameter("ename");
        String date=req.getParameter("edate");
        String time=req.getParameter("etime");
        String place=req.getParameter("place");
        String images=req.getParameter("img");
        String event=req.getParameter("submit");
        
        out.println(eventid);
        out.println(eventname);
        out.println(date);
        out.println(time);
        out.println(place);
        out.println(images);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(event.equals("Submit"))
        {
            String insert=db.Insert("insert into event_details(ename,edate,etime,eplace,eimg)values('"+eventname.toString()+"','"+date.toString()+"','"+time.toString()+"','"+place.toString()+"','img/"+images.toString()+"') ");
            out.println(insert);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Records Inserted');");
            out.println("location='Add_event.jsp';");
            out.println("</script>");
            
        }
        
        if(event.equals("Update"))
        {
            String update=db.Update("update event_details set ename='"+eventname.toString()+"',edate='"+date.toString()+"',etime='"+time.toString()+"',eplace='"+place.toString()+"',eimg='"+images.toString()+"'where eid='"+eventid.toString()+"' ");
            out.println(update);
        }
        
        if(event.equals("Delete"))
        {
            String delete=db.Delete("delete from event_details where eid='"+eventid.toString()+"'");
            out.println(delete);
        }
        
        if(event.equals("Search"))
        {
            Connection cn=null;
            Statement st=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from event_details where eid='"+eventid.toString()+"'";
                
                ResultSet rs=st.executeQuery(sql);
                
                while(rs.next())
                {
                    req.setAttribute("ename", rs.getString("ename"));
                    req.setAttribute("edate", rs.getString("edate"));
                    req.setAttribute("etime", rs.getString("etime"));
                    req.setAttribute("place", rs.getString("eplace"));
                    req.setAttribute("img1", rs.getString("eimg"));
                    
                    req.getRequestDispatcher("Add_event.jsp").forward(req, resp);
                }
                
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
        
    }
    
}