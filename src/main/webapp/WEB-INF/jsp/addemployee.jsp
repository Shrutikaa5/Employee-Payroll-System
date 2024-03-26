<%-- 
    Document   : addemployee
    Created on : 25-Jan-2023, 12:22:05 pm
    Author     : Tanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            margin: 36px auto;
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
            width:337px;
            height:770px;
            border-radius: 10px;
            margin:-18px 0px;
            padding:5px 5px;
        }
        form{
            border: 3px solid transparent;
            margin: 100px auto;
            padding: 63px 50px;
            background-color: #ffffffe3;
            width: 314px;
            font-size: 23px;
            display:inline-block;
            position:absolute;
            top:105px;
            left:694px;
            
        }
        .heading h1{
            text-align:center;
            margin: 40px auto;
            
            border: 3px solid black;
            background-color: #192f42;
            color:white;
            width:300px;
            padding: 10px 2px;
            display:inline-block;
            position:absolute;
            top:65px;
            left:748px;
        }
        input{
            font-size: 23px;
            
        }
        input[type=submit]{
            text-align: center;
            margin:auto 9px;
            padding:5px;
            background-color: #113044;
            cursor: pointer;
            width:300px;
            color:white;
        }
        .formerror{
            color:red;
            font-size: 15px;
        }
        
        

        </style>
        
                <script>
            function clearErrors(){
                errors=document.getElementsByClassName('formerror');
                for(let item of errors)
                {
                    item.innerHTML="";
                }
            }
            function seterror(id,error){
                element=document.getElementById(id);
                element.getElementsByClassName('formerror')[0].innerHTML=error;
            }
            
            function validateForm(){
                var returnval=true;
                clearErrors();
                var name= document.forms['myForm']["g"].value;
                if(name.length<3){
                    seterror("name","*Username should  be more than 2 character");
                    returnval=false;
                }
              
                if(name == ""){
                    seterror("name","*this field is required");
                    returnval=false;
                }
                
                var pass= document.forms['myForm']["h"].value;
                if(pass == ""){
                    seterror("pass","*this field is required");
                    returnval=false;
                }
                
                var ids= document.forms['myForm']["i"].value;
                if(ids==""){
                    seterror("ids","*this field is required");
                    returnval=false;
                }
                  
                  return returnval;
            }
        </script>
        


    
    <body>

        <header>
        <nav class="navbar">
            <div class="head">
                    <li><img src="https://pic.onlinewebfonts.com/svg/img_118990.png" alt="alt"/>
                    <li><b>Employee Manager</b></li>
                </div>
            <ul>
                
                <li><a href="homepage" onclick="return confirm('Are you sure to logout?')">logout</a></li>
                <li><a href="dashboard">Home</a></li>  
                
            </ul>
        </nav>
        </header>
        
        
        
        <br>
        
        
        
        <div class="list"><!-- comment -->
            <h1>Welcome Admin</h1>
            <h2><a href="addemployee">Add New Employee</a></h2>
            <h2><a href="erdisplay">Display Employeedetails</a></h2>
            <h2><a href="leaveapp">Leave applications</a></h2>
            <h2><a href="depdisplay">Display Department</a></h2>
            <h2><a href="grdisplay">Display Grade details</a></h2>
            <h2><a href="sfc">Prepare Monthly Salary</a></h2>
            <h2><a href="dsalary">Display Salary Reports</a></h2>
        </div>
        
            <div class="heading">
              
                <h1><b>Add Employee</b></h1>
                
            </div>
        <form action="processform3" name="myForm" onsubmit="return validateForm()" method="post">
            
            <div class="formdesign" id="name">
                
                <br>
            Provide employee's Username <input type="text" name="g"><b><span class="formerror"></span></b>
            </div>
            <br>
            <br>
            
            <div class="formdesign" id="pass">
            Set Their Password <input type="password" name="h"><b><span class="formerror"></span></b>
            </div>
            <br>
            <br>
            
            <div class="formdesign" id="ids">
            Set Their id <input type="number" name="i"><b><span class="formerror"></span></b>
            <br>
            <br>
            </div>
            
            <input type="submit" value="add employee"><b><span class="formerror"></span></b>
            
            <br>
             <br>
             <a href="emdisplay">DISPLAY RECORDS</a> 
               
            
        </form>
        
        
    </body>
</html>
