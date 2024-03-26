<%-- 
    Document   : homepage
    Created on : 24-Jan-2023, 3:04:52 pm
    Author     : Tanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee_payroll</title>
    </head>
    <style>
        body{
            background-image: url("https://www.hec.edu/sites/default/files/styles/newsroom_media/public/2019-06/Business%20focus-%20banner%20new%20website%20.png?itok=UjepEaEX");
            background-repeat: no-repeat;
            background-size: 100%;
        }
        *{
            font-family: sans-serif;
        }
        .box{
            margin:-39px auto;
            padding: 11px 32px;
            border: 3px solid transparent;
            background-color: #ffffffe3;
            
            width: 412px;
            box-sizing: border-box;
        }
        h1{
            margin: 50px auto;
            text-align: center;
            color:white;
            font-size: 50px;
        }
        h2{
            text-align: center;
            margin: 45px auto;
            
        }
        
        a{
            background-color: #113044;
            border:2px solid black;
            padding:4px;
            text-decoration: none;
            border-radius: 52px;
            color:white;
            
        }
        .box img{
            width:200px;
            height:200px;
            margin: -14px 58px;;
        }
    </style>
    <body>
        
        <h1><b>WELCOME TO EMPLOYEE PAYROLL SYSTEM</b></h1>
        <div class="box">
        <img src="https://images.freeimages.com/fic/images/icons/2526/bloggers/256/admin.png" alt="alt"/>
        <h2><a href="adminlogin">Login as an admin</a></h2>
        <img src="https://www.seekpng.com/png/full/124-1247381_new-employee-icon-people-transparent-background-employee-icon.png" alt="alt"/>
        <h2><a href="employeelogin">Login as an Employee</a></h2>
        </div>
    </body>
</html>
