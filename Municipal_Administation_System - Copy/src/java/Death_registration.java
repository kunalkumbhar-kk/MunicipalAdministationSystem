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
public class Death_registration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String rno=req.getParameter("regno");
        String dpn=req.getParameter("dp");
        String fn=req.getParameter("fname");
        String dod=req.getParameter("ddate");
        String cs=req.getParameter("Gender");
        String mname=req.getParameter("pmname");
        String add=req.getParameter("add");
        String dplace=req.getParameter("drp");
        String hname=req.getParameter("dhn");
        String dob=req.getParameter("drdo");
        String page=req.getParameter("drage");
        String dreg=req.getParameter("submit");
        
        out.println(rno);
        out.println(dpn);
        out.println(fn);
        out.println(dod);
        out.println(cs);
        out.println(mname);
        out.println(add);
        out.println(dplace);
        out.println(hname);
        out.println(dob);
        out.println(page);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(dreg.equals("Submit"))
        {
          String insert=db.Insert("insert into death_registration(dname,fname,dod,gender,mname,dadd,dplace,hname,dob,age)values('"+dpn.toString()+"','"+fn.toString()+"','"+dod.toString()+"','"+cs.toString()+"','"+mname.toString()+"','"+add.toString()+"','"+dplace.toString()+"','"+hname.toString()+"','"+dob.toString()+"','"+page.toString()+"')");
          out.println(insert);
          resp.setContentType("text/html;charset=UTF-8");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('Records Inserted');");
          out.println("location='Death_registration.jsp';");
          out.println("</script>");
        }
    }
    
    
}