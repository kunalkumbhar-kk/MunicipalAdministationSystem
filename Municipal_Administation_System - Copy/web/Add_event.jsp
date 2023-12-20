    <%-- 
    Document   : Add_event
    Created on : 5 Mar, 2022, 6:05:52 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Event Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <%@include file="dashboard.jsp" %>
        <style>
            .div
            {
                width: 60%;
                padding: 20px;
                margin: auto;
                margin-top: 60px;
                background-color: ghostwhite;
                border-radius: 30px;
            }
            label
            {
                font-family: "Shivaji01";
                font-size: 45px;
            }
            h1
            {
                font-family: Impact;
                font-size: 45px;
            }
            .btn
            {
                font-size: 25px;
                font-family: Arial black;
            }
            .form-control
            {
                height: 40px;
                margin: 6px 0px;
                border-bottom: 3px solid black;
                font-size: 17px;
                margin-top: 13px;
            }
            h3
            {
              font-family: Times New Roman;
            }
            span
            {
                font-family: Aparajita;
            }
            h2
            {
                font-family: Aparajita;
            }
        </style>
        <script>
            function clear()
            {
                document.getElementById("event").value="";
                document.getElementById("eplace").value="";
            }
        </script>
    </head>
    <body>
        <form name="addevent" action="Add_event" method="post">
        <div class="div">
            <div class="row">
                <div class="col-sm-12">
                    <center><label><b>gaDihMglaja nagarpirYad<span>,</span>gaDihMglaja.<br><span>Gadhinglaj Municipal Council.</span></label><br><h1>Add Event</h1></center>
                </div>
            </div><br>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-3">
                    <h3>Event ID :</h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" placeholder="Enter Event ID" name="eid"  onkeypress="javascript:return isnumber(event)" class="form-control">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-3">
                    <h3>Event Name :</h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" placeholder="Enter Event Name"id="event" name="ename" value="<%=request.getAttribute("ename")%>" onkeypress="javascript:return isString(event)" class="form-control">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-3">
                    <h3>Event Date :</h3>
                </div>
                <div class="col-sm-4">
                    <input type="date" name="edate" value="<%=request.getAttribute("edate")%>" class="form-control">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-3">
                    <h3>Event Time :</h3>
                </div>
                <div class="col-sm-4">
                    <input type="time" name="etime" value="<%=request.getAttribute("etime")%>" class="form-control">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-3">
                    <h3>Event Place :</h3>
                </div>
                <div class="col-sm-4">
                    <input type="text" placeholder="Enter Event Place"  id="eplace"name="place" value="<%=request.getAttribute("place")%>" onkeypress="javascript:return isAlphanumric(event)" class="form-control">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-3">
                    <h3>Add Image :</h3>
                </div>
                <div class="col-sm-4">
                    <input type="file"  name="img"  class="form-control">
                </div>
                <div class="col-sm-2"></div>
            </div><br><br>
            
             <div class="row">
                <div class="col-sm-6"></div>
                
                <div class="col-sm-4">
                    <img src="<%=request.getAttribute("img1")%>" height="100" width="100">
                </div>
                <div class="col-sm-2"></div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-2">
                    <center><input type="submit" class="btn btn-success  active" name="submit" value="Submit"></center>
                </div>
                <div class="col-sm-2">
                    <center><input type="submit" class="btn btn-primary  active" name="submit" value="Update"></center>
                </div>
                <div class="col-sm-2">
                    <center><input type="submit" class="btn btn-warning  active" name="submit" value="Delete"></center>
                </div>
                <div class="col-sm-2">
                    <center><input type="submit" class="btn btn-info  active" name="submit" value="Search"></center>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <br>
        </div>
        <br>
        <%
if(request.getAttribute("etime")==null)
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
