/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
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
public class New_property extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String cid=req.getParameter("cid");
        String oname=req.getParameter("owner");
        String cat=req.getParameter("cow");
        String use=req.getParameter("put");
        String add=req.getParameter("padd");
        String pn=req.getParameter("property");
        String word=req.getParameter("wordno");
        String zone=req.getParameter("zoneno");
        String npb=req.getParameter("btn_submit");
        
        out.println(cid);
        out.println(oname);
        out.println(cat);
        out.println(use);
        out.println(add);
        out.println(pn);
        out.println(word);
        out.println(zone);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(npb.equals("Submit"))
        {
          String insert=db.Insert("insert into new_property(oname,oship,ptype,padd,pno,word,zone)values('"+oname.toString()+"','"+cat.toString()+"','"+use.toString()+"','"+add.toString()+"','"+pn.toString()+"','"+word.toString()+"','"+zone.toString()+"')");
          out.println(insert);
          resp.setContentType("text/html;charset=UTF-8");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('Records Inserted');");
          out.println("location='New_property.jsp';");
          out.println("</script>");
        }
        
        if(npb.equals("Update"))
        {
            String update=db.Update("update new_property set oname='"+oname.toString()+"',oship='"+cat.toString()+"',ptype='"+use.toString()+"',padd='"+add.toString()+"',pno='"+pn.toString()+"',word='"+word.toString()+"',zone='"+zone.toString()+"'where nid='"+cid.toString()+"' ");
            out.println(update);
        }
        
        if(npb.equals("Delete"))
        {
            String delete=db.Delete("delete from new_property where nid='"+cid.toString()+"' ");
            out.println(delete);
        }
        
        if(npb.equals("Search"))
        {
            Connection cn=null;
            Statement st=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=cn.createStatement();
                String sql="select * from new_property where nid='"+cid.toString()+"'";
                
                ResultSet rs=st.executeQuery(sql);
                
                while(rs.next())
                {
                    req.setAttribute("oname", rs.getString("oname"));
                    req.setAttribute("category", rs.getString("oship"));
                    req.setAttribute("type", rs.getString("ptype"));
                    req.setAttribute("address", rs.getString("padd"));
                    req.setAttribute("property", rs.getString("pno"));
                    req.setAttribute("word", rs.getString("word"));
                    req.setAttribute("zone", rs.getString("zone"));
                    
                    req.getRequestDispatcher("New_property.jsp").forward(req, resp);
                }
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
    } 
}
