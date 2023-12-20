/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class New_connection extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        
        String conid=req.getParameter("cid");
        String meter=req.getParameter("no");
        String oname=req.getParameter("owner");
        String cat=req.getParameter("conc");
        String csize=req.getParameter("conn");
        String nconn=req.getParameter("submit");
        
        out.println(conid);
        out.println(meter);
        out.println(oname);
        out.println(cat);
        out.println(csize);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(nconn.equals("Submit"))
        {
          String insert=db.Insert("insert into new_connection(mno,oname,cc,cs,cno)values('"+meter.toString()+"','"+oname.toString()+"','"+cat.toString()+"','"+csize.toString()+"','"+conid+"')");
          out.println(insert);
          resp.setContentType("text/html;charset=UTF-8");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('Records Inserted');");
          out.println("location='New_connection.jsp';");
          out.println("</script>");
        }
        
        if(nconn.equals("Update"))
        {
            String update=db.Update("update new_connection set mno='"+meter.toString()+"',oname='"+oname.toString()+"',cc='"+cat.toString()+"',cs='"+csize.toString()+"'where nid='"+conid.toString()+"' ");
            out.println(update);
        }
        
        if(nconn.equals("Search"))
        {
            Connection cn=null;
            Statement st=null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
             
                String sql="select * from new_connection where nid='"+conid.toString()+"'";
                
                ResultSet rs=st.executeQuery(sql);
                
                while(rs.next())
                {
                    req.setAttribute("meterno", rs.getString("mno"));
                    req.setAttribute("wname", rs.getString("oname"));
                    req.setAttribute("ccat", rs.getString("cc"));
                    req.setAttribute("csize", rs.getString("cs"));
                    
                    req.getRequestDispatcher("New_connection.jsp").forward(req, resp);
                }
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }
        }
    }
    
    
}