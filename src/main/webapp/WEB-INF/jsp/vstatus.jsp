<%-- 
    Document   : vstatus
    Created on : 16-Feb-2023, 10:17:26 pm
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
        height: 391px;
        padding: 39px 18px;
        margin: 171px auto;
        
        
       
    }
 
    .data input{
            margin-left: 12cm;
            font-size: 31px;
        align-content: center;
    }
    .data label{
        font-size: 31px;
        position: absolute;
        margin: 25px -220px;
        align-content: center;
    }
    
    .row{
            margin: 25px 85px;
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
                <li><a href="Edashboard">Home</a></li>  
                
            </ul>
        </nav>
        </header>
        
     <% 
     
       String n=(String)  request.getAttribute("st");
        String O=(String)  request.getAttribute("till");
       String P=(String)  request.getAttribute("reason");
       String m=(String)  request.getAttribute("status");

       
    
   
   
                   

           
           %>
           <div class="data" align="center"><!-- comment -->

            <div class="row">
                    <label>Starting Date Of Leave &nbsp;&nbsp;&nbsp;&nbsp;<b><%=n%></b></label>
           
           <br>
            <br>
            
           </div>
           <div class="row">
                    <label>Ending Date Of Leave &nbsp;&nbsp;&nbsp;&nbsp;<b><%=O%></b></label>
           
           <br>
            <br>
           </div>
           <div class="row">
                    <label>Reason Of Applying For Leave &nbsp;&nbsp;&nbsp;&nbsp;<b><%=P%></b></label>
           
           <br>
            <br>
           </div>
               <div class="row">
                    <label>Status Of Application &nbsp;&nbsp;&nbsp;&nbsp;<b><%=m%></b></label>
           
           <br>
            <br>
           </div>
           
           
         
           </div>
           
    
       
     

    </body>
</html>
