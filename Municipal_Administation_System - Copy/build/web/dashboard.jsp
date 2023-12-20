<%-- 
    Document   : dashboard
    Created on : 12 May, 2022, 5:02:22 PM
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
            span1
            {
                font-family: "Shivaji01";
                font-size: 20px;
            }
            body
            {
                background-color: #264d73;
            }
        </style>
    </head>
    <body>
                        <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#"><b><span1>haoma</span1></b> / Home</a></li>
                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><b><span1>mahsaUla ivaBaaga</span1></b> / Revenue Department <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Bill_Generation.jsp"><b><span1>paNaI ibala</span1></b> / Water Bill</a></li>
                                    <li><a href="Pt_bill_generation.jsp"><b><span1>maalama%%aa kr</span1></b> / Property Tax</a></li>
                                    <li><a href="New_property.jsp"><b><span1>navaIna maalama%%aa naaoMdNaI</span1></b> / Property Tax</a></li>
                                    
                                </ul>
                            </li>
                            <li><a href="Birth_report.jsp"><b><span1>janma maR%yaU</span1></b> / Birth & Death </a></li>
                            <li><a href="Schedule.jsp"><b><span1>vaoLap~k va maaihtI</span1></b> / Schedule & Information </a></li>
                            <li><a href=""><b><span1>tk`ar </span1></b> / Complaint</a></li>
                            <li><a href="Add_event.jsp"> Add Event</a></li>
                        </ul>
                    </div>
                </nav>
        
    </body>
</html>
