/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.awt.Event;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class Bill_Generation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
        PrintWriter out=resp.getWriter();
        
        String bid=req.getParameter("cid");
        String owner=req.getParameter("wname");
        String meter=req.getParameter("mno");
        String billdate=req.getParameter("bgdate");
        String billno=req.getParameter("bgno");
        String fdate=req.getParameter("bgfdate");
        String todate=req.getParameter("bgtdate");
        String preading=req.getParameter("bgmread");
        String creading=req.getParameter("bgcread");
        String csmp=req.getParameter("bgcsmp");
        String amount=req.getParameter("bgamount");
        String aamount=req.getParameter("bgaa");
        String penalty=req.getParameter("bgp");
        String tamount=req.getParameter("bgta");
        String bg=req.getParameter("submit");
       
        out.println(bid);
        out.println(owner);
        out.println(meter);
        out.println(billdate);
        out.println(billno);
        out.println(fdate);
        out.println(todate);
        out.println(preading);
        out.println(creading);
        out.println(csmp);
        out.println(amount);
        out.println(aamount);
        out.println(penalty);
        out.println(tamount);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(bg.equals("Generate Bill"))
        {
          String insert=db.Insert("insert into water_bill_generation(cid,owner,meter,bdate,bno,bpform,todate,preading,creading,csmp,amount,aamount,penalty,tamount,status)values('"+bid.toString()+"','"+owner.toString()+"','"+meter.toString()+"','"+billdate.toString()+"','"+billno.toString()+"','"+fdate.toString()+"','"+todate.toString()+"','"+preading.toString()+"','"+creading.toString()+"','"+csmp.toString()+"','"+amount.toString()+"','"+aamount.toString()+"','"+penalty.toString()+"','"+tamount.toString()+"','UnPaid')");
          out.println(insert);
//          resp.setContentType("text/html;charset=UTF-8");
//          out.println("<script type=\"text/javascript\">");
//          out.println("alert('Records Inserted');");
//          out.println("location='Bill_Generation.jsp';");
//          out.println("</script>");
        }
        
        if(bg.equals("Delete"))
        {
          String delete=db.Delete("delete from water_bill_generation where meter='"+bid.toString()+"'");
          out.println(delete);
        }
        
        if(bg.equals("Search"))
        {
            Connection cn=null;
            Statement st=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from water_bill_generation where bid='"+bid.toString()+"'";
            
                ResultSet rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                    req.setAttribute("mno", rs.getString("meter"));
                    req.setAttribute("wname", rs.getString("owner"));
                    req.setAttribute("bgdate", rs.getString("bdate"));
                    req.setAttribute("bgno", rs.getString("bno"));
                    req.setAttribute("bgfdate", rs.getString("bpform"));
                    req.setAttribute("bgtdate", rs.getString("todate"));
                    req.setAttribute("bgmread", rs.getString("preading"));
                    req.setAttribute("bgcread", rs.getString("creading"));
                    req.setAttribute("bgcsmp", rs.getString("csmp"));
                    req.setAttribute("bgamount", rs.getString("amount"));
                    req.setAttribute("bgaa", rs.getString("aamount"));
                    req.setAttribute("bgp", rs.getString("penalty"));
                    req.setAttribute("bgta", rs.getString("tamount"));
                
                    req.getRequestDispatcher("Bill_Generation.jsp").forward(req, resp);
                }
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
        
        if(bg.equals("Find"))
        {
            Connection cn=null;
            Statement st=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from new_connection where nid='"+bid.toString()+"'";
            
                ResultSet rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                    req.setAttribute("cid", bid);
                    req.setAttribute("wname", rs.getString("oname"));
                    req.setAttribute("mno", rs.getString("mno"));
                
                    req.getRequestDispatcher("Bill_Generation.jsp").forward(req, resp);
                }
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
            
    }
}