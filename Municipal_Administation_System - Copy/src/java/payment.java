/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class payment extends HttpServlet {

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String Card_no=req.getParameter("no");
        String month=req.getParameter("mon");
        String year=req.getParameter("saal");
        String type=req.getParameter("cvv");
        String Holder_no=req.getParameter("holder");
        String make_payment=req.getParameter("btn_submit");
        
        out.println(Card_no);
        out.println(month);
        out.println(year);
        out.println(type);
        out.println(Holder_no);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(make_payment.equals("Make Payment"))
        {
            SimpleDateFormat date1=new SimpleDateFormat("YYYY-MM-dd");
            Date date=new Date();
            String date2=date1.format(date);
            
          String insert=db.Insert("insert into payment(card_no,month,year,cvv_cvc,card_holder,date)values('"+Card_no.toString()+"','"+month.toString()+"','"+year.toString()+"','"+type.toString()+"','"+Holder_no.toString()+"','"+date2+"')");
          out.println(insert);
          resp.setContentType("text/html;charset=UTF-8");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('Payment Sccessfully');");
          out.println("location='Navigation_bar.jsp';");
          out.println("</script>");
        }
    }
}
