<%-- 
    Document   : login
    Created on : 24-Jan-2023, 2:38:19 pm
    Author     : Tanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <style>
        body{
            background-image: url("https://www.hec.edu/sites/default/files/styles/newsroom_media/public/2019-06/Business%20focus-%20banner%20new%20website%20.png?itok=UjepEaEX");
            background-repeat: no-repeat;
            background-size: 100%;
        }
        
        *{
            font-family: sans-serif;
        }
        form{
            border: 3px solid transparent;
            margin: 51px auto;
            padding: 65px 42px;
            background-color: #ffffffe3;
            width: 288px;
            font-size: 23px;
        }
        h1{
            text-align:center;
            margin: 40px auto;
            
            border: 3px solid transparent;
            background-color: #ccf1fcd6;
            width:265px;
            padding: 10px 2px;
        }
        
        input[type=password]{
            border-radius: 7px;
            font-size: 24px;
            margin:12px 0px;
            
        }
        input[type=text]{
            border-radius: 7px;
            font-size: 24px;
            margin: 12px 0px;
        }
        input[type=submit]{
            text-align: center;
            margin:auto -3px;
            padding:5px;
            background-color: #113044;
            cursor: pointer;
            width:300px;
            color:white;
            font-size: 23px;
            border-radius: 7px;
        }
        
        .formerror{
            color:red;
            font-size: 15px;
        }
        
        .fp a{
            color:#113044;
            font-size: 18px;
             margin: 10px 10px;
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
                var name= document.forms['myForm']["b"].value;
                if(name ==""){
                    seterror("name","*this field is required");
                    returnval=false;
                }
                
                var pass= document.forms['myForm']["c"].value;
                if(pass == ""){
                    seterror("pass","*this field is required");
                    returnval=false;
                }
                  
                  return returnval;
            }
        </script>
    
    </head>
    <body>
        
        
        <h1><b>Admin Login</b></h1>
        
        <form action="processform" name="myForm" onsubmit="return validateForm()" method="post">
            

            <br>
            <div class="formdesign" id="name">
            Your Username <input type="text" name="b" placeholder="Enter Username"><b><span class="formerror"></span></b>
            </div>
            <br>
            <br>
            <br>
             <div class="formdesign" id="pass">
            Your Password <input type="password" name="c" placeholder="Enter Password"><b><span class="formerror"></span></b>
             </div>
            <br>
            <br>
            
            
            <input type="submit" value="confirm">
            <br>
            <br>
            <div class="fp">
                <a href="forgotpass">Forgot password?</a>
            </div>
            
        </form>
        
        
    </body>
</html>

