<%-- 
    Document   : leaveapp
    Created on : 16-Feb-2023, 10:17:47 pm
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
  <style>
      
      body{
            background-image: url("https://i.ytimg.com/vi/tDKU1YikgGo/maxresdefault.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
        }
      
      .modal {
      text-align: center;
      display: none;
      position: fixed;
      z-index: 1;
      padding-top: 100px;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.4);
   }
   .modalContent {
      font-size: 20px;
      font-weight: bold;
      background-color: #fefefe;
      margin: auto;
      padding: 20px;
      border: 1px solid #888;
      width: 80%;
   }
   .close {
      color: rgb(255, 65, 65);
      float: right;
   }
   .close {
      color: rgb(255, 65, 65);
      float: right;
      font-size: 40px;
      font-weight: bold;
   }
.close:hover, .close:focus {
      color: #ff1010;
      cursor: pointer;
   }
.modalContent button {
      border: none;
      border-radius: 4px;
      font-size: 18px;
      font-weight: bold;
      padding: 10px;
   }
   .del {
      background-color: rgb(255, 65, 65);
   }
.del:hover {
      background-color: rgb(255, 7, 7);
   }
.cancel:hover {
      background-color: rgb(167, 167, 167);
   }
  </style>
  
    </head>
    <body>
        <h1 align="center">leave applications</h1>
        <br>
        
        <table align="center" border="10" width="100" style="width:100%" class="table table-hover table-dark">
        <thead>
           <tr>
               <th>Empid</th>
               <th>from</th>
               <th>till</th>
               <th>reason for leave</th>
               <th>status</th>
               <th>action</th>
               
               
           </tr>
           </thead>
           <tbody>
           <%
           
           try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  

Statement st= con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM leave ");
while(rs.next())
{
      
   %>
           
           <tr>
        <td><%=rs.getInt(1)%></td>
       <td><%=rs.getString(2)%></td>
       <td><%=rs.getString(3)%></td>
       <td><%=rs.getString(4)%></td>
       <td><%=rs.getString(5)%></td>
       <td><button onclick ="act(<%=rs.getInt(1)%>)"class="openModal">action</button>
       
       
       
           </tr>
           <div class="modal">
        <div class="modalContent">
       <span onclick="hideModal()" class="close">×</span>
       <p>approve or deny?</p>
       <form action="approve" method="post">
       <input id="aid" type="hidden" name="a">
            
       <input class="del" type="submit"  onclick="hideModal()" value="Approve">
       
       
               </form>
       <button class="cancel" onclick="hideModal()">Deny</button> 
      
   </div>
    </div>
             
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
           
           
   
  
    </body>
     <script>
        function act(id){
        document.getElementById('aid').value = id;
        
        document.getElementsByClassName('modal')[0].style.display = 'block';
        }
        
        function hideModal() {
      document.getElementsByClassName('modal')[0].style.display = 'none';
          }
</script>
</html>
