<%-- 
    Document   : Death_registration
    Created on : 4 Mar, 2022, 5:27:00 PM
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
            }
            label
            {
                font-family: "Shivaji01";
                font-size: 37px;
            }
            h3
            {
                font-family: "Shivaji01";
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
            textarea
            {
                resize: none;
            }
            span
            {
                font-family: Aparajita;
            }
        </style>
    </head>
    <body>
        <form name="deathreg" action="Death_registration" method="post">
        <div class="div2">
            <div class="row">
                <div class="col-sm-12">
                    <center><label><b>maR%yaU naaoMdNaI </b><span>/ Death Registration</span></label></center>
                </div>
            </div><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>rijasT/oSana naM</b><span>/ Reg.no. :</span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="regno" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-7"></div>
            </div>
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>maR%a vya@%aIcao naava </b> <span> / Death Person Name :</span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="dp" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>vaDIlaaMcao naava </b><span> / Fathers Name :</span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="fname" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>maR%yaU  tarIK </b><span> / DOD :</span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="date" name="ddate" class="form-control">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>ilaMga </b><span> / Gender :</span></h3></center>
                </div>
                <div class="col-sm-2">
                    <div class="row"><br>
                        <div class="col-sm-6">
                            <input type="radio" name="Gender" value="Male">Male
                        </div>
                        <div class="col-sm-6">
                            <input type="radio" name="Gender" value="Female">Female
                        </div>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>Aa[-cao naava</b> <span> / Mothers Name :</span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="pmname" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>Pa%%aa</b> <span> / Address :</span></h3></center>
                </div>
                <div class="col-sm-3">
                    <textarea class="form-control" name="add" rows="5"></textarea>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>maR%yaU  sqaL </b><span> / Death Place:</span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="drp" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>dvaaKanyaacao naava</b><span> / Hospital Name :</span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="dhn" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>janma  tarIK </b><span> / DOB :</span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="date" name="drdo" class="form-control">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <center><h3><b>vaya </b><span> / Age :</span></h3></center>
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" name="drage" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-2"></div>
            </div><br><br>
            <div class="row">
                <div class="col-sm-5"></div>
                <div class="col-sm-2">
                    <center><input type="submit" name="submit" class="btn btn-block btn-success active" value="Submit"></center>
                </div>
                <div class="col-sm-5"></div>
            </div>
            <br>
        </div>
        <br>
        </form>
    </body>
</html>