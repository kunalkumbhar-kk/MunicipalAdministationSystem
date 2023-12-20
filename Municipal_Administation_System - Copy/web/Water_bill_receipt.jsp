<%-- 
    Document   : Water_bill_receipt
    Created on : 16 Feb, 2022, 1:43:26 PM
    Author     : DELL
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Receipt Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <style>
            .div1
            {
                width: 70%;
                padding: 20px;
                margin: auto;
                margin-top: 40px;
                background: ghostwhite;
                border: double;
            }
            label
            {
                font-family:  "Shivaji01";
                font-size: 50px;
            }
            h1
            {
                font-family:  "Shivaji01";
                font-size: 45px;
            }
            .btn
            {
                font-family: Arial Black;
                font-size: 25px;
                
            }
            span
            {
                font-family: "Aparajita";
            }
            td
            {
                font-family: "Shivaji01";
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <%
            Connection cn=null;
            Statement st=null;
            String billno="";
            String t_amount="";
            String transaction_no="";
            String p_date="";
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from water_bill_generation where  cid='"+session.getAttribute("cno")+"' and bid='"+request.getParameter("bid") +"'";

                ResultSet rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                    
                    billno=rs.getString("bno");
                    t_amount=rs.getString("tamount");
                }
                
                 sql="select * from payment where  payid='"+session.getAttribute("cno") +"'";
            
                 rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                    transaction_no=rs.getString("payid");
                    p_date=rs.getString("date");
                   
                }
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }                    
                
%>
        <div class="div1">
            <div class="row">
                <div class="col-sm-12">
                    <center><label>gaDihMglaja nagarpirYad<span>,</span> paNaIpurvaza ivaBaaga.</label>
                        <label><span>Gadhinglaj Municipal Council,water Supply Department</span></label>
                        <h1>पावती <span> / Receipt</span></h1></center>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <table class="table table-bordered table-hover">
                        <tbody>
                        <tr>
                            <td><b>ga`ahk AayaDI <span> / Consumer ID</span></b></td>
                            <td><b><span><%=session.getAttribute("cno")%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>pavatI naM <span> / Bill No</span></b></td>
                            <td><b><span><%=billno%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b> vyaavahar k`M <span> / Transaction No</span></b></td>
                            <td><b><span><%=transaction_no%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>tarIK <span> / Date </span></b></td>
                            <td><b><span><%=p_date%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>vyaavahar r@kma  <span> / Transaction Ammount</span></b></td>
                            <td><b><span><%=t_amount%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>doyak p`kar  <span> / Mode of payment</span></b></td>
                            <td><b><span>Online transaction</span></b></td>
                        </tr>
                        
                    </tbody>
                    </table>
                </div>
                <div class="col-sm-1"></div>
            </div>
            
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input class="btn btn-success btn-block active" value="Download">
                </div>
                <div class="col-sm-4"></div>
            </div>
            
            <br>
        </div>
        <br>
    </body>
</html>
