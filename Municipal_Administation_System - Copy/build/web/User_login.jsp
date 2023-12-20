<%-- 
    Document   : User_login
    Created on : 14 Feb, 2022, 8:57:26 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Citizen Login Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body
            {
                background-image: url(project_photos/full-nadi.JPG);
                background-size: cover;
                
            }
            .div1
            {
                width: 50%;
                padding: 20px;
                margin: auto;
                margin-top: 25px;
                background: ghostwhite;
                box-shadow: 5px 5px 5px 5px black;
                border-radius: 30px;
                opacity: 0.8;
            }
            #myDIV 
            {
                animation: mymove 5s infinite;
            }
            @keyframes mymove 
            {
                50% {text-shadow: 10px 20px 30px white;}
            }
            label
            {
               font-family: Aparajita;
               margin: 10px 0px;
               font-size: 80px;
               color: orangered;
               text-shadow: 5px 4px yellow;
            }
            h1
            {
                font-family: Aparajita bold;
                font-size: 45px;
            }
            h2
            {
                font-family: Aparajita;
                font-size: 55px;
                margin-top: -20px;
            }
            .form-control
            {
                height: 50px;
                font-size: 25px;
                margin: 6px 0px;
            }
            .btn
            {
                font-family: Arial Black;
                font-size: 22px;
            }
            hr.new2 
            {
                border-top: 2px solid black;
            }
        </style>
    </head>
    <body>
        <form name="userlogin" action="User_login" method="post">
        <center><label>गडहिंग्लज नगरपरिषद,गडहिंग्लज.</label></center>
        <center><h2 id="myDIV"><b>Gadhinglaj Municipal Council.</b></h2></center>
        
        <div class="div1">
            <div class="row">
                <div class="col-sm-12">
                    <center><h1>Citizen Login</h1></center>
                </div>
                <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-8"><br>
                            <input type="text" class="form-control" placeholder="Enter mobile number or email address" name="mobno">
                        </div>
                        <div class="col-sm-2"></div>
                </div>
                
                <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-8"><br>
                            <input type="password" class="form-control" placeholder="Enter Password" name="pass">
                        </div>
                        <div class="col-sm-2"></div>
                </div><br>
                
                <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-8">
                            <center><input type="submit" name="submit" class="btn btn-primary btn-lg active" value="Sign In"></center>
                        </div>
                        <div class="col-sm-2"></div>
                </div><br>
                
                <div class="row">
                        <center><a href="" style="font-size:15px">Forgotten Password?</a></center>
                </div>
                
                <div class="row">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-4"><hr class="new2"></div>
                        <div class="col-sm-2">
                            <center><h5><b>OR</b></h5></center>
                        </div>
                        <div class="col-sm-4"><hr class="new2"></div>
                        <div class="col-sm-1"></div>
                </div>
                <br>
                <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-8">
                            <center><input class="btn btn-success btn-lg active" type="submit" name="submit" value="New User Registation"></center>
                        </div>
                        <div class="col-sm-2"></div>
                 </div>
            </div>
            <br>
        </div>
    <br>
        </form>
    </body>
</html>
