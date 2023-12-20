<%-- 
    Document   : Water_bill
    Created on : 16 Feb, 2022, 7:21:59 PM
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
        <title>Water Bill</title>
        <link rel="stylesheet" href="bootstrap.css">
        
        <script src="validation.js"></script>
        <style>
            .div1
            {
                width: 90%;
                padding: 20px;
                margin: auto;
                background-color:white;
                border: solid;
            }
            label
            {
                font-family:  "Shivaji01";
                font-size: 45px;
            }
            h1
            {
               font-family:  "Shivaji01"; 
            }
            h2
            {
                font-family: "Shivaji01";
            }
            h4
            {
                font-family:  "Shivaji01";
            }
            h3
            {
                font-family:  "Shivaji01";
            }
            form.example input[type=text] 
            {
            padding: 10px;
            font-size: 27px;
            font-family:  Aparajita;
            border: 1px solid grey;
            float: left;
            width: 64%;
            background: #f1f1f1;
            }
            form.example button {
            float: left;
            width: 36%;
            background: #2196F3;
            color: white;
            font-size: 28px;
            font-family: "Shivaji01";
            border: 1px solid grey;
            border-left: none;
            cursor: pointer;
            position: absolute;
            }
            form.example button:hover 
            {
            background: #0b7dda;
            }
            hr.new2 
            {
            border-top: 1px dashed black;
            }
            .btn
            {
                font-family:  Aparajita;
                font-size: 25px;
            }
            span
            {
                font-family: Aparajita;
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
            String owner="";
            String meter_no="";
            String billdate="";
            String billno="";
            String billfrom="";
            String billto="";
            String prev_reading="";
            String curr_reading="";
            String csmp="";
            String amount="";
            String arrears="";
            String penalty="";
            String t_amount="";
            String category="";
            String type="";
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from water_bill_generation where  cid='"+session.getAttribute("cno") +"' and status='UnPaid'";
            
                ResultSet rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                    
                    billdate=rs.getString("bdate");
                    billno=rs.getString("bno");
                    billfrom=rs.getString("bpform");
                    billto=rs.getString("todate");
                    prev_reading=rs.getString("preading");
                    curr_reading=rs.getString("creading");
                    csmp=rs.getString("csmp");
                    amount=rs.getString("csmp");
                    arrears=rs.getString("aamount");
                    penalty=rs.getString("penalty");
                    t_amount=rs.getString("tamount");
                }
                
                 sql="select * from water_bill_generation where  cid='"+session.getAttribute("cno") +"'";
            
                 rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                    owner=rs.getString("owner");
                    meter_no=rs.getString("meter");
                   
                }
                
                 sql="select * from new_connection where  cno='"+session.getAttribute("cno") +"'";
            
                 rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                    category=rs.getString("cc");
                    type=rs.getString("cs");
                }
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }                    

