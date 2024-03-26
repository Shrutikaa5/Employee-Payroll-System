<%-- 
    Document   : grdisplay
    Created on : 03-Feb-2023, 12:09:48 am
    Author     : Tanya
--%>
<%-- 
    Document   : grdisplay
    Created on : 03-Feb-2023, 12:09:48 am
    Author     : Tanya
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>grade display</title>
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
        <h1 style="text-align:center;color: #ffffff;background-color: #003366">Grade Details Record</h1>
        <br>
<!--        <input type ="text" name="" id="myInput" placeholder="search....." style="width:50%; align-content: center"onkeyup="searchFun()">-->
     
        <nav class="navbar bg-dark" data-bs-theme="dark">
  <div class="container-fluid">
    <form class="d-flex" role="search">              
      <input class="form-control me-2" type="search" placeholder="Search by grade Id" aria-label="Search" id="myInput" onkeyup="searchFun()">
      <button><i class="bi bi-search"></i></button>
    </form>
  </div>
</nav>
   <br><br>
        <table id="myTable" align="center" border="10" width="100" style="width:70%" class="table table-hover table-dark">
       
        <thead>
           <tr>
               <th>GRADE_ID</th>
               <th>DEPT_ID</th>
               <th>DEPT_NAME</th>
               <th>GRADE_NAME</th>
               <th>GRADE_SHORT_NAME</th>
               <th>GRADE_BASIC</th>
               <th>GRADE_TA</th>
               <th>GRADE_DA</th>
               <th>GRADE_HRA</th>
               <th>GRADE_MA</th>
               <th>GRADE_PF</th>
               <th>GRADE_PT</th>
           </tr>
           </thead>
           <tbody>
           <%
           Connection con=null;
        Statement st=null;
           try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
st= con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM GRADE");
Thread.sleep(1000);
while(rs.next())
{
      
   %>
           
           <tr>
        <td><%=rs.getInt(1)%></td>
       <td><%=rs.getInt(2)%></td>
       <td><%=rs.getString(3)%></td>
       <td><%=rs.getString(4)%></td>
       <td><%=rs.getString(5)%></td>
       <td><%=rs.getInt(6)%></td>
       <td><%=rs.getInt(7)%></td>
       <td><%=rs.getInt(8)%></td>
       <td><%=rs.getInt(9)%></td>
       <td><%=rs.getInt(10)%></td>
       <td><%=rs.getInt(11)%></td>
       <td><%=rs.getInt(12)%></td>
           </tr>
        
   <%
           }
}
           catch(Exception e)
        {
            System.out.println(e.getMessage());
        }

        finally
{
        st.close();
        con.close();
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