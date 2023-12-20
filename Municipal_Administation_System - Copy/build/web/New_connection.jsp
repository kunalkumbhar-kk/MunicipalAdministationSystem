<%-- 
    Document   : New_connection
    Created on : 17 Feb, 2022, 4:54:44 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Connection Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <%@include file="Navigation_bar.jsp" %>
        <style>
            .div1
            {
                width: 70%;
                padding: 20px;
                margin: auto;
                margin-top: 50px;
                background-color: ghostwhite;
                border-radius: 30px;
            }
            label
            {
                font-family:  "Shivaji01";
                font-size: 45px;
            }
            h2
            {
                font-family:  "Shivaji01";
            }
            h3
            {
                font-family:  "Shivaji01";
            }
            .form-control
            {
                height: 40px;
                margin: 12px 0px;
                font-size: 17px;
            }
            hr.new2 
            {
            border-top: 2px solid black;
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
        </style>
        <script>
            function clear()
            {
                document.getElementById("menterno").value="";
                document.getElementById("ownername").value="";
                document.getElementById("concat").value="";
                document.getElementById("consize").value="";
            }
        </script>
    </head>
    <body>
       
        <form name="newconn" action="New_connection" method="post">
        <div class="div1">
            <div class="row">
                <div class="col-sm-12">
                    <center><label><b>paNaIpurvaza ivaBaaga.</b></label></center>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <center><label><span>Water Supply Department.</span></label></center>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <center><h2><b>navaIna naLjaaoDNaI <span> / New Connection Form</span></b></h2></center>
                </div>
            </div><hr class="new2">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>ga`ahk AayaDI<span> / Consumer ID :</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="cid" value="<%=session.getAttribute("cno")%>"  onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>maITr k`M<span> / Meter No :</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="menterno" name="no" value="<%=request.getAttribute("meterno")%>" onkeypress="javascript:return isAlphanumric(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>naLjaaoDNaI Qaarkacao naava<span> / Owner Name :</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="ownername" name="owner" value="<%=request.getAttribute("wname")%>" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>naLjaaoDNaI p`kar <span> / Connection Category :</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <select class="form-control" id="concat" name="conc"  >
                                 <option><%=request.getAttribute("ccat")%></option>
                                 <option>--प्रकार निवडा/ Chose Category--</option>
                                 <option>RESIDENTIAL</option>
                                 <option>COMMERCIAL </option>
                                 <option>HOUSING SOCIETIES</option>
                            </select>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>naLjaaoDNaIcaa Aakar <span> (</span><b>ima.ima.</b><span>) / Connection Size(mm) :</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="conn" id="consize" value="<%=request.getAttribute("csize")%>" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div><br>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-2">
                    <center><input type="submit" name="submit" class="btn btn-success active" value="Submit"></center>
                </div>
                <div class="col-sm-2">
                    <center><input type="submit" name="submit" class="btn btn-primary active" value="Update"></center>
                </div>
                <div class="col-sm-2">
                    <center><input type="submit" name="submit" class="btn btn-info active" value="Search"></center>
                </div>
                <div class="col-sm-3"></div>
            </div>
            <br>
        </div>
        <br>
<%
if(request.getAttribute("csize")==null)
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
