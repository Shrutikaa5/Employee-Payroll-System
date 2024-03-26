<%-- 
    Document   : outputgradedisp
    Created on : 27-Jan-2023, 8:37:24 pm
    Author     : Tanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
       
        <title>Display Information</title>

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
            
    
    label{
        width:212px;
        display:inline-block;
            margin: 10px 55px;
            font-size:23px;
    }
    .data{
        background-color:#ffffffe3;
        width: 809px;
    
    border-radius: 10px;
    margin-top: 80px;
    padding: 20px 64px;
    display: inline-block;
    position: absolute;
    left: 294px;
    top: 63px;
    }
    
    .data b{
        font-size:23px
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
       String l=(String)  request.getAttribute("GID");
       String x=(String)  request.getAttribute("DID");
       String y=(String)  request.getAttribute("DNA");
       String m=(String)  request.getAttribute("NA");
       String n=(String)  request.getAttribute("SN");
       String o=(String)  request.getAttribute("GB");
       String p=(String)  request.getAttribute("GTA");
       String q=(String)  request.getAttribute("GDA");
       String r=(String)  request.getAttribute("GHRA");
       String s=(String)  request.getAttribute("GMA");
       String u=(String)  request.getAttribute("GPF");
       String v=(String)  request.getAttribute("GPT");
   %>
   <div align="center">
                    <div class="data">
                        <br>
                     <label>Grade ID </label>  <b><%=l%></b>
                     
                     <hr>
                     <br><br>
                     <div class="row">   
                     <label>Dept Id</label> <b><%=x%></b>
                    <label>Department Name</label> <b><%=y%></b>
                     </div>
                     <br>
                     <div class="row">   
                     <label>Grade Name</label> <b><%=m%></b>
                    <label>Grade Short Name</label> <b><%=n%></b>
                     </div>
                     <br>
                     <div class="row">  
                     <label>Basic</label> <b><%=o%></b>
                     <label>Dearness Allowance</label> <b><%=p%></b>
                     </div>
                     <br>
                     <div class="row">  
                     <label>Travel Allowance</label> <b><%=q%></b>
                     <label>HRA</label> <b><%=r%></b>
                     </div>
                     <br>
                     <div class="row">  
                     <label>Medical Allowance</label>  <b><%=s%></b>
                     <label>Provident Fund</label>  <b><%=u%></b>
                     </div>
                     <br>
                     <div class="row">  
                     <label>Professional Tax</label> <b><%=v%></b>
                     </div>
                     <br><br>         
             </div>
   </div>
                    
    
     

    </body>
</html>

