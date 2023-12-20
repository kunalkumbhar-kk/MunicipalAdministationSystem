<%-- 
    Document   : payment
    Created on : 14 May, 2022, 7:47:32 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style>
            .div1
            {
                width: 50%;
                padding: 20px;
                margin: auto;
                margin-top: 40px;
                background: ghostwhite;
                border: double;
            }
            label
            {
                font-family:  Aparajita;
                font-size: 50px;
            }
            h1
            {
                font-family:  Aparajita;
                font-size: 45px;
            }
            .btn
            {
                font-family: Arial Black;               
            }
        </style>
    </head>
    <body>
        <%
            Connection cn=null;
            Statement st=null;
            String t_amount="";
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from property_tax_generation where  pid='"+session.getAttribute("cno")+"'";
            
                ResultSet rs=st.executeQuery(sql);
            
                while(rs.next())
                {                   
                    t_amount=rs.getString("tamount");
                }
                
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }                    

%>
        <form name="payment" action="payment"method="post">
        <div class="div1">
            <div class="row">
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <td colspan="2"><center><b>Payment Amount Rs. : <%=session.getAttribute("pay_amount")%> </b></center></td>
                            
                        </tr>
                        
                        <tr>
                            <td>Enter Card No</td>
                            <td><input type="text" class="form-control" name="no" onkeypress="javascript:return isNumber(event)"></td>
                        </tr>
                        
                        <tr>
                            <td>Month</td>
                            <td><input type="text" class="form-control" name="mon" onkeypress="javascript:return isNumber(event)"></td>
                        </tr>
                        
                        <tr>
                            <td>Year</td>
                            <td><input type="text" class="form-control" name="saal" onkeypress="javascript:return isNumber(event)"></td>
                        </tr>
                        
                        <tr>
                            <td>CVV/CVC</td>
                            <td><select class="form-control" id="" name="cvv">
                                 <option>Select</option>
                                 <option>CVV</option>
                                 <option>CVC</option>
                            </select></td>
                        </tr>
                        
                        <tr>
                            <td>Card Holder</td>
                            <td><input type="text" class="form-control" name="holder" onkeypress="javascript:return isString(event)"></td></td>
                        </tr>
                        
                    </tbody>
                    </table>
                </div>
                <div class="col-sm-1"></div>
            </div>
            
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <input type="submit" class="btn btn-success btn-block active" name="btn_submit" value="Make Payment">
                </div>
                <div class="col-sm-4"></div>
            </div>
            
            <br>
        </div>
        <br>
        </form>
    </body>
</html>
