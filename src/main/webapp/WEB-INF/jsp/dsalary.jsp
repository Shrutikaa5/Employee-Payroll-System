<%-- 
    Document   : dsalary
    Created on : 18-Apr-2023, 4:19:58 pm
    Author     : Tanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>employee details</title>
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
  
  <style>
      body{
            background-image: url("https://i.ytimg.com/vi/tDKU1YikgGo/maxresdefault.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
        }
        
  </style>
    </head>
    <body>
        <h1 style="text-align:center;color: #ffffff;background-color: #003366">Monthly Details</h1>
        <br>
        <nav class="navbar bg-dark" data-bs-theme="dark">
  <div class="container-fluid">
    <form class="d-flex" role="search">              
      <input class="form-control me-2" type="search" placeholder="Search by Dept Id" aria-label="Search" id="myInput" onkeyup="searchFun()">
      <button><i class="bi bi-search"></i></button>
    </form>
  </div>
</nav>
   <br><br>
        <table id="myTable" align="center" border="10" width="100" style="width:70%" class="table table-hover table-dark">
       
        <thead>
           <tr>
               <th>Employee_id</th>
               <th>Name</th>
               <th>Month</th>
               <th>Year</th>
               <th>Basic</th>
               <th>Net</th>
               
               
           </tr>
           </thead>
           <tbody>
           <%
           try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("SELECT empid,name,month,year,basic,net FROM salary ");
while(rs.next())
{
      
   %>
           
           <tr>
        <td><%=rs.getInt(1)%></td>
       <td><%=rs.getString(2)%></td>
       <td><%=rs.getString(3)%></td>
       <td><%=rs.getString(4)%></td>
       <td><%=rs.getString(5)%></td>
       <td><%=rs.getString(6)%></td>
       
       
           </tr>
             
   <%
           }
}
           catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
           
           %>
           </tbody>
</table>
           
           <h3><a href="dashboard"><button type="button" class="btn btn-primary">Back</button></a></h3>
           <script>
               
               const searchFun = () =>{
                   let filter = document.getElementById('myInput').value;
                   
                   let myTable = document.getElementById('myTable')
                   
                   let tr = myTable.getElementsByTagName('tr');
                   for(var i=0; i<tr.length; i++){
                       let td = tr[i].getElementsByTagName('td')[0];
                       if(td){
                           let textvalue = td.textContent || td.innerHTML;
                           
                           if(textvalue.indexOf(filter) > -1){
                               tr[i].style.display = "";
                           }else{
                               tr[i].style.display = "none";
                           }
                       }
                   }
                   

               }
               
           
           </script>          
  
           
   
  
    </body>
</html>

