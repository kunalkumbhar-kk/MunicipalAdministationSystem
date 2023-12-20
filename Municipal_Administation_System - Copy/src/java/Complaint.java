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
public class Complaint extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String compl=req.getParameter("comp");
        String cb=req.getParameter("submit");
        
        out.println(compl);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(cb.equals("Submit"))
        {
          String insert=db.Insert("insert into add_complaint(raise)values('"+compl.toString()+"')");
          out.println(insert);
          resp.setContentType("text/html;charset=UTF-8");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('Records Inserted');");
          out.println("location='Complaint.jsp';");
          out.println("</script>");   
          
        }
    }
}
