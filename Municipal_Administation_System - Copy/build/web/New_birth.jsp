<%-- 
    Document   : New_birth
    Created on : 3 Mar, 2022, 9:14:05 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Birth Registration Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <%@include file="Navigation_bar.jsp"%>
        <style>
            .div2
            {
                width: 80%;
                padding: 20px;
                margin: auto;
                margin-top: 40px;
                border-radius: 40px;
                background-color:ghostwhite;
                box-shadow: 2px 2px 2px 2px black;
            }
            label
            {
                font-family: Aparajita;
                font-size: 35px;
            }
            h3
            {
                font-family: Aparajita;
            }
            .form-control
            {
                height: 40px;
                margin: 6px 0px;
                font-size: 17px;
            }
            .btn
            {
                height: 45px;
                font-size: 24px;
                font-family: Arial Black;
            }
            .radio
            {
                font-size: 15px;
            }
            textarea
            {
                resize: none;
            }
        </style>
    </head>
    <body>
        <form name="newbirth" action="New_birth" method="post">
        <div class="div2">
            <div class="row">
                <div class="col-sm-12">
                    <center><label>जन्म नोंदणी / Birth Registration</label></center>
                </div>
            </div><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3>रजिस्ट्रेशन नं/ Reg.no. :</h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="regno" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-7"></div>
            </div>
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3>मुलाची जन्म तारीख / Child DOB :</h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="date" name="cdob" class="form-control">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3>मुलाचे लिंग / Child Sex :</h3></center>
                </div>
                <div class="col-sm-2">
                    <div class="row">
                        <div class="col-sm-6">
                            <h3><input type="radio" name="Gender" value="Male">Male</h3>
                        </div>
                        <div class="col-sm-6">
                            <h3><input type="radio" name="Gender" value="Female">Female</h3>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3>मुलाचे नाव / Child Name:</h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="cn" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3>वडीलांचे नाव / Fathers Name :</h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="fn" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3>आईचे नाव / Mothers Name :</h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="mn" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3>पत्ता / Address :</h3></center>
                </div>
                <div class="col-sm-3">
                    <textarea class="form-control" name="nadd" rows="3"></textarea>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3>जन्म स्थळ / Birth Place:</h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="nbp" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3>दवाखान्याचे नाव / Hospital Name :</h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="nhname" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div><br>
            <div class="row">
                <div class="col-sm-5"></div>
                <div class="col-sm-2">
                    <center><input type="submit" name="btn_submit" class="btn btn-block btn-success active" value="Submit"></center>
                </div>
                <div class="col-sm-5"></div>
            </div>
            <br>
        </div>
        <br>
        </form>
    </body>
</html>
