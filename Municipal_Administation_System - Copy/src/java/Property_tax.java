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
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class Property_tax extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String pay=req.getParameter("pn");
        String pbtn=req.getParameter("submit");
        
        out.println(pay);
        HttpSession session=req.getSession();
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(pbtn.equals("btn_submit"));
        {
          String insert=db.Insert("update property_tax_generation set status='Paid' where cid='"+session.getAttribute("cno")+"'");
          out.println(insert);
          session.setAttribute("pay_amount", pay);
          resp.sendRedirect("payment.jsp");
        }
        
    }
}
