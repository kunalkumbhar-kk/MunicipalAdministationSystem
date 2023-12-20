<%-- 
    Document   : Revenue_home
    Created on : 12 Feb, 2022, 1:13:30 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Revenue Department</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <link rel="stylesheet" href="marathi.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <style>
            .div2
            {
                width: 60%;
                padding: 20px;
                margin: auto;
                margin-top: 100px;
                border-radius: 40px;
                background-color:ghostwhite;
            }
            h1
            {
                font-family: "Shivaji01";
            }
            label
            {
                font-family: "Shivaji01";
                font-size: 50px;
            }
            form.example input[type=text] 
            {
            padding: 10px;
            font-size: 20px;
            border: 1px solid grey;
            float: left;
            width: 80%;
            background: #f1f1f1;
            }
            form.example button {
            float: left;
            width: 20%;
            padding: 10px;
            background: #2196F3;
            color: white;
            font-size: 17px;
            border: 1px solid grey;
            border-left: none;
            cursor: pointer;
            }
            form.example button:hover 
            {
            background: #0b7dda;
            }
            a
            {
                font-size: 20px;
            }
            span
            {
                font-family: Aparajita;
            }
            a
            {
                font-family: "Shivaji01";
                font-size: 25px;
            }

        </style>
    </head>
    <body>
                <div class="div2">
                    <div class="row">
                        <div class="col-sm-12">
                            <center><label>gaDihMglaja nagarpirYad<span>,</span>mahsaUla ivaBaaga.<br><span>Gadhinglaj Municipal Council, Revenue Department.</span></label></center>
                        </div>
                    </div>
                    <div class="row">
                        <center><h1><b>ga`ahk AayaDI<span> / Consumer ID</span></b></h1></center>
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4">
                            <form class="example" name="Revenue" action="New_connection.jsp" method="post" style="margin:auto;max-width:300px">
                                <input type="text" value="<%=session.getAttribute("cno")%>" placeholder="Search Consumer ID.." name="scid" class="form-control" style="height:47px" onkeypress="javascript:return isNumber(event)">
                                <button type="submit" value="Next" name="submit"><i class="fa fa-search"></i></button>
                            </form>

                        </div>
                        <div class="col-sm-0"></div>
                    </div>
                    
                    <div class="row"><br><br>
                        <center><a href=""><b>tumhalaa tumacaa ga`ahk AayaDI maahIt nasalyaasa yaoqao i@lak kra.</b></a></center><br>
                        <center><a href=""><span>Click here if you don't know your consumer ID.</span></a></center>
                    </div>
                    <br>
                </div>
        <br>
    </body>
</html>
