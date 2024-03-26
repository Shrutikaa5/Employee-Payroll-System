<%-- 
    Document   : welcomeadmin
    Created on : 24-Jan-2023, 4:28:16 pm
    Author     : Tanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin welcome page</title>
       
        
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
        
        .count2{
            border: 3px solid transparent;
            background-color: white;
            color: #fff;
            display:inline-block;
            width:250px;
            height:215px;
            margin:auto;
            padding:auto;
            box-sizing: border-box;
            box-shadow: 0 10px #999;
            border:1px solid black;
            border-radius: 40px;
            cursor: pointer;
            transition: all .5s ease-in-out;
            
            position: absolute; 

            top: 160px;
            left: 547px;
        }
        .count2:hover{background-color: #70b9da}
        .count2:active{
            background-color: #70b9da;
            box-shadow: 0 5px rgb(25, 25, 25);
            transform: translateY(5px);
        }
        .count2 h1{
            color:black;
            font-size: 24px;
            outline: none;
            
        }
        .count2 h2{
            color:black;
            font-size: 30px;
            text-align: center;
            background: transparent;
        }
        
         
        .count3{
            border: 3px solid transparent;
            background-color: white;
            color: #fff;
            display:inline-block;
            width:250px;
            height:215px;
            margin:auto;
            padding:auto;
            box-sizing: border-box;
            box-shadow: 0 10px #999;
            border:1px solid black;
            border-radius: 40px;
            cursor: pointer;
            transition: all .5s ease-in-out;
            
            position: absolute; 

                top: -2px;
            left: 405px; 
        }
        .count3:hover{background-color: #70b9da}
        .count3:active{
            background-color: #70b9da;
            box-shadow: 0 5px rgb(25, 25, 25);
            transform: translateY(5px);
        }
        .count3 h1{
            color:black;
            font-size: 24px;
            outline: none;
            
        }
        .count3 h2{
            color:black;
            font-size: 30px;
            text-align: center;
            background: transparent;
        }

    </style>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    <body>
    <canvas id="myChart" style="width:25%;max-width: 25%;position: absolute;top: 55%;left: 70%;height: 39%;background: white"></canvas>       
    
    
 <%int A[];    //declaring array
A = new int[20];%>

<%
              
            Connection con=null;
        PreparedStatement stmt1=null;
          PreparedStatement stmt2=null;
           PreparedStatement stmt3=null;

           try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");
stmt1=con.prepareStatement("select count(*) from edetails where dept_id=1");
stmt2=con.prepareStatement("select count(*) from edetails where dept_id=2");
stmt3=con.prepareStatement("select count(*) from edetails where dept_id=3");


ResultSet rs1=stmt1.executeQuery();
ResultSet rs2=stmt2.executeQuery();
ResultSet rs3=stmt3.executeQuery();
       while(rs1.next())
       while(rs2.next())
       while(rs3.next())
       {{{
       A[0] = rs1.getInt(1);
       A[1] = rs2.getInt(1);
       A[2] = rs3.getInt(1);
       
       
%>          
   
       
<%          
       }}}
       System.out.println(A[0]);
}
       catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        finally
{
        stmt1.close();
 stmt2.close();
 stmt3.close();
        con.close();
}

   %>
 
    
<script>
var xValues = ["Sales", "Finance","Management"];
var yValues = [<%=A[0]%>,<%=A[1]%>,<%=A[2]%>];



var barColors = [
  "#b91d47",
  "#00aba9",
  "#2b5797",
  "#e8c3b9",
  "#1e7145"
];

new Chart("myChart", {
  type: "pie",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    title: {
      display: true,
      text: "Employee Count"
    }
  }
});
</script> 


<canvas id="myChart1" style="width:100%;max-width:600px;position: absolute;top: 55%;left: 26%;background: white;"></canvas>
<%
int B[];    //declaring array
B = new int[20];
%>
<%
              
         Connection con1=null;
        PreparedStatement stmt4=null;
          PreparedStatement stmt5=null;
           PreparedStatement stmt6=null;
           PreparedStatement stmt7=null;
          PreparedStatement stmt8=null;
           PreparedStatement stmt9=null;
           PreparedStatement stmt10=null;
          PreparedStatement stmt11=null;
           PreparedStatement stmt12=null;
           PreparedStatement stmt13=null;
          PreparedStatement stmt14=null;
           PreparedStatement stmt15=null;

           try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");
stmt4=con1.prepareStatement("select sum(net) from salary where month='january'");
stmt5=con1.prepareStatement("select sum(net) from salary where month='febrauary'");
stmt6=con1.prepareStatement("select sum(net) from salary where month='march'");
stmt7=con1.prepareStatement("select sum(net) from salary where month='april'");
stmt8=con1.prepareStatement("select sum(net) from salary where month='may'");
stmt9=con1.prepareStatement("select sum(net) from salary where month='june'");
stmt10=con1.prepareStatement("select sum(net) from salary where month='july'");
stmt11=con1.prepareStatement("select sum(net) from salary where month='august'");
stmt12=con1.prepareStatement("select sum(net) from salary where month='september'");
stmt13=con1.prepareStatement("select sum(net) from salary where month='october'");
stmt14=con1.prepareStatement("select sum(net) from salary where month='november'");
stmt15=con1.prepareStatement("select sum(net) from salary where month='december'");

