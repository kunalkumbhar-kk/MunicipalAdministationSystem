<%-- 
    Document   : Schedule
    Created on : 4 Mar, 2022, 6:58:49 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule Adding Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <%@include file="dashboard.jsp" %>
        <style>
            .div
            {
                width: 70%;
                padding: 20px;
                margin: auto;
                margin-top: 60px;
                background-color: ghostwhite;
                border-radius: 30px;
            }
            .div1
            {
                width: 100%;
                padding: 20px;
                background-color: ghostwhite;
                border: dashed;
            }
            label
            {
                font-family: "Shivaji01";
                font-size: 45px;
            }
            h1
            {
              font-family: Arial Black;
              font-size: 35px;
            }
            h3
            {
              font-family: Times New Roman;
            }
            input[type=file]
            {
                margin-top: 15px;
                font-family: Times New Roman;
                font-size: 20px;
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
    </head>
    <body>
        <form name="schedule" action="Schedule" method="post">
        <div class="div">
            <div class="row">
                <div class="col-sm-12">
                    <center><label>vaoLap~k va maaihtI <span> / Schedule and information.</span></label></center>
                </div>
            </div><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <div class="div1">
                        <div class="row">
                            <div class="col-sm-12">
                                <center><h1>Schedule</h1></center>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5">
                                <h3 float:left>ID :</h3>
                            </div>
                            <div class="col-sm-3">
                                <input type="text" name="wstt" class="form-control">
                            </div>
                            <div class="col-sm-3"></div>
                        </div>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5">
                                <h3 float:left>Water Supply Time Table:</h3>
                            </div>
                            <div class="col-sm-5">
                                <input type="file" name="wstt">
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5">
                                <h3 float:left>Ghanta-Gadi Time Table:</h3>
                            </div>
                            <div class="col-sm-5">
                                <input type="file" name="ggtt">
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5">
                                <h3 float:left>Office Work Time Table:</h3>
                            </div>
                            <div class="col-sm-5">
                                <input type="file" name="owtt" >
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                        <br>
                    </div>
                    <br>
                </div>
                <div class="col-sm-1"></div>
                <br>
        </div>
            <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <div class="div1">
                        <div class="row">
                            <div class="col-sm-12">
                                <center><h1>Information</h1></center>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5">
                                <h3 float:left>Municipal Body Information :</h3>
                            </div>
                            <div class="col-sm-5">
                                <input type="file" name="mbi" >
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                        <br>
                    </div>
                    <br>
                </div>
                <div class="col-sm-1"></div>
            </div><br>
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-2">
                    <center><input type="submit" name="btn_submit" class="btn btn-success active" value="Show"></center>
                </div>
                <div class="col-sm-2">
                    <center><input type="submit" name="btn_submit" class="btn btn-primary active" value="Update"></center>
                </div>
                <div class="col-sm-2">
                    <center><input type="submit" name="btn_submit" class="btn btn-warning active" value="Delete"></center>
                </div>
                <div class="col-sm-3"></div>
            </div>
                <br>
        </div>
            <br>
            </form>
    </body>
</html>