%>
        <div class="div1">
            <a href="Navigation_bar.jsp" class="btn btn-info" style="float: right">Back</a>
            <div class="row">
                <div class="col-sm-12">
                    <center><label>gaDihMglaja nagarpirYad <span>,</span>paNaIpurvaza ivaBaaga.</label></center>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <center><label><span>Gadhinglaj Municipal Council,water Supply Department.</span></label></center>
                </div>
            </div>
            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <table class="table table-striped table-hover" style="width: 100%">
                    <thead>
                         <tr>
                             <td colspan="2"><center><h1><b>paNaI ibala <span> / Water Bill</span></b></h1></center></td>
            
                         </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><b>naLjaaoDNaI Qaarkacao <span> / Owner Name</span></b></td>
                            <td><b><span><%=owner%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>maITr k`M <span>/ Meter No</span></td>
                            <td><b><span><%=meter_no%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>naLjaaoDNaI p`kar <span> / Connection Category</span></b></td>
                            <td><b><span><%=category%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>naLjaaoDNaI Aakar<span>(</span>ima.ima.<span>) / Connection Size(mm)</span></b></td>
                            <td><b><span><%=type%></span></b></td>
                        </tr>                                          
                    </tbody>
            </table>
                <table class="table table-striped table-bordered table-hover">
                    <tbody>
                        <tr>
                            <td><b>ibala idnaaMk<span> / Bill Date</span></b></td>
                            <td><b>ibala naM <span> / Bill No</span></b></td>
                            <td><b>ibalaacaa kalaavaQaI pasaUna<span> / Billing Period from</span></b></td>
                            <td><b>ibalaacaa kalaavaQaI pya-Mt<span> / Billing Period to</span></b></td>
                            <td><b>maagaIla irDIMga <span> / Prev. Reading</span></b></td>
                            <td><b>caalaU irDIMga <span>/ Cur. Reading</span></b></td>
                            <td><b>vaapr <span> / CSMP</span></b></td>
                            <td><b>r@kma <span> / Amount</span></b></td>
                            <td><b>qakbaakI r@kma<span> / Arrears Amount</span></b></td>
                            <td><b>dMD<span> / Penalty</span></b></td>
                            <td><b>ekUNa r@kma <span> / Total Amount</span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b><span><%=billdate%></span></b></td>
                            <td><b><span><%=billno%></span></b></td>
                            <td><b><span><%=billfrom%></span></b></td>
                            <td><b><span><%=billto%></span></b></td>
                            <td><b><span><%=prev_reading%></span></b></td>
                            <td><b><span><%=curr_reading%></span></b></td>
                            <td><b><span><%=csmp%></span></b></td>
                            <td><b><span><%=amount%></span></b></td>
                            <td><b><span><%=arrears%></span></b></td>
                            <td><b><span><%=penalty%></span></b></td>
                            <td><b><span><%=t_amount%></span></b></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-sm-1"></div>
        </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <h3><b>po Aa^nalaa[-na <span> / Pay Online Payment</span></b></h3>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <form class="example" name="waterbill" action="Water_bill" method="post">
                        <input type="text" placeholder="रक्कम / Enter Amount" value="<%=t_amount%>" name="payb" class="form-control" style="height:47px" onkeypress="javascript:return isFloat(event)">
                        <button type="submit" name="btn" value="Submit"><i><b>po kra <span> / Pay Now</span></b></i></button>
                            </form>
                </div>
                <div class="col-sm-1"></div>
            </div><br>
            <hr class="new2">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <center><h2><b>pomaoMT tpSaIla <span> / Payment History</span></b></h2></center>
                </div>
                <div class="col-sm-4"></div>
            </div><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <table class="table table-striped table-bordered table-hover">
                    <tbody>
                        <tr>
                            <td><b>p`kar <span> / Type</span></b></td>
                            <td><b>ibala idnaaMk <span>/ Bill Date</span></b></td>
                            <td><b>ibala naM <span> / Bill No</span></b></td>
                            <td><b>maagaIla irDIMga <span> / Prev. Reading</span></b></td>
                            <td><b>caalaU irDIMga <span>/ Cur. Reading</span></b></td>
                            <td><b>vaapr <span> / CSMP</span></b></td>
                            <td><b>r@kma <span> / Amount</span></b></td>
                            <td><b>qakbaakI r@kma <span>/ Arrears Amount</span></b></td>
                            <td><b>dMD <span> / Penalty</span></b></td>
                            <td><b>ekUNa r@kma <span> / Total Amount</span></b></td>
                            <td><b>p`t <span> /Reprint</span></b></td>
                        </tr>
                          <%

           
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from water_bill_generation where  cid='"+session.getAttribute("cno") +"' and status='Paid'";
            
                ResultSet rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                   
               
                
                %>
                
                
                
                
            
                        <tr>
                    <form name="waterbill" action="Water_bill_receipt.jsp" method="post">
                        <input type="hidden" name="bid" value="<%=rs.getString("bid")%>">
                            <td><b><span><%=type%></span></b></td>
                            <td><b><span><%=rs.getString("bdate")%></span></b></td>
                            <td><b><span><%=rs.getString("bno")%></span></b></td>
                            <td><b><span><%=rs.getString("preading")%></span></b></td>
                            <td><b><span><%=rs.getString("creading")%></span></b></td>
                            <td><b><span><%=rs.getString("csmp")%></span></b></td>
                            <td><b><span><%=rs.getString("amount")%></span></b></td>
                            <td><b><span><%=rs.getString("aamount")%></span></b></td>
                            <td><b><span><%=rs.getString("penalty")%></span></b></td>
                            <td><b><span><%=rs.getString("tamount")%></span></b></td>
                            <td><span><input type="submit" name="btn" value="Download" class="btn btn-info btn-sm"></span></td>
                            </form>
                        </tr>
                        
                        <%
                         }
                        
                        }catch(Exception ex)
            {
                out.println(ex.toString());
            }                    

%>
                    </tbody>
                </table>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <br>
        </div>
        <br>
    </body>
</html>
