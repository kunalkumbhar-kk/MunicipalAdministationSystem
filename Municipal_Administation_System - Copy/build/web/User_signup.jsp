<%-- 
    Document   : User_signup
    Created on : 11 Feb, 2022, 2:35:01 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Citizen Registration Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style>
            .div1
            {
                width: 80%;
                padding: 20px;
                margin: auto;
                margin-top: 60px;
                background-color: ghostwhite;
                border-radius: 30px;
                box-shadow: 3px 3px 3px 3px gray;
            }
            
             label
            {
               font-family: Aparajita;
               font-size: 50px;
               margin: 8px 0px;
            }
            
            h2
            {
                font-family:  Aparajita;
              
            }
            .form-control
            {
                height: 45px;
                margin: 12px 0px;
                font-size: 20px;
            }
            textarea
            {
                width: 100%;
                height: 150px;
                padding: 12px 20px;
                font-size: 20px;
                resize: none;
            }
            .btn
            {
                font-size: 25px;
                font-family: Arial black;
            }
        </style>
    </head>
    <body>
        <form name="signup" action="User_signup" method="post">
                <div class="div1">
                    
                    <div class="row">
                        <center><label>रजिस्ट्रेशन / Citizen Registration</label></center>
                    </div><br>
                    <%
                     int id=1;
                    try
                                                       {
                       Connection cn=null;
        Statement st=null;
Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal_administrator_system","root","root");
            
            
            st=cn.createStatement();
            String sql="select sid from user_signup";
            ResultSet rs=st.executeQuery(sql);
           
            while(rs.next())
            {
              id=Integer.parseInt(  rs.getString("sid"))+1;
            }
         
            
            
        }catch(Exception ex)
        {
        out.println(ex.toString());
        }
        


%>
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-3">
                            <center><h2>ग्राहक आयडी/Consumer ID</h2></center>
                        </div>
                        <div class="col-sm-5">
                            <input type="text" placeholder="Enter Name" value="<%=id%>" name="cno" class="form-control" onkeypress="javascript:return isString(event)">
                        </div>
                        <div class="col-sm-2"></div>
                    </div><br>
                    
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-3">
                            <center><h2>नाव / Name</h2></center>
                        </div>
                        <div class="col-sm-5">
                            <input type="text" placeholder="Enter Name" name="uname" class="form-control" onkeypress="javascript:return isString(event)">
                        </div>
                        <div class="col-sm-2"></div>
                    </div><br>
                    
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-3">
                            <center><h2>पत्ता / Address</h2></center>
                        </div>
                        <div class="col-sm-5">
                            <textarea placeholder="Enter Address" name="uadd" class="form-control" rows="5"></textarea>
                        </div>
                        <div class="col-sm-2"></div>
                    </div><br>
                    
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-3">
                            <center><h2>मोबाईल नं. / Mobile no</h2></center>
                        </div>
                        <div class="col-sm-5">
                            <input type="text" placeholder="Enter Mobile Number" name="umob" class="form-control" maxlength="10" onkeypress="javascript:return isNumber(event)">
                        </div>
                        <div class="col-sm-2"></div>
                    </div><br>
                    
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-3">
                            <center><h2>ई-मेल / E-mail ID</h2></center>
                        </div>
                        <div class="col-sm-5">
                            <input type="text" placeholder="Enter Email ID" name="mail" class="form-control">
                        </div>
                        <div class="col-sm-2"></div>
                    </div><br>
                    
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-3">
                            <center><h2>पासवर्ड / Password</h2></center>
                        </div>
                        <div class="col-sm-5">
                            <input type="password" placeholder="Enter Password" name="lpass" class="form-control">
                        </div>
                        <div class="col-sm-2"></div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-3">
                            <center><h2>पासवर्डची पुष्टी करा / Confirm Password</h2></center>
                        </div>
                        <div class="col-sm-5">
                            <input type="password" placeholder="Confirm Password" name="clpass" class="form-control">
                        </div>
                        <div class="col-sm-2"></div>
                    </div><br>
                    
                    <div class="row">        
                        <center><p style="font-size:25px; font-family:  Aparajita;"><input type="checkbox"> I accept the <a href="">Terms of use & Privacy policy</a></p></center>
                    </div><br>
                    
                    <div class="row">
                        <div class="col-sm-12"><center><input class="btn btn-success btn-lg active" name="submit" type="submit" value="Submit"></center></div>
                    </div>                          
                    <br>
            </div>
        <br>  
        </form>
    </body>
</html>
