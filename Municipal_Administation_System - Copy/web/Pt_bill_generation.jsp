<%-- 
    Document   : Pt_bill_generation
    Created on : 2 Mar, 2022, 7:21:25 PM
    Author     : DELL
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Property Tax Bill Generation Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <%@include file="dashboard.jsp" %>
        <script>
            function sum() {
            var txtFirstNumberValue = document.getElementById('education').value;
            var txtSecondNumberValue = document.getElementById('gtax').value;
            var txtThirdNumberValue = document.getElementById('swtax').value;
            var txtFourthNumberValue = document.getElementById('mi').value;
            var txtFifthNumberValue = document.getElementById('penalty').value;
            var txtSixthNumberValue = document.getElementById('arrears').value;
            var txtSeventhNumberValue = document.getElementById('current').value;
            var result = parseInt(txtFirstNumberValue) + parseInt(txtSecondNumberValue) + parseInt(txtThirdNumberValue)+ parseInt(txtFourthNumberValue) + parseInt(txtFifthNumberValue) + parseInt(txtSixthNumberValue) + parseInt(txtSeventhNumberValue);
            if (!isNaN(result)) {document.getElementById('total').value = result;
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
                margin: 12px 0px;
            }
            h3
            {
               font-family: "Shivaji01"; 
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
                //document.getElementById("owner").value="";
               // document.getElementById("pno").value="";
                //document.getElementById("billno").value="";
                document.getElementById("billdate").value="";
                document.getElementById("education").value="";
                document.getElementById("gtax").value="";
                document.getElementById("swtax").value="";
                document.getElementById("mi").value="";
                document.getElementById("penalty").value="";
                document.getElementById("arrears").value="";
                document.getElementById("current").value=""; 
                document.getElementById("total").value="";
            }
        </script>
    </head>
    <body>
        <form name="ptbill" action="Pt_bill_generation" method="post">
        <div class="div1">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <td colspan="2"><center><h1><b>maalama%%aa kr <span> / Property Tax</span></b></h1></center></td>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><h3><b>ga`ahk AayaDI <span>/ Consumer ID</span></b></h3></td>
                            <td><input type="text" class="form-control" name="cid" value="<%=request.getAttribute("cid")%>" onkeypress="javascript:return isNumber(event)"><input type="submit" value="Find" name="btn_submit"></td>
                        </tr>
                        
                        <tr>
                            <td><h3><b>maalama%%aa Qaarkacao naava <span>/ Owner Name</span></b></h3></td>
                            <td><input type="text" class="form-control" name="owner" id="owner" value="<%=request.getAttribute("owner")%>" onkeypress="javascript:return isString(event)"></td>
                        </tr>
                        
                        <tr>
                            <td><h3><b>maalama%%aa k`M. <span> / Property no</span></b></h3></td>
                            <td><input type="text" class="form-control" name="pno" id="pno" value="<%=request.getAttribute("pno")%>" onkeypress="javascript:return isNumber(event)"></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>ibala naM <span> / Bill No :</span></b></h3></center>
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
                String sql="select * from property_tax_generation";
            
                ResultSet rs=st.executeQuery(sql);
            
                while(rs.next())
                {
                    id=Integer.parseInt(rs.getString("pid"))+1;
                }
            }catch(Exception ex)
            {
                out.println(ex.toString());
            }                    

%>
                    <input type="text" class="form-control" name="bill" id="billno" value="MK<%=id%>" onkeypress="javascript:return isAlphanumric(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>ibala idnaaMk <span> / Bill Date :</span></b></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="date" name="date" id="billdate" value="<%=request.getAttribute("billdate")%>" class="form-control">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>iSaxaNa kr <span> / Eduction Tax :</span></b></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="edtax" id="education" value="<%=request.getAttribute("educationtax")%>" onkeyup="sum()" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>[tr kr <span> / General Tax :</span></b></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="gntax" id="gtax" value="<%=request.getAttribute("Gtax")%>" onkeyup="sum()" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>Ganakcara kcara kr <span> / Solid Waste Collection Tax :</span></b></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="swctax" id="swtax" value="<%=request.getAttribute("solidwaste")%>" onkeyup="sum()" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>myauinasaIpla vyaaja <span>/ Municipal Interest :</span></b></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="mit" id="mi" value="<%=request.getAttribute("minterest")%>" onkeyup="sum()" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>dMD <span> / Penalty :</span></b></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="ptax" id="penalty" value="<%=request.getAttribute("penalty")%>" onkeyup="sum()" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>qakbaakI r@kma <span> / Arrears Amount :</span></b></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="arre" id="arrears" value="<%=request.getAttribute("arrears")%>" onkeyup="sum()" onkeypress="javascript:return isFloat(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>caalaU r@kma <span> / Current Amount :</span></b></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="curr" id="current" value="<%=request.getAttribute("current")%>" onkeyup="sum()" onkeypress="javascript:return isFloat(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>ekUNa r@kma <span> / Total Amount :</span></b></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="tamt" id="total" value="<%=request.getAttribute("total")%>" onkeyup="sum()" onkeypress="javascript:return isFloat(event)">
                </div>
                <div class="col-sm-2"></div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                    <input type="submit" name="btn_submit" class="btn btn-primary btn-block active" value="Generate Bill">
                </div>
                <div class="col-sm-4">
                    <input type="submit" name="btn_submit" class="btn btn-warning btn-block active" value="Delete">
                </div>
                <div class="col-sm-3">
                    <input type="submit" name="btn_submit" class="btn btn-info btn-block active" value="Search">
                </div>
                <div class="col-sm-1"></div>
            </div>
            <br>
        </div>
        <br>
<%
if(request.getAttribute("total")==null)  
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
