/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class Schedule extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out=resp.getWriter();
        
        String water=req.getParameter("wstt");
        String ghanta=req.getParameter("ggtt");
        String office=req.getParameter("owtt");
        String body=req.getParameter("mbi");
        String info=req.getParameter("btn_submit");
        
        out.println(water);
        out.println(ghanta);
        out.println(office);
        out.println(body);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(info.equals("Show"));
        {
          String insert=db.Insert("insert into schedule_and_info(water_s,g_gadi,office,mbody)values('"+water.toString()+"','"+ghanta.toString()+"','"+office.toString()+"','"+body.toString()+"')");
         out.println(insert);
         resp.setContentType("text/html;charset=UTF-8");
         out.println("<script type=\"text/javascript\">");
         out.println("alert('Records Inserted');");
         out.println("location='Schedule.jsp';");
         out.println("</script>");
        }
    }  
}