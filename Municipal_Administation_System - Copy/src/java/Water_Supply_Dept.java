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
public class Water_Supply_Dept extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         
        PrintWriter out=resp.getWriter();
        
        String conid=req.getParameter("cid");
        String wsd=req.getParameter("btn_submit");
        
        out.println(conid);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
        if(wsd.equals("Search"));
        {
          String insert=db.Insert("");
        }
    }
    
    
}
