 <%-- 
    Document   : Property_bill_receipt
    Created on : 2 Mar, 2022, 3:28:22 PM
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
        <title>Property Tax Receipt Page</title>
        <link rel="stylesheet" href="bootstrap.css">
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
                font-size: 50px;
            }
            h1
            {
                font-family:  "Shivaji01";
                font-size: 45px;
            }
            h3
            {
                font-family:  "Shivaji01";
            }
            .btn
            {
                font-size: 25px;
                font-family: Arial Black;
                
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
            String transaction_no="";
            String p_date="";
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from property_tax_generation where  cid='"+session.getAttribute("cno") +"' and bno='"+request.getParameter("prop_amount3")+"'";
            
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
                
                 sql="select * from new_property where  nid='"+session.getAttribute("cno") +"' ";
            
                 rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                    owner=rs.getString("oname");
                    address=rs.getString("padd");
                    property_no=rs.getString("pno");
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
                    <center><label>गडहिंग्लज नगरपरिषद<span>,</span> महसूल विभाग.</label><br>
                        <label><span>Gadhinglaj Municipal Council, Revenue Department.</span></label></center>
                </div>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10">
                    <table class="table table-striped table-hover">
                    <thead>
                         <tr>
                             <td colspan="2"><center><h1><b>pavatI </b><span> / Receipt</span></h1></center></td>
                         </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><b>ga`ahk AayaDI <span> / Consumer ID</span></b></td>
                            <td><b><span><%=session.getAttribute("cno")%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>pavatI naM <span> / Receipt No</span></b></td>
                            <td><b><span><%=request.getParameter("prop_amount3")%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>maalama%%aa Qaarkacao naava <span> / Owner Name</span></b></td>
                            <td><b><span><%=owner%></span></b></td>
                        </tr>
                        
                        <tr>
                            <td><b>maalama%%aa k`M.va Pa%%aa <span> / Property No And Address</b></td>
                            <td><b><span><%=property_no%> / <%=address%></span></b></td>
                        </tr>                                          
                    </tbody>
                    </table>
                        <table class="table table-striped table-hover table-bordered">
                    <th colspan="4">
                    <h3><b>doyak p`kar <span> / Payment Mode</span></b></h3>
                    </th>
                    <tbody>
                        <tr>
                            <td><span><b>Mode</b></span></td>
                            <td><span><b>Online Transaction No</b></span></td>
                            <td><b>tarIK <span> / Date</b></span></td>
                        </tr>
                        <tr>
                            <td><b><span>Online transaction</span></b></td>
                            <td><b><span><%=transaction_no%></span></b></td>
                            <td><b><span><%=p_date%></span></b></td>
                        </tr>
                    </tbody>
                        </table>
                        <table class="table table-striped table-hover table-bordered">
                            <th colspan="6">
                            <h3><b>pomaoMT tpSaIla <span> / Payment Details</span></b></h3>
                    </th>
                    <tbody>
                        <tr>
                            <td><b>ibala idnaaMk<span>/ Bill Date</span></b></td>
                            <td><b>ibalaacaa tpSaIla <span>/ Bill Details</span></b></td>
                            <td><b>caalaU r@kma<span>/ Current Amount</span></b></td>
                            <td><b>maagaIla r@kma<span>/ Arrears Amount</span></b></td>
                            <td><b>dMD<span>/ Penalty </span></b></td>
                            <td><b>ekUNa <span>/ Total</span></b></td>
                        </tr>
                        <tr>
                            <td rowspan="4"><b><span><%=request.getParameter("prop_amount2")%></span></b></td>
                            <td><b>iSaxaNa kr <span> / Eduction Tax : <%=e_tax%> <input type="hidden" id="etax" value="<%=e_tax%>"> </span></b></td>
                            <td rowspan="4"><b><span><%=c_amount%></span></b></td>
                            <td rowspan="4"><b><span><%=arrears_a%></span></b></td>
                            <td rowspan="4"><b><span><%=penalty%></span></b></td>
                            <td rowspan="4"><b><span><%=request.getParameter("prop_amount1")%></span></b></td>
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
                            <td><b>ekUNa <span>/ Total</span></b></td>
                            <td><b> <span><p id="total"></p></span></b></td>
                            <td><b><span><%=c_amount%></span></b></td>
                            <td><b><span><%=arrears_a%></span></b></td>
                            <td><b><span><%=penalty%></span></b></td>
                            <td><b><span><%=request.getParameter("prop_amount1")%></span></b></td>
                        </tr>
                        <tr>
                            <td colspan="5"><b>ekUNa doya r@kma <span> / Total Paid Amount </span></b></td>
                            <td><b><span><%=request.getParameter("prop_amount1")%></span></b></td>
                        </tr>
                    </tbody>
            </table>
                    </div>
                    <div class="col-sm-1"></div>
                </div>
            </div><br>
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <center><input class="btn btn-success active" value="Download"></center>
                </div>
                <div class="col-sm-4"></div>
            </div>
            <br>
        </div>
        <br><script>sum()</script>
    </body>
</html>
