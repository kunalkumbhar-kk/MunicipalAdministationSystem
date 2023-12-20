<%-- 
    Document   : Search_id
    Created on : 12 Feb, 2022, 4:27:18 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consumer ID</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .div1
            {
                width: 60%;
                padding: 20px;
                margin: auto;
                margin-top: 30px;
                border-radius: 40px;
                background-color:ghostwhite;
            }
            h3
            {
                font-family: "Shivaji01";
            }
            label
            {
                font-family: "Shivaji01";
                margin: 8px 0px;
                font-size: 40px;
            }
            .form-control
            {
                height: 43px;
                margin: 12px 0px;
                font-size: 18px;
            }
            h2
            {
                font-family: "Shivaji01";
            }
            .example{
            width: 40%;
            padding: 10px;
            background: #2196F3;
            color: white;
            font-size: 25px;
            border: 1px solid grey;
            border-left: none;
            cursor: pointer;
            }
            button
            {
                margin:50px 0px;
                max-width:300px;
                border-radius: 5px;
            }
            span
            {
                font-family: Aparajita;
            }
        </style>
    </head>
    <body>
        <form name="searchid" action="Search_id" method="post">
                <div class="div1">
                    <div class="row">
                        <center><label>ga`ahk AayaDI <span> / Search Consumer ID</span></label></center>
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-11">
                            <center><h3><b><span>*</span>yaa SaaoQa saM&aMpOkI ikmaana ek Bara.<span> / Fill at least one of these search terms.</span></b></h3></center>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-4">
                            <center><h2><b>naava </b><span> / Name :</span></h2></center>
                        </div>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" name="idname" placeholder="Enter Consumer Name" onkeypress="javascript:return isString(event)">
                        </div>
                        <div class="col-sm-2"></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-4">
                            <center><h2><b>Pa%%aa</b> <span> / Address :</span></h2></center>
                        </div>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" placeholder="Enter Address" name="idadd" onkeypress="javascript:return isAlphanumric(event)">
                        </div>
                        <div class="col-sm-2"></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-5">
                            <center><h2><b>maaobaa[-la naM.</b> <span> / Mobile Number:</span></h2></center>
                        </div>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" placeholder="Enter Mobile Number" name="idno" onkeypress="javascript:return isNumber(event)">
                        </div>
                        <div class="col-sm-2"></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-12">
                            <h2><span>Optional filter</span></h2>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-3">
                            <center><h2><b>vaaD- </b><span> / Word :</span></h2></center>
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" placeholder="Select word" name="idword" onkeypress="javascript:return isNumber(event)">
                        </div>
                        <div class="col-sm-2">
                            <center><h2><b>Jaaona</b> <span> / Zone :</span></h2></center>
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" placeholder="Select word" name="idzone" onkeypress="javascript:return isNumber(event)">
                        </div>
                        <div class="col-sm-1"></div>
                        
                        <div class="row">
                            <div class="col-sm-12">
                                <center><button type="submit" value="Submit" name="btn_submit" class="example"><i class="fa fa-search"> Search</i></button></center>
                            </div>
                        </div>
                        
                    </div>
                    
                    <br>
                </div>
        <br>
        </form>
    </body>
</html>
