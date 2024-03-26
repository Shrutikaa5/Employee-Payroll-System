<%-- 
    Document   : outputdisp
    Created on : 27-Jan-2023, 5:26:24 pm
    Author     : Tanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            top:65px;
            left:748px;
        }



            .heading h1{
            text-align:center;
            margin: 40px -144px;
            
            border: 3px solid black;
            background-color:#192f42;
            color:white;
            width:300px;
            padding: 10px 2px;
            display:inline-block;
            
        }
    .data{
        font-size: 23px;
        background-color:#ffffffe3;
        width: 927px;
        height: 609px;
        padding: 42px 35px;
        margin: 18px auto;
        
        
       
    }
 
    .data input{
            margin-left: 12cm;
            font-size: 31px;
        align-content: center;
    }
    .data label{
        font-size: 31px;
        position: absolute;
        margin: -4px -211px;
        align-content: center;
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
                <li><a href="homepage" onclick="return confirm('Are you sure to logout?')">logout</a></li>
                <li><a href="Edashboard">Home</a></li>  
                
            </ul>
        </nav>
        </header>
        
     <% 
     String m=(String)  request.getAttribute("EPID");
       String n=(String)  request.getAttribute("EN");
        String O=(String)  request.getAttribute("CI");
       String P=(String)  request.getAttribute("DA");
        String Q=(String)  request.getAttribute("PI");
       String R=(String)  request.getAttribute("EM");
        String S=(String)  request.getAttribute("MO");
       String T=(String)  request.getAttribute("ST");
       String U=(String)  request.getAttribute("GN");
       String V=(String)  request.getAttribute("GI");
       String W=(String)  request.getAttribute("DI");
       String X=(String)  request.getAttribute("DP");
       
    
   
   
                   

           
           %>
           <div class="data" align="center"><!-- comment -->
                <div class="row">
                    <label>Your Employee Id &nbsp;&nbsp;&nbsp;&nbsp;<b><%=m%></b></label>
           
            <br>
             <br>
            </div>
            <div class="row">
                    <label>Name Of The Employee &nbsp;&nbsp;&nbsp;&nbsp;<b><%=n%></b></label>
           
           <br>
            <br>
           </div>
           <div class="row">
                    <label>City &nbsp;&nbsp;&nbsp;&nbsp;<b><%=O%></b></label>
           
           <br>
            <br>
           </div>
           <div class="row">
                    <label>Date of Joining &nbsp;&nbsp;&nbsp;&nbsp;<b><%=P%></b></label>
           
           <br>
            <br>
           </div>
               <div class="row">
                    <label>Pincode &nbsp;&nbsp;&nbsp;&nbsp;<b><%=Q%></b></label>
           
           <br>
            <br>
           </div>
           <div class="row">
                    <label>Email Id &nbsp;&nbsp;&nbsp;&nbsp;<b><%=R%></b></label>
           
           <br>
            <br>
           </div>
           <div class="row">
               <label>Mobile No. &nbsp;&nbsp;&nbsp;&nbsp;<b><%=S%></b></label>
           
           <br>
            <br>
           </div>
           <div class="row">
                    <label>State &nbsp;&nbsp;&nbsp;&nbsp;<b><%=T%></b></label>
           
           <br>
            <br>
           </div>
           <div class="row">
                    <label>Gender &nbsp;&nbsp;&nbsp;&nbsp;<b><%=U%></b></label>
           
           <br>
            <br>
           </div>
           <div class="row">
                    <label>Grade_Id &nbsp;&nbsp;&nbsp;&nbsp;<b><%=V%></b></label>
           
           <br>
            <br>
           </div>
           <div class="row">
                    <label>Department Id &nbsp;&nbsp;&nbsp;&nbsp;<b><%=W%></b></label>
           
           <br>
            <br>
           </div>
           <div class="row">
                    <label>Department &nbsp;&nbsp;&nbsp;&nbsp;<b><%=X%></b></label>
           
           <br>
            <br>
           </div>
           
           
           </div>
           
    
       
     

    </body>
</html>
