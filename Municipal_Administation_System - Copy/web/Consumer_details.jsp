<%-- 
    Document   : Consumer_details
    Created on : 15 Feb, 2022, 3:03:02 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consumer Details Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <style>
            .div2
            {
                width: 100%;
                padding: 20px;
                margin: auto;
                background-color:white;
                box-shadow: 2px 2px 2px 2px black;
            }
            label
            {
                padding: 20px;
                font-family: "Shivaji01";
                font-size: 40px;
            }
            h2
            {
                font-family: "Shivaji01";
                padding: 20px;
                margin: 0px 0px;
            }
            .form-control
            {
                height: 40px;
            }
            .btn
            {
                margin: 10px 0px;
                font-family: Aparajita;
                font-size: 20px;
            }
            span
            {
                font-family: Aparajita;
            }
            td
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
                <table class="table table-striped table-hover">
                    <thead>
                         <tr>
                             <td><label>ga`ahk tpSaIla<span> / Consumer Details</span></label></td>
                         </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>ga`ahk AayaDI<span> / Consumer ID</span></td>
                            <td></td>
                        </tr>
                        
                        <tr>
                            <td>vaaD-<span>/ word</span></td>
                            <td></td>
                        </tr>
                        
                        <tr>
                            <td>Jaaona<span>/ zone</span></td>
                            <td></td>
                        </tr>
                        
                        <tr>
                            <td>naava <span>/ Name</span></td>
                            <td></td>
                        </tr>
                        
                        <tr>
                            <td> Pa%%aa <span>/ Address</span></td>
                            <td></td>
                        </tr>
                        
                        <tr>
                            <td>[-------- maola <span> / E-mail</span></td>
                            <td></td>
                        </tr>
                        
                        <tr>
                            <td>maaobaa[-la naM <span> / Mobile no</span></td>
                            <td></td>
                        </tr>
                        
                    </tbody>
                </table>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-striped table-hover">
                            <thead>
                         <tr>
                             <td><label>pomaoMT tpSaIla <span>/ Payment Details</span></label></td>
                         </tr>
                         <tr>
                             <td><h2>qakIt pomaoMT<span>/ Pending Payment</span></h2></td>
                         </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><h2>paNaI ibala <span>/ Water Bill</span></h2></td>
                                    <td><input class="btn btn-info btn-lg active" value="तपशील / View Details"></td>
                                </tr>
                                <tr>
                                    <td><h2>maalama%%aa kr <span>/ Property Tax</span></h2></td>
                                    <td><input class="btn btn-info btn-lg active" value="तपशील / View Details"></td>
                                </tr>
                            </tbody>
                            </table>
                        </div>
                        
                    </div>  
                    <br>
                </div>
        <br>
    </body>
</html>
