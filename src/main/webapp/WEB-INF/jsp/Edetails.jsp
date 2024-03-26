<%-- 
    Document   : Edetails
    Created on : 25-Jan-2023, 6:29:36 pm
    Author     : Tanya
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>details</title>
<style>
        *{
            
            font-family: sans-serif;
            margin:0px;
            padding:0px;
            
        }   
        body{
            background-image: url("https://i.ytimg.com/vi/tDKU1YikgGo/maxresdefault.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
            background-size: 300vh;
        }
        

        .navbar{
            background-color:#113044;
            border-radius: 4px;
            
            
        }
        .navbar ul{
            overflow: auto;
        }
        .navbar li{
            float: right;
            list-style: none;
            padding: 11px 25px;
            
        }
        .navbar li a{
            text-decoration: none;
            padding: 4px 4px;
            color: white;
        }
        .navbar li a:hover{
            background-color: red;
        }
        .head li{
            float:left;
            color:white;
            font-size: 23px;
        }
        .head li img{
                
                height: 41px;
                width: 41px;
                margin: -10px -21px;
                background-color: white;
                
            }
    
    .heading h1{
            text-align:center;
            margin: 40px auto;
            
            border: 3px solid black;
            background-color:#192f42;
            color:white;
            width:300px;
            padding: 10px 2px;
            display:inline-block;
            position:absolute;
                top: 30px;
            left: 564px;
        }
    .data{
        font-size: 23px;
        background-color:#ffffffe3;
        width: 1149px;
        height: 526px;
        padding: 35px 35px;
        margin: auto;
        position: absolute;
        top: 166px;
        left: 126px;
        
       
    }
 
    .data input{
        margin: 13px 10px;
        margin-left: 8cm;
        font-size: 20px;
        align-content: center;
    }
    .data label{
        font-size: 23px;
        position: absolute;
        margin: 12px 23px;
        align-content: center;
    }
    input[type=submit]{
            text-align: center;
            margin:auto 259px;
            padding:5px;
            background-color: #113044;
            cursor: pointer;
            width:300px;
            color:white;
            font-size: 23px;
        }
        input[type=date]{
            font-size: 20px;
            margin-left: 307px;
            width: 251px;
        }
    
        
        
</style>
</head>

  
    <body>
        
        <header>
        <nav class="navbar">
            <div class="head">
                    <li><img src="https://pic.onlinewebfonts.com/svg/img_118990.png" alt="alt"/>
                    <li><b>Employee Manager</b></li>
                </div>
            <ul>
                
                <li><a href="homepage">logout</a></li>
                <li><a href="dashboard">Home</a></li>  
                
            </ul>
        </nav>
        </header>
    
        <br>
        <%
            String ida=request.getParameter("ida");
         
            %>

     
        <div class="heading"  align="center">
           
           <h1>Employee Details</h1><br>
           <br>
           <br>
           
        </div>
        

   
              
        <form action="processform4" method="post">
            <div align="center">
           
                <div align="center">
           
            <div class="data" align="center">
                <div class="row">
                <label> Employee Id </label>
          <input type="text" name="a" value="<%out.println(ida);%>" readonly>
            <label>Employee Name</label>
           <input type="text" name="b">
            </div>
            <br>
            
            <div class="row"><!-- comment -->
             <label>City </label>
           <input type="text" name="c">
            <label>Date of Joining</label><!-- comment --> 
                 <input type="date" name="d">
            </div>
            <br>
            <div class="row"><!-- comment -->
                <label> Pin code</label>
                 <input type="number" name="e">
                 <label>Email Id </label>
                 <input type="text" name="f">
            </div>
            <br>
            
             <div class="row">
                  <label>Mobile Number</label> 
                <input type="text" name="g">
                 
                 <label>State</label>
                 <input type="text" name="h">
             </div>
            <br>
             <div class="row">
                 <label>Gender</label>
                 <input type="text" name="i">
           

                 <label>Grade id </label>
                 <input type="number" name="j">
             </div>
            <br>
             
             <div class="row">
                 <label>Department ID</label>
                 <input type="number" name="k">
                 <label>Department Name</label>
                 <input type="text" name="l">
             </div>
            <br>
            <br>
            <div ALIGN="CENTER">
            <input type="submit" value="add">
            <br>
             <br>
              
             </div>  
              <br>
            </div>
            </div>
             
            
        </form>
   
   
  
        
        
        

    </body>
</html>
