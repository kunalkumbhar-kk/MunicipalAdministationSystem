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
public class Water_bill extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String wpay=req.getParameter("payb");
        String wbill=req.getParameter("submit");
        
        out.println(wpay);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        HttpSession session=req.getSession();
        
        if(wpay.equals("Submit"));
        {
          String insert=db.Insert("update water_bill_generation set status='Paid' where cid='"+session.getAttribute("cno") +"'");
          out.println(insert);
          session.setAttribute("pay_amount", wpay);
          resp.sendRedirect("payment.jsp");
         
        }
        
//        if(wbill.equals("download"));
//        {
//          resp.sendRedirect("Water_bill_receipt.jsp");
//        }
    }
}