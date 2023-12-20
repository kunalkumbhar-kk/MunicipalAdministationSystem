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
public class New_birth extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String rno=req.getParameter("regno");
        String dob=req.getParameter("cdob");
        String gen=req.getParameter("Gender");
        String cname=req.getParameter("cn");
        String fname=req.getParameter("fn");
        String mname=req.getParameter("mn");
        String add=req.getParameter("nadd");
        String bplace=req.getParameter("nbp");
        String hname=req.getParameter("nhname");
        String nb=req.getParameter("btn_submit");
        
        out.println(rno);
        out.println(dob);
        out.println(gen);
        out.println(cname);
        out.println(fname);
        out.println(mname);
        out.println(add);
        out.println(bplace);
        out.println(hname);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(nb.equals("Submit"))
        {
          String insert=db.Insert("insert into birth_registration(dob,cs,cname,fname,mname,badd,bplace,hname)values('"+dob.toString()+"','"+gen.toString()+"','"+cname.toString()+"','"+fname.toString()+"','"+mname.toString()+"','"+add.toString()+"','"+bplace.toString()+"','"+hname.toString()+"')");
          out.println(insert);
          resp.setContentType("text/html;charset=UTF-8");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('Records Inserted');");
          out.println("location='New_birth.jsp';");
          out.println("</script>");
        }
        
    }
    
    
}