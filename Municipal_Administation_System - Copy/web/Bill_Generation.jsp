<%-- 
    Document   : Bill_Generation
    Created on : 27 Feb, 2022, 8:11:24 PM
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
        <title>Water Bill Generation Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <%@include file="dashboard.jsp" %>
        <script>
            function sum() {
            var txtFirstNumberValue = document.getElementById('amount').value;
            var txtSecondNumberValue = document.getElementById('arrears').value;
            var txtThirdNumberValue = document.getElementById('penalty').value;
            var result = parseInt(txtFirstNumberValue) + parseInt(txtSecondNumberValue) + parseInt(txtThirdNumberValue);
            if (!isNaN(result)) {document.getElementById('total').value = result;
                }
}
function sub() {
            var txtFirstNumberValue = document.getElementById('preadings').value;
            var txtSecondNumberValue = document.getElementById('creadings').value;
            var result = parseInt(txtSecondNumberValue) - parseInt(txtFirstNumberValue);
            if (!isNaN(result)) {document.getElementById('use').value = result;
      }
}
        </script>
        <style>
            .div1
            {
                width: 90%;
                padding: 20px;
                margin: auto;
                margin-top: 30px;
                background-color:white;
                border: solid;
            }
            label
            {
                font-family:  "Shivaji01";
                font-size: 40px;
            }
            h1
            {
               font-family:  "Shivaji01"; 
            }
            .form-control
            {
                height: 40px;
                margin: 6px 0px;
            }
            h3
            {
               font-family:  "Shivaji01"; 
            }
            .btn
            {
                height: 45px;
                font-size: 24px;
                font-family: Arial Black;
            }
            span
            {
                font-family: Aparajita;
            }
        </style>
        <script>
            function clear()
            {
                //document.getElementById("ownername").value="";
                //document.getElementById("cid").value="";
                //document.getElementById("billno").value="";
                document.getElementById("preadings").value="";
                document.getElementById("creadings").value="";
                document.getElementById("use").value="";
                document.getElementById("amount").value="";
                document.getElementById("arrears").value="";
                document.getElementById("penalty").value="";
                document.getElementById("total").value="";
            }
        </script>
    </head>
    <body>
        <form name="billgenration" action="Bill_Generation" method="post">
        <div class="div1">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <td colspan="2"><center><h1><b>paNaI ibala<span> / Water Bill</span></b></h1></center></td>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><h3><b>ga`ahk AayaDI<span> / Consumer ID</span></span></h3></td>
                            <td><input type="text" class="form-control" name="cid" id="cid" value="<%=request.getAttribute("cid")%>" onkeypress="javascript:return isNumber(event)"><input type="submit" value="Find" name="submit"></td>
                        </tr>
                        
                        <tr>
                            <td><h3><b>naLjaaoDNaI Qaarkacao naava<span> / Owner Name</b></span></h3></td>
                            <td><input type="text" class="form-control" name="wname" id="ownername" value="<%=request.getAttribute("wname")%>" onkeypress="javascript:return isString(event)"></td>
                        </tr>
                        
                        <tr>
                            <td><h3><b>maITr k<span> / Meter No</b></span></h3></td>
                            <td><input type="text" class="form-control" name="mno" id="metername" value="<%=request.getAttribute("mno")%>" onkeypress="javascript:return isAlphanumric(event)"></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>ibala idnaaMk<span> / Bill Date :</b></span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="date" class="form-control" name="bgdate" value="<%=request.getAttribute("bgdate")%>">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>ibala naM <span> / Bill No :</b></span></h3></center>
                </div>
                <div class="col-sm-2">
                    <%
Connection cn=null;
            Statement st=null;
            int id=1;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
                st=(Statement) cn.createStatement();
                String sql="select * from water_bill_generation ";
            
                ResultSet rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                    id=Integer.parseInt(rs.getString("bid"))+1;
                }
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }                    

%>
<input type="text" class="form-control" name="bgno" id="billno" value="SN<%=id%>" onkeypress="javascript:return isAlphanumric(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>ibalaacaa kalaavaQaI<span> / Billing Period :</b></span></h3></center>
                </div>
                <div class="col-sm-1">
                    <h3><b>pasaUna<span> / From Date :</b></span></h3>
                </div>
                <div class="col-sm-2">
                    <input type="date" name="bgfdate" value="<%=request.getAttribute("bgfdate")%>" class="form-control">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-1">
                    <h3><b>pya-Mt<span> / To Date :</b></span></h3>
                </div>
                <div class="col-sm-2">
                    <input type="date" name="bgtdate" value="<%=request.getAttribute("bgtdate")%>" class="form-control">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>maagaIla irDIMga<span> / Prev. Reading :</b></span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="bgmread" id="preadings" value="<%=request.getAttribute("bgmread")%>" onkeyup="sub()" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>caalaU irDIMga<span> / Cur. Reading:</b></span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="bgcread" id="creadings" value="<%=request.getAttribute("bgcread")%>" onkeyup="sub()" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>vaapr<span> / CSMP :</b></span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="bgcsmp" id="use" value="<%=request.getAttribute("bgcsmp")%>" onkeyup="sub()" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>r@kma<span> / Amount :</b></span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="bgamount" id="amount" value="<%=request.getAttribute("bgamount")%>" onkeyup="sum()" onkeypress="javascript:return isFloat(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>qakbaakI r@kma<span> / Arrears Amount :</b></span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="bgaa" id="arrears" value="<%=request.getAttribute("bgaa")%>" onkeyup="sum()" onkeypress="javascript:return isFloat(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>dMD<span> / Penalty :</b></span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="bgp" id="penalty" value="<%=request.getAttribute("bgp")%>" onkeyup="sum()" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>ekUNa r@kma<span> / Total Amount :</b></span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="bgta" id="total" value="<%=request.getAttribute("bgta")%>" onkeyup="sum()" onkeypress="javascript:return isFloat(event)">
                </div>
                <div class="col-sm-7"></div>
            </div><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-2">
                    <center><input type="submit" class="btn btn-primary active" name="submit" value="Generate Bill"></center>
                </div>
                <div class="col-sm-4">
                    <center><input type="submit" class="btn btn-warning active" name="submit" value="Delete"></center>
                </div>
                <div class="col-sm-2">
                    <center><input type="submit" class="btn btn-info active" name="submit" value="Search"></center>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <br>
        </div>
        <br>
<%
if(request.getAttribute("bgta")==null)
{
%>
<script>
    clear();
</script>
<%
}
%>
        </form>
    </body>
</html>
