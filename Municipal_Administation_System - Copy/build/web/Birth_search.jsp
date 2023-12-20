<%-- 
    Document   : Birth_registraion
    Created on : 3 Mar, 2022, 6:30:04 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Birth Search Page</title>
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
            span
            {
                font-family: Aparajita;
            }
            .btn
            {
                height: 45px;
                font-size: 33px;
                font-family: Aparajita;
            }
            hr.new2 
            {
            border-top: 2px solid black;
            }
        </style>
        <script>
            function clear()
            {
                document.getElementById("childname").value="";
                document.getElementById("fathername").value="";
                document.getElementById("mothername").value="";
                document.getElementById("birthplace").value="";
                
            }
        </script>
    </head>
    <body>
        <form name="Birthsearch" action="Birth_Search" method="post">
        <div class="div2">
            <div class="row">
                <div class="col-sm-12">
                    <center><label>janma naaoMdNaI SaaoQa <span> / Birth Registration Search</span></label></center>
                </div>
            </div><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3>rijasT/oSana naM<span> / Reg. NO :</span></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="rid" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3>maulaacao naava <span> / Child Name :</span></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="chname" id="childname" value="<%=request.getAttribute("chname")%>" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3>vaDIlaaMcao naava <span> / Fathers Name :</span></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="vname" id="fathername" value="<%=request.getAttribute("vname")%>" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3>Aa[-cao naava <span> / Mothers Name :</span></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="moname" id="mothername" value="<%=request.getAttribute("moname")%>" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3>maulaacao ilaMga <span> / Child Sex :</span></h3>
                </div><br>  
                <div class="col-sm-4">
                    <div class="row">
                        <div class="col-sm-6">
                            <input type="radio" name="Gender"  value=" Male">Male
                        </div>
                        <div class="col-sm-6">
                            <input type="radio" name="Gender" value=" Female">Female
                        </div>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3>janma sqaL<span> / Birth Place :</span></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="birthplace" name="jp" value="<%=request.getAttribute("jp")%>" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div><br>
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <center><input type="submit" name="search" class="btn btn-info active" value="Search"></center>
                </div>
                <div class="col-sm-4"></div>
            </div>
            <br>
        </div>
        <br>
<%
if(request.getAttribute("jp")==null)
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