ResultSet rs4=stmt4.executeQuery();
ResultSet rs5=stmt5.executeQuery();
ResultSet rs6=stmt6.executeQuery();
ResultSet rs7=stmt7.executeQuery();
ResultSet rs8=stmt8.executeQuery();
ResultSet rs9=stmt9.executeQuery();
ResultSet rs10=stmt10.executeQuery();
ResultSet rs11=stmt11.executeQuery();
ResultSet rs12=stmt12.executeQuery();
ResultSet rs13=stmt13.executeQuery();
ResultSet rs14=stmt14.executeQuery();
ResultSet rs15=stmt15.executeQuery();
       while(rs4.next())
       while(rs5.next())
       while(rs6.next())
       while(rs7.next())
       while(rs8.next())
       while(rs9.next())
       while(rs10.next())
       while(rs11.next())
       while(rs12.next())
       while(rs13.next())
       while(rs14.next())
       while(rs15.next())
       {{{{{{{{{{{{
       B[0] = rs4.getInt(1);
       B[1] = rs5.getInt(1);
       B[2] = rs6.getInt(1);
       B[3] = rs7.getInt(1);
       B[4] = rs8.getInt(1);
       B[5] = rs9.getInt(1);
       B[6] = rs10.getInt(1);
       B[7] = rs11.getInt(1);
       B[8] = rs12.getInt(1);
       B[9] = rs13.getInt(1);
       B[10] = rs14.getInt(1);
       B[11] = rs15.getInt(1);
       
       
%>          
   
       
<%          
       }}}}}}}}}}}}
     System.out.println(B[5]);
}   
       catch(Exception e)
{
            System.out.println(e.getMessage());
        }
        finally
{

 stmt4.close();
 stmt5.close();
 stmt6.close();
 stmt7.close();
 stmt8.close();
 stmt9.close();
 stmt10.close();
 stmt11.close();
 stmt12.close();
 stmt13.close();
 stmt14.close();
 stmt15.close();
 con1.close();
}

   %>



<script>
const x1Values =["janauary","febraury","march","april","may","june","july","august","september","october","november","december"];
const y1Values = [<%=B[0]%>,<%=B[1]%>,<%=B[2]%>,<%=B[3]%>,<%=B[4]%>,<%=B[5]%>,<%=B[6]%>,<%=B[7]%>,<%=B[8]%>,<%=B[9]%>,<%=B[10]%>,<%=B[11]%>];


new Chart("myChart1", {
  type: "line",
  data: {
    labels: x1Values,
    datasets: [{
      fill: false,
      lineTension: 0,
      backgroundColor: "rgba(0,0,255,1.0)",
      borderColor: "rgba(0,0,255,0.1)",
      data: y1Values
    }]
  },
 
   
  options: {
     
    legend: {display: false
 },
    scales: {
      yAxes: [{ticks: {min: 10000, max:1000000}}],
      
      }
       
     
    }
  
});
</script>


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
            <h2><a href="depdisplay">Display Departments</a></h2>
            <h2><a href="grdisplay">Display Grade details</a></h2>
            <h2><a href="sfc">Prepare Monthly Salary</a></h2>
            <h2><a href="dsalary">Display Salary Reports</a></h2>
            
        </div>
                 <div class="count2">

           <h1><b>Leave Applications</b></h1>

            <%

            Connection con2=null;
        PreparedStatement stmt16=null;
           try{
Class.forName("oracle.jdbc.driver.OracleDriver");  

//step2 create  the connection object  
con2=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");
stmt16=con2.prepareStatement("select count(*) from leave");
    ResultSet rs16=stmt16.executeQuery();
       while(rs16.next())
       {
%>          

            <h2><b><%=rs16.getString(1)%></b></h2>

<%          
       }
}
       catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        finally
{
        stmt16.close();
        con2.close();
}

   %>
   
   <div class="count3">

           <h1><b> Number Of Grades</b></h1>

            <%

            Connection con3=null;
        PreparedStatement stmt17=null;
           try{
Class.forName("oracle.jdbc.driver.OracleDriver");  

//step2 create  the connection object  
con3=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");
stmt17=con3.prepareStatement("select count(*) from grade");
    ResultSet rs17=stmt17.executeQuery();
       while(rs17.next())
       {
%>          

            <h2><b><%=rs17.getString(1)%></b></h2>

<%          
       }
}
       catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        finally
{
        stmt17.close();
        con3.close();
}
  %>          

    </body>
    
   
</html>
