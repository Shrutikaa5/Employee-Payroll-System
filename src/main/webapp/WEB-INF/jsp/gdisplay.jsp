<%-- 
    Document   : gdisplay
    Created on : 27-Jan-2023, 8:45:35 pm
    Author     : Tanya
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>grade display page</title>
    </head>
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

        h1{
            font-size: 30px;
            color:white;
            padding: 39px 42px;
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
        height: 178px;
        padding: 57px 35px;
        margin: 151px auto;
        
        
       
    }
 
    .data input{
            margin-left: 12cm;
            font-size: 31px;
        align-content: center;
    }
    .data label{
        font-size: 31px;
        position: absolute;
        margin:5px 23px;
        align-content: center;
    }
    input[type=submit]{
            text-align: center;
            margin: 64px 113px;
            padding:5px;
            background-color: #113044;
            cursor: pointer;
            width:300px;
            color:white;
            font-size: 23px;
        }
    </style>
    
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
        
        <br>
        
        <div class="heading">
           
           <h1>Display Grade Records</h1><br>
           <br>
           <br>
           
        </div>
        <form action="displayform1" method="post">
            <div align="center">
                <div class="data">
                    <label><h3>Enter Your Grade Id </h3></label>
                    <input type="text" name="k">
                    <br>
                    <br>
                    <input type="submit" value="confirm">
                </div>
            </div>
                
        </form>
    </body>
</html>
