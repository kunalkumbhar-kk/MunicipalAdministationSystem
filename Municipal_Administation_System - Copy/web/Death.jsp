<%-- 
    Document   : Death
    Created on : 4 Mar, 2022, 4:47:52 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Death Search Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <%@include file="Navigation_bar.jsp"%>
        <style>
            .div2
            {
                width: 60%;
                padding: 20px;
                margin: auto;
                margin-top: 40px;
                border-radius: 40px;
                background-color:ghostwhite;
            }
            label
            {
                font-family: "Shivaji01";
                font-size: 35px;
            }
            h3
            {
                font-family: "Shivaji01";
            }
            .form-control
            {
                height: 40px;
                margin: 6px 0px;
            }
            .radio
            {
                margin: 6px 0px;
            }
            .btn
            {
                height: 48px;
                font-size: 33px;
                font-family: Aparajita;
            }
            hr.new2 
            {
            border-top: 2px solid black;
            }
            span
            {
                font-family: times new roman;
                font-size: 20px;
            }
        </style>
        <script>
            function clear()
            {
                document.getElementById("deadperson").value="";
                document.getElementById("fathername").value="";
                document.getElementById("mothername").value="";
                document.getElementById("deathplace").value="";
            }
        </script>
    </head>
    <body>
        <form name="death" action="Death" method="post">
        <div class="div2">
            <div class="row">
                <div class="col-sm-12">
                    <center><label>maR%yaU naaoMdNaI SaaoQa <span> / Death Registration Search</span></label></center>
                </div>
            </div><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-5">
                    <h3><b>rijasT/oSana naM</b><span> / Reg. NO :</span></h3>
                </div>
                <div class="col-sm-3">
                    <input type="text" name="regno" class="form-control" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-5">
                    <h3><b>maR%a vya@%aIcao naava </b><span> / Dead Person Name :</span></h3>
                </div>
                <div class="col-sm-3">
                    <input type="text" name="deadp" id="deadperson" value="<%=request.getAttribute("dperson")%>" class="form-control" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-5">
                    <h3><b>vaDIlaaMcao naava </b><span> / Fathers Name :</span></h3>
                </div>
                <div class="col-sm-3">
                    <input type="text" name="fn" id="fathername" value="<%=request.getAttribute("fname")%>" class="form-control" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-5">
                    <h3><b>Aa[-cao naava </b><span> / Mothers Name :</span></h3>
                </div>
                <div class="col-sm-3">
                    <input type="text" name="mname" id="mothername" value="<%=request.getAttribute("mname")%>" class="form-control" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-5">
                    <h3><b>ilaMga </b><span>/ Gender :</span></h3>
                </div>
                <div class="col-sm-3">
                    <div class="row"><br>
                        <div class="col-sm-6">
                            <input type="radio" value="<%=request.getAttribute("gen")%>" name="Gender" value="Male">Male
                        </div>
                        <div class="col-sm-6">
                            <input type="radio" name="Gender" value="Female">Female
                        </div>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-5">
                    <h3><b>maR%yaU  sqaL </b><span> / Death Place :</span></h3>
                </div>
                <div class="col-sm-3">
                    <input type="text" name="dp" id="deathplace" value="<%=request.getAttribute("dplace")%>" class="form-control" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div><br>
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <center><input type="submit" name="submit" class="btn btn-info active" value="Search"></center>
                </div>
                <div class="col-sm-4"></div>
            </div>
            <br>
        </div>
        <br>
<%
if(request.getAttribute("dplace")==null)
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
