/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

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
public class Pt_bill_generation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String idc=req.getParameter("cid");
        String oname=req.getParameter("owner");
        String nop=req.getParameter("pno");
        String  bno=req.getParameter("bill");
        String bdate=req.getParameter("date");
        String etax=req.getParameter("edtax");
        String gtax=req.getParameter("gntax");
        String swct=req.getParameter("swctax");
        String mi=req.getParameter("mit");
        String pen=req.getParameter("ptax");
        String aamnt=req.getParameter("arre");
        String camnt=req.getParameter("curr");
        String tamnt=req.getParameter("tamt");
        String pbgbtn=req.getParameter("btn_submit");
        
        out.println(idc);
        out.println(oname);
        out.println(nop);
        out.println(bno);
        out.println(bdate);
        out.println(etax);
        out.println(gtax);
        out.println(swct);
        out.println(mi);
        out.println(pen);
        out.println(aamnt);
        out.println(camnt);
        out.println(tamnt);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(pbgbtn.equals("Generate Bill"))
        {
          String insert=db.Insert("insert into property_tax_generation(cid,owner,pno,bno,bdate,etax,gtax,swtax,mitax,ptax,aamount,camount,tamount,status)values('"+idc.toString()+"','"+oname.toString()+"','"+nop.toString()+"','"+bno.toString()+"','"+bdate.toString()+"','"+etax.toString()+"','"+gtax.toString()+"','"+swct.toString()+"','"+mi.toString()+"','"+pen.toString()+"','"+aamnt.toString()+"','"+camnt.toString()+"','"+tamnt.toString()+"','UnPaid')");
          out.println(insert);
          resp.setContentType("text/html;charset=UTF-8");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('Records Inserted');");
          out.println("location='Pt_bill_generation.jsp';");
          out.println("</script>");
        }
        
        if(pbgbtn.equals("Delete"))
        {
            String delete=db.Delete("delete from property_tax_generation where cid='"+idc.toString()+"' ");
            out.println(delete);
        }
        
        if(pbgbtn.equals("Search"))
        {
            Connection cn=null;
            Statement st=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=cn.createStatement();
                String sql="select * from property_tax_generation where pid='"+idc.toString()+"'";
                
                
                ResultSet rs=st.executeQuery(sql);
                
                while(rs.next())
                {
                    req.setAttribute("ownername", rs.getString("owner"));
                    req.setAttribute("propertyno", rs.getString("pno"));
                    req.setAttribute("billno", rs.getString("bno"));
                    req.setAttribute("billdate", rs.getString("bdate"));
                    req.setAttribute("educationtax", rs.getString("etax"));
                    req.setAttribute("Gtax", rs.getString("gtax"));
                    req.setAttribute("solidwaste", rs.getString("swtax"));
                    req.setAttribute("minterest", rs.getString("mitax"));
                    req.setAttribute("penalty", rs.getString("ptax"));
                    req.setAttribute("arrears", rs.getString("aamount"));
                    req.setAttribute("current", rs.getString("camount"));
                    req.setAttribute("total", rs.getString("tamount"));
                    
                    req.getRequestDispatcher("Pt_bill_generation.jsp").forward(req, resp);
                }
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
        
        if(pbgbtn.equals("Find"))
        {
            Connection cn=null;
            Statement st=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from new_property where nid='"+idc.toString()+"'";
            
                ResultSet rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                    req.setAttribute("cid", idc);
                    req.setAttribute("owner", rs.getString("oname"));
                    req.setAttribute("pno", rs.getString("pno"));
                
                    req.getRequestDispatcher("Pt_bill_generation.jsp").forward(req, resp);
                }
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
    }
}