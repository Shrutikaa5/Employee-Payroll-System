<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update</title>
        
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
            background-size: 300vh;
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
                top: 30px;
            left: 564px;
        }
    .data{
        font-size: 23px;
        background-color:#ffffffe3;
        width: 1149px;
        height: 526px;
        padding: 35px 35px;
        margin: auto;
        position: absolute;
        top: 166px;
        left: 126px;
        
       
    }
 
    .data input{
        margin: 13px 10px;
        margin-left: 8cm;
        font-size: 20px;
        align-content: center;
    }
    .data label{
        font-size: 23px;
        position: absolute;
        margin: 12px 23px;
        align-content: center;
    }
    button{
            text-align: center;
            margin:auto 259px;
            padding:5px;
            background-color: #113044;
            cursor: pointer;
            width:300px;
            color:white;
            font-size: 23px;
        }
        input[type=date]{
            font-size: 20px;
            margin-left: 307px;
            width: 251px;
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
                <li><a href="dashboard">Home</a></li>  
                
            </ul>
        </nav>
        </header>
    
        <br>
        
        <div class="heading"  align="center">
           
           <h1>Update Details</h1><br>
           <br>
           <br>
           
        </div>
        
        
        <%
            String id=request.getParameter("id");
            int id2= Integer.parseInt(id);
            Connection con=null;
        PreparedStatement stmt=null;
            try
            {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");
            stmt=con.prepareStatement("select * from edetails where empid="+id2); 
            
            ResultSet rs=stmt.executeQuery();
            while(rs.next())
             {
            %>
            <form action="updform" method="post">
            <div align="center">
           
                <div align="center">
           
            <div class="data" align="center">
                <div class="row">
               
            <input type="hidden" name="id" value="<%out.println(id2);%>">
            
            <label>Employee Name</label>
           <input type="text" name="name" value="<%=rs.getString("ENAME")%>">
            </div>
            <br>
            <hr>
            
            <div class="row"><!-- comment -->
             <label>City </label>
           <input type="text" name="city" value="<%=rs.getString("CITY")%>">
            <label>Date of Joining</label><!-- comment --> 
                <input type="date" name="date" value="<%=rs.getString("DATE_OFJOINING")%>">
            </div>
            <br>
            <div class="row"><!-- comment -->
                <label> Pin code</label>
                <input type="text" name="pincode" value="<%=rs.getString("PINCODE")%>">                
                 <label>Email Id </label>
                  <input type="text" name="email" value="<%=rs.getString("EMAILID")%>">
            </div>
            <br>
            
             <div class="row">
                  <label>Mobile Number</label> 
                 <input type="text" name="mobile" value="<%=rs.getString("MOBILENO")%>">              
                 
                 <label>State</label>
                  <input type="text" name="state" value="<%=rs.getString("STATE")%>">
             </div>
            <br>
             <div class="row">
                 <label>Gender</label>
                <input type="text" name="gender" value="<%=rs.getString("GENDER")%>">
           
                 <label>Grade id </label>
                 <input type="text" name="gid" value="<%=rs.getString("GRADE_ID")%>">
             </div>
            <br>
             
             <div class="row">
                 <label>Department ID</label>
                 <input type="text" name="did" value="<%=rs.getString("DEPT_ID")%>">
                 <label>Department Name</label>
                 <input type="text" name="dept" value="<%=rs.getString("DEPARTMENT")%>">
             </div>
            <br>
            <br>
            <div ALIGN="CENTER">
            <button type="submit" class="button">Save</button>
            <br>
             <br>
              
             </div>  
              <br>
            </div>
            </div>
             
            
        </form>
                
                <%
            }
            }
        catch(Exception e)
        {
            System.out.println("e");
        }
        finally
{
        stmt.close();
        con.close();
}

                    %>
            
        
        
        
    </body>
</html>
