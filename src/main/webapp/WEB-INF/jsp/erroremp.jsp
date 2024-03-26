<%-- 
    Document   : erroremp
    Created on : 31-Jan-2023, 2:05:14 pm
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
        
        .error{
            font-size: 15px;
            color:red;
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
                var name= document.forms['myForm']["a"].value;
                if(name ==""){
                    seterror("name","*this field is required");
                    returnval=false;
                }
                
                var pass= document.forms['myForm']["d"].value;
                if(pass == ""){
                    seterror("pass","*this field is required");
                    returnval=false;
                }
                  
                  return returnval;
            }
        </script>
    
    </head>
    <body>
        
        
        <h1><b>Employee Login</b></h1>
        
        <form action="processform1" name="myForm" onsubmit="return validateForm()" method="post">
            
            <div class="error">
                <%
                    String k= (String) request.getAttribute("eror");
                    %>
                   <b><%=k%></b>
            </div>
            <br>
            <div class="formdesign" id="name">
            Enter Your Username <input type="text" placeholder="Enter Username" name="a"><b><span class="formerror"></span></b>
            </div>
            <br>
            <br>
            <br>
             <div class="formdesign" id="pass">
            Enter Your Password <input type="password" placeholder="Enter Password" name="d"><b><span class="formerror"></span></b>
             </div>
            <br>
            <br>
            <br>
            <input type="submit" value="confirm">
            
        </form>
        
        
    </body>
</html>