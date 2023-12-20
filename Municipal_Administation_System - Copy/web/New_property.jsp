<%-- 
    Document   : New_property
    Created on : 2 Mar, 2022, 6:24:32 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Property Registration Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <%@include file="dashboard.jsp" %>
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
                font-size: 50px;
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
                document.getElementById("ownername").value="";
                document.getElementById("cat").value="";
                document.getElementById("use").value="";
                document.getElementById("address").value="";
                document.getElementById("porperty").value="";
                document.getElementById("word").value="";
                document.getElementById("zone").value="";
            }
        </script>
    </head>
    <body>
        <form name="newporperty" action="New_property" method="post">
        <div class="div1">
            <div class="row">
                <div class="col-sm-12">
                    <center><label>mahsaUla ivaBaaga.</label></center>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <center><label><span>Revenue Department.</span></label></center>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <center><h2><b>navaIna maalama%%aa naaoMdNaI <span> / New Property Registration Form</span></b></h2></center>
                </div>
            </div><hr class="new2">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>ga`ahk AayaDI <span> / Consumer ID :</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="cid" placeholder="Enter Consumer ID" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>maalama%%aa Qaarkacao naava <span> / Owner Name :</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="owner" id="ownername" value="<%=request.getAttribute("oname")%>" placeholder="Enter Owner Name" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>maalama%%aocaI EaoNaI <span> / Category of Ownership:</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <select class="form-control" id="cat" name="cow">
                                 <option>--प्रकार निवडा/ Choose Category--</option>
                                 <option>RESIDENTIAL</option>
                                 <option>COMMERCIAL</option>
                                 <option>MULTI-RESIDENTIAL</option>
                                 <option>INDUSTRIAL</option>
                                 <option>AGRICULTURAL</option>
                                 <option><%=request.getAttribute("category")%></option>
                            </select>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>vaapracaa p`kar <span> / Property Use Type :</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <select class="form-control" id="use" name="put">
                                 <option>--प्रकार निवडा/ Choose use type--</option>
                                 <option>RESIDENTIAL</option>
                                 <option>EDUCATIONAL</option>
                                 <option>INSTITUTIONAL</option>
                                 <option>ASSEMBLY</option>
                                 <option>BUSINESS</option>
                                 <option>MERCANTILE</option>
                                 <option>STORAGE</option>
                                 <option>HAZARDOUS</option>
                                 <option>UNDER CULTIVATION LAND</option>
                                 <option>WASTE LAND</option>
                                 <option><%=request.getAttribute("type")%></option>
                            </select>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>maalama%%aocaa Pa%%aa <span> / Property Address :</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="padd" id="address" value="<%=request.getAttribute("address")%>" placeholder="Enter Address">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>maalama%%aa k.<span> / Property no :</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="property" id="porperty" value="<%=request.getAttribute("property")%>" placeholder="Enter no" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>vaa^D- <span> / Word :</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="wordno" id="word" placeholder="Enter Word No" value="<%=request.getAttribute("word")%>" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <h3><b>Jaaona <span> / zone :</span></b></h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="zoneno" id="zone" placeholder="Enter zone" value="<%=request.getAttribute("zone")%>" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-2">
                    <center><input type="submit" name="btn_submit" class="btn btn-success btn-lg active" value="Submit"></center>
                </div>
                <div class="col-sm-2">
                    <center><input type="submit" name="btn_submit" class="btn btn-primary btn-lg active" value="Update"></center>
                </div>
                <div class="col-sm-2">
                    <center><input type="submit" name="btn_submit" class="btn btn-warning btn-lg active" value="Delete"></center>
                </div>
                <div class="col-sm-2">
                    <center><input type="submit" name="btn_submit" class="btn btn-info btn-lg active" value="Search"></center>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <br>
        </div>
        <br>
<%
if(request.getAttribute("zone")==null)
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
