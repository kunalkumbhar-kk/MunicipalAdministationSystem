<%-- 
    Document   : Property_tax
    Created on : 2 Mar, 2022, 1:18:04 PM
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
        <title>Property Tax Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <script>
            function sum() {
            var txtFirstNumberValue = document.getElementById('etax').value;
            var txtSecondNumberValue = document.getElementById('gtax').value;
            var txtThirdNumberValue = document.getElementById('swtax').value;
            var txtFourthNumberValue = document.getElementById('mitax').value;
            var result = parseInt(txtFirstNumberValue) + parseInt(txtSecondNumberValue) + parseInt(txtThirdNumberValue)+ parseInt(txtFourthNumberValue);
            if (!isNaN(result)) {
                document.getElementById("total").innerHTML=result;
                
                }
            }
        </script>
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
            h4
            {
                font-family:  "Shivaji01";
            }
            h3
            {
                font-family:  "Shivaji01";
            }
            h2
            {
                font-family: "Shivaji01";
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
            String catagory="";
            String use_type="";
            String address="";
            String property_no="";
            String word="";
            String zone="";
            String bill_no="";
            String bill_date="";
            String e_tax="";
            String genral_tax="";
            String sw_tax="";
            String m_intrest="";
            String c_amount="";
            String arrears_a="";
            String penalty="";
            String t_amount="";
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from property_tax_generation where  cid='"+session.getAttribute("cno") +"' and status='UnPaid'";
            
                ResultSet rs=st.executeQuery(sql);
            
                while(rs.next())
                {                   
                    bill_no=rs.getString("bno");
                    bill_date=rs.getString("bdate");
                    e_tax=rs.getString("etax");
                    genral_tax=rs.getString("gtax");
                    sw_tax=rs.getString("swtax");
                    m_intrest=rs.getString("mitax");
                    c_amount=rs.getString("camount");
                    arrears_a=rs.getString("aamount");
                    penalty=rs.getString("ptax");
                    t_amount=rs.getString("tamount");
                }
                
                 sql="select * from new_property where  nid='"+session.getAttribute("cno") +"'";
            
                 rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                    owner=rs.getString("oname");
                    catagory=rs.getString("oship");
                    use_type=rs.getString("ptype");
                    address=rs.getString("padd");
                    property_no=rs.getString("pno");
                    word=rs.getString("word");
                    zone=rs.getString("zone");
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
                    <center><label>gaDihMglaja nagarpirYad<span>,</span> mahsaUla ivaBaaga.</label></center>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                <center><label><span>Gadhinglaj Municipal Council, Revenue Department.</span></label></center>
                </div>
            </div>
            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <table class="table table-striped table-hover">
                    <thead>
                         <tr>
                             <td colspan="2"><center><h1><b>maalama%%aa kr <span> / Porperty Tax</span></b></h1></center></td>
                         </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><b>maalama%%aa Qaarkacao naava <span> / Owner Name</span></b></td>
                            <td><b><span><%=owner%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>maalama%%aocaI EaoNaI <span> / Category of ownership</span></b></td>
                            <td><b><span><%=catagory%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>vaapracaa p`kar <span> / Property use type</span></b></td>
                            <td><b><span><%=use_type%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>maalama%%aocaa Pa%%aa <span> / Property Address</span></b></td>
                            <td><b><span><%=address%></span></b></td>
                        </tr>  
                        <tr>
                            <td><b>maalama%%aa k`M.<span> / Property no</span></b></td>
                            <td><b><span><%=property_no%></span></b></td>
                        </tr>
                        <tr>
                            <td><b>vaaD-<span> / Ward</span></b></td>
                            <td><b><span><%=word%></span></b></td>
                        </tr>
                        <tr>
                            <td><b>Jaaona<span>/ zone</span></b></td>
                            <td><b><span><%=zone%></span></b></td>
                        </tr>
                    </tbody>
            </table>
                <table class="table table-striped table-bordered table-hover">
                    <tbody>
                        <tr>
                            <td><b>ibala naM <span>/ Bill No</span></b></td>
                            <td><b>ibala idnaaMk<span>/ Bill Date</span></b></td>
                            <td><b>ibalaacaa tpSaIla <span>/ Bill Details</span></b></td>
                            <td><b>caalaU r@kma<span>/ Current Amount</span></b></td>
                            <td><b>maagaIla r@kma<span>/ Arrears Amount</span></b></td>
                            <td><b>dMD<span>/ Penalty </span></b></td>
                            <td><b>ekUNa <span>/ Total</span></b></td>
                        </tr>
                        <tr>
                            <td rowspan="4"><b><span><%=bill_no%></span></b></td>
                            <td rowspan="4"><b><span><%=bill_date%></span></b></td>
                            <td><b>iSaxaNa kr <span> / Eduction Tax : <%=e_tax%> <input type="hidden" id="etax" value="<%=e_tax%>"> </span></b></td>
                            <td rowspan="4"><b><span><%=c_amount%></span></b></td>
                            <td rowspan="4"><b><span><%=arrears_a%></span></b></td>
                            <td rowspan="4"><b><span><%=penalty%></span></b></td>
                            <td rowspan="4"><b><span><%=t_amount%></span></b></td>
                        </tr>
                        <tr>
                            <td><b>[tr kr <span> / General Tax : <%=genral_tax%> <input type="hidden" id="gtax" value="<%=genral_tax%>"> </span></b></td>
                        </tr>
                        <tr>
                            <td><b>Ganakcara kcara kr <span> / Solid Waste Collection Tax : <%=sw_tax%> <input type="hidden" id="swtax" value="<%=sw_tax%>"> </span></b></td>
                        </tr>
                        <tr>
                            <td><b>myauinasaIpla vyaaja <span>/ Municipal Interest : <%=m_intrest%> <input type="hidden" id="mitax" value="<%=m_intrest%>"> </span></b></td>
                        </tr>
                        <tr>
                            <td colspan="2"><b>ekUNa <span>/ Total</span></b></td>
                            <td><b> <span><p id="total"></p></span></b></td>
                            <td><b><span><%=c_amount%></span></b></td>
                            <td><b><span><%=arrears_a%></span></b></td>
                            <td><b><span><%=penalty%></span></b></td>
                            <td><b><span><%=t_amount%></span></b></td>
                        </tr>
                        <tr>
                            <td colspan="6"><b>ekUNa doyak r@kma <span> / Total Payable Amount </span></b></td>
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
                    <h3>पे ऑनलाईन <span> / Pay Online Payment<span></h3>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <form class="example" name="propertytax" action="Property_tax" method="post">
                        <input type="text" placeholder="रक्कम / Enter amount" value="<%=t_amount%>" name="pn" class="form-control" style="height:47px" onkeypress="javascript:return isFloat(event)">
                        <button type="submit" value="btn_submit" name="submit"><i><b>po kra<span> / Pay Now</span></b></i></button>
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
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <table class="table table-striped table-bordered table-hover">
                    <tbody>
                        <tr>
                            <td><b>ibala naM <span> / Bill No</span></b></td>
                            <td><b>ibala idnaaMk<span>/ Bill Date</span></b></td>
                            <td><b>ekUNa r@kma <span>/ Total Amount</span></b></td>
                            <td><b>p`t <span> /Reprint</span></b></td>
                        </tr>
                        
                        <%

           
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from property_tax_generation where  cid='"+session.getAttribute("cno") +"' and status='Paid'";
            
                ResultSet rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                   
               
                
                %>
                 <form name="waterbill" action="Property_bill_receipt.jsp" method="post">
                        <tr>
                           
                            <input type="hidden" name="prop_amount1" value="<%=rs.getString("tamount")%>">
                            <input type="hidden" name="prop_amount2" value="<%=rs.getString("bdate")%>">
                            <input type="hidden" name="prop_amount3" value="<%=rs.getString("bno")%>">
                            <td><b><span><%=rs.getString("bno")%></span></b></td>
                            <td><b><span><%=rs.getString("bdate")%></span></b></td>
                            <td><b><span><%=rs.getString("tamount")%></span></b></td>
                            <td><span><input type="submit" name="btn" value="Download" class="btn btn-info btn-sm"></span></td>
                           
                        </tr>
                         </form>
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
        </div><script>sum()</script>
    </body>
</html>
