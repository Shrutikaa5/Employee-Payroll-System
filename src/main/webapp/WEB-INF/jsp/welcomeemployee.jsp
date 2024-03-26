<%-- 
    Document   : welcomeemployee
    Created on : 24-Jan-2023, 5:08:34 pm
    Author     : Tanya
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>employee welcome page</title>
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
        
        .list h2{
            border: 2px solid black;
            margin: 45px auto;
            padding: 6px 5px;
            width:269px;
            background-color: white;
            border-radius: 16px;
            font-size: 23px;    
        }
        .list h2 a{
            
            text-decoration: none;
            color:black;
        }
        h1{
            font-size: 30px;
            color:white;
            padding: 39px 42px;
        }
        .list{
            display:inline-block;
            
            border:3px solid transparent;
            background-color: #113044;
            width: 391px;
            height:  652px;
            border-radius: 10px;
            margin: 47px 571px;
            padding: 5px 5px;
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
                <li><a href="homepage" onclick="return confirm('Are you sure to logout?')">logout</a></li>
                <li><a href="Edashboard">Home</a></li>  
                
            </ul>
        </nav>
        </header>
        
        
        
        <br>
        
        
        
        <div class="list" align="center"><!-- comment -->
            <h1>Welcome</h1>
            <h2><a href="outputdisp">Personal details</a></h2>
            <h2><a href="salarydisplay">Generated salary</a></h2>
            <h2><a href="outputgradedisp">Employee Grade details</a></h2>
            <h2><a href="leaveapplication">Apply Leave</a></h2>
            <h2><a href="passupdate">Update Your Username</a></h2>
        </div>
        
        
    </body>
</html>