<%-- 
    Document   : salarydisplay
    Created on : 03-Feb-2023, 12:09:48 am
    Author     : Tanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>salary display</title>
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
        <h1 style="text-align:center;color: #ffffff;background-color: #003366">Salary Details Record</h1>
        <br>

   <br><br>
        <table id="myTable" align="center" border="10" width="100" style="width:70%" class="table table-hover table-dark">
       
        <thead>
           <tr>
               <th>EMPID</th>
               <th>NAME</th>
               <th>SALARY_MONTH</th>
               <th>YEAR</th>
               <th>BASIC</th>
               <th>TRAVELLING ALLOWANCE</th>
               <th>DEARNESS ALLOWANCE</th>
               <th>HOUSE RENT ALLOWANCE</th>
               <th>PROVIDENT FUND</th>
               <th>MEDICAL ALLOWANCE</th>
               <th>PROFESSION TAX</th>
               <th>NET SALARY</th>
           </tr>
           </thead>
           <tbody>
           <%
               
               String O=(String)  request.getAttribute("empid");
           Connection con=null;
        Statement st=null;
           try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
st= con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM salary where empid="+O);
Thread.sleep(1000);
while(rs.next())
{
      
   %>
           
           <tr>
        <td><%=rs.getInt(1)%></td>
       <td><%=rs.getString(2)%></td>
       <td><%=rs.getString(3)%></td>
       <td><%=rs.getInt(4)%></td>
       <td><%=rs.getInt(5)%></td>
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
           
           <h3><a href="Edashboard"><button type="button" class="btn btn-primary">Back</button></a></h3>
                     
  
    </body>
</html>