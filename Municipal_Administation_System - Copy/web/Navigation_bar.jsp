<%-- 
    Document   : Navigation_bar
    Created on : 9 May, 2022, 5:10:22 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Home Page</title>
        <style>
         
            body
            {
                background-color: #264d73;
            }
            span1
            {
                font-family: "Shivaji01";
                font-size: 20px;            }
        </style>
    </head>
    <body>
       
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="Navigation_bar.jsp"><b><span1>haoma</span1></b> / Home</a></li>
                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><b><span1>mahsaUla ivaBaaga</span1></b> / Revenue Department <span1 class="caret"></span1></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Water_bill.jsp"><b><span1>paNaI ibala</span1></b> / Water Bill</a></li>
                                    <li><a href="Property_tax.jsp"><b><span1>maalama%%aa kr</span1></b> / Property Tax</a></li>
                                    <li><a href="New_connection.jsp"><b><span1>navaIna naLjaaoDNaI</span1></b> / New Connection Form</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><b><span1>janma maR%yaU</span1></b> / Birth & Death <span1 class="caret"></span1></a>
                                <ul class="dropdown-menu">
                                    <li><a href="New_birth.jsp"><b><span1>janma naaoMdNaI</span1></b> / New Birth Registration </a></li>
                                    <li><a href="Birth_search.jsp"><b><span1>janma naaoMdNaI SaaoQa</span1></b> / Birth Search </a></li>
                                    <li><a href="Death_registration.jsp"><b><span1>maR%yaU naaoMdNaI</span1></b> / New Death Registration</a></li>
                                    <li><a href="Death.jsp"><b><span1>maR%yaU naaoMdNaI SaaoQa</span1></b> / Death Search </a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><b><span1>vaoLap~k va maaihtI</span1></b> / Schedule & Information <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#"><b><span1>paNaIpurvaza</span1></b> / Water Supply</a></li>
                                    <li><a href="#"><b><span1>GaMTagaaDI</span1></b> / Ganta Gadi</a></li>
                                    <li><a href="#"><b><span1>kayaa-layaIna vaoL</span1></b> / Office Time</a></li>
                                    <li><a href="#"><b><span1>nagarpirYad saMsqaa</span1></b> / Municipal Body </a></li>
                                </ul>
                            </li>
                            <li><a href="Complaint.jsp"><b><span1>tk`ar </span1></b> / Complaint</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span><b><span1>  laa^ga </span1></b> / Logout</a></li>
                        </ul>
                    </div>
                </nav>
           
    </body>
</html>
