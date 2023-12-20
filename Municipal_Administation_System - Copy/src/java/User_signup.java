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
public class User_signup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String usern=req.getParameter("uname");
        String add=req.getParameter("uadd");
        String mob=req.getParameter("umob");
        String emial=req.getParameter("mail");
        String pass=req.getParameter("lpass");
        String cpass=req.getParameter("clpass");
        String signup=req.getParameter("submit");
        
        out.println(usern);
        out.println(add);
        out.println(mob);
        out.println(emial);
        out.println(pass);
        out.println(cpass);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(signup.equals("Submit"));
        {
          String insert=db.Insert("insert into user_signup(sname,sadd,mobno,eid,pass,cpass)values('"+usern.toString()+"','"+add.toString()+"','"+mob.toString()+"','"+emial.toString()+"','"+pass.toString()+"','"+cpass.toString()+"')");
          out.println(insert);
          resp.setContentType("text/html;charset=UTF-8");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('Registration Successfully');");
          out.println("location='User_login.jsp';");
          out.println("</script>");
        }
        
    }  
}
