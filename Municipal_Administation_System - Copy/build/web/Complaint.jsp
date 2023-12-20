<%-- 
    Document   : Complaint
    Created on : 5 Mar, 2022, 12:00:48 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <%@include file="Navigation_bar.jsp" %>
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
            label
            {
                font-family: "Shivaji01";
                font-size: 35px;
            }
            h1
            {
                font-family: "Shivaji01";
                font-size: 40px;
            }
            .btn
            {
                font-size: 32px;
                font-family: Arial black;
            }
           
            textarea
            {
                width: 100%;
                padding: 12px 20px;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 4px;
                background-color: #f8f8f8;
                font-size: 20px;
                resize: none;
            }
            span
            {
                font-family: Aparajita;
            }
        </style>
    </head>
    <body>
        <form name="complaint" action="Complaint" method="post">
        <div class="div">
            <div class="row">
                <div class="col-sm-12">
                    <center><label>gaDihMglaja nagarpirYad gaDihMglaja<br><span>Gadhinglaj Municipal Council.</span></label><br><h1>तक्रार नोंदवा <span>/ Raise Complaint</span></h1></center>                  
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                        <div class="row">
                            <div class="col-sm-12">
                                <textarea placeholder="तक्रार लिहा / Add Complaint..." rows="12" name="comp"></textarea>
                            </div>
                        </div>
                </div>
                <div class="col-sm-1"></div>
            </div><br>
            <div class="row">
                <div class="col-sm-12">
                    <center><input type="submit" name="submit" class="btn btn-primary  active" value="Submit"></center>
                </div>
            </div>
            <br>
        </div>
        <br>
        </form>
    </body>
</html>
