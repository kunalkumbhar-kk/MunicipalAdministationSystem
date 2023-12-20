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
public class Search_id extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String name=req.getParameter("idname");
        String add=req.getParameter("idadd");
        String mno=req.getParameter("idno");
        String word=req.getParameter("idword");
        String zone=req.getParameter("idzone");
        String id=req.getParameter("btn_submit");
        
        out.println(name);
        out.println(add);
        out.println(mno);
        out.println(word);
        out.println(zone);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(id.equals("Submit"));
        {
          String insert=db.Insert("insert into search_id(name,sadd,mobno,word,zone)values('"+name.toString()+"','"+add.toString()+"','"+mno.toString()+"','"+word.toString()+"','"+zone.toString()+"')");
          out.println(insert);
          resp.setContentType("text/html;charset=UTF-8");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('Records Inserted');");
          out.println("location='Search_id.jsp';");
          out.println("</script>");
        }
    }  
}
