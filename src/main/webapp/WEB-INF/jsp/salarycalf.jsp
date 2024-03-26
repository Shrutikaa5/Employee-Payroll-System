<%-- 
    Document   : salarycalf
    Created on : 25-Feb-2023, 3:07:36 pm
    Author     : shruti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!---
 salary calculate
 enter basic salary
 cal
 ta=15% of basic
 da=20% of basic
 hra=50% of basic
 pf=less 8% of basic
 net or total show basic+ta+da+hra-pf

onblur => event to loose focus 
tab or click outside
!--->
 
 <style>
             *{
            
            font-family: sans-serif;
            margin:0px;
            padding:0px;
            
        } 
     body{
         background-image: url("https://images.unsplash.com/photo-1557683316-973673baf926?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2029&q=80");
            background-repeat: no-repeat;
            background-size: 100%;
            background-size: 300vh;
     }
     .data{
            border: 3px solid transparent;
                margin: 100px auto;
                padding: 24px 35px;
            border-radius: 39px;
            background-color: #ffffffe3;
            width: 547px;
            font-size: 18px;
            display: inline-block;
            position: absolute;
            top:63px;
            left: 391px;
            
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
            background-color: #192f42;
            color:white;
            width:300px;
            padding: 10px 2px;
            display:inline-block;
            position:absolute;
            top: 43px;
            left: 554px;
        }
        input{
            font-size: 18px;
            
        }
        .button1 button{
            text-align: center;
            margin:auto 9px;
            padding:5px;
            background-color: #113044;
            cursor: pointer;
            width:200px;
            color:white;
            font-size:18px;
            display:inline-block;
            position:absolute;
            top: 401px;
            left: 586px;
        }
        .button2 button{
            text-align: center;
            margin:auto 9px;
            padding:5px;
            background-color: #113044;
            cursor: pointer;
            width:200px;
            color:white;
            font-size:18px;
            display:inline-block;
            position:absolute;
                top: 791px;
            left: 745px;
            
        }
        input[type=submit]
        {
            text-align: center;
            margin:auto 9px;
            padding:5px;
            background-color: #113044;
            cursor: pointer;
            width:200px;
            color:white;
            font-size:18px;
        }
        
 </style> 
<script>
    function sal()
    {
        var basic,ta,da,hra,pf,ma,pt,net;
        basic=document.getElementById("s").value;
        if (basic>=40000)
        {
        ta=basic*15/100;
        da=basic*20/100;
        hra=basic*50/100;
        pf=basic*8/100;
        ma=basic*5/100;
        pt=basic*10/100;
        }
       else if(basic<40000 && basic>30000)
       {
        ta=basic*12/100;
        da=basic*18/100;
        hra=basic*40/100;
        pf=basic*6/100;
        ma=basic*3/100;
        pt=basic*8/100;
           
       }
       else if(basic<30000 && basic>20000)
       {
        ta=basic*10/100;
        da=basic*15/100;
        hra=basic*30/100;
        pf=basic*4/100;
        ma=basic*2/100;
        pt=basic*6/100;
           
       }
       else{
        ta=basic*8/100;
        da=basic*10/100;
        hra=basic*20/100;
        pf=basic*2/100;
        ma=basic*1/100;
        pt=basic*4/100;
           
       }
           
        net=parseInt(basic)+parseInt(ta)+parseInt(da)+parseInt(hra)+parseInt(ma)-parseInt(pt)-parseInt(pf);
        document.getElementById("ta").value=ta;
        document.getElementById("da").value=da;
        document.getElementById("hra").value=hra;
        document.getElementById("pf").value=pf;
        document.getElementById("ma").value=ma;
        document.getElementById("pt").value=pt;
        document.getElementById("net").value=net;
        
        
      

    }
    function prt()
    {
        window.print();
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
    
    
     <div class="heading">
              
                <h1><b>Salary Generation</b></h1>
                
            </div>
    
    <div class="data">
         <form action="processform31" method="post">
Enter Employee Id:<input type="text"  name="id"><br><br>
Enter Name: <input type="text"  name="n"><br><br>
Enter Salary_Month: <input type="text"  name="sm"><br><br>
Enter Year: <input type="text"  name="ye"><br><br>
enter basic salary: <input type="text" id="s" name="s" onblur="sal()"><br><br><br><br>

Travelling Allowance: <input type ="text" id="ta" name="ta" readonly><br><br>
Dearness Allowance: <input type ="text" id="da" name="da" readonly><br><br>
House Rent Allowance: <input type ="text" id="hra" name="hra" readonly><br><br>
Provident Fund: <input type ="text" id="pf" name="pf" readonly><br><br>
Medical Allowance: <input type ="text" id="ma" name="ma" readonly><br><br>
Profession Tax: <input type ="text" id="pt" name="pt" readonly><br><br>
Net Salary: <input type ="text" id="net" name="net" readonly><br><br>
<br>
<input type="submit" value="add">



    </div>
</form>
        <div class="button1">
        <button onclick="sal()">salary</button><br><br>
        </div>
        <div class="button2" >
        <button onclick="prt()">print</button>
        </div>
</body>
</html>