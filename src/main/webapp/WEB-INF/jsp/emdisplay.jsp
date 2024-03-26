<%-- 
    Document   : emdisplay
    Created on : 11-Feb-2023, 4:10:29 pm
    Author     : Tanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>employees</title>
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
  <style>
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
   
   body{
            background-image: url("https://i.ytimg.com/vi/tDKU1YikgGo/maxresdefault.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
        }
   </style>
    </head>
    <body>
        <h1 style="text-align:center;color: #ffffff;background-color: #003366">Employee Details</h1>
        <br>

     
        <nav class="navbar bg-dark" data-bs-theme="dark">
  <div class="container-fluid">
    <form class="d-flex" role="search">              
      <input class="form-control me-2" type="search" placeholder="Search by emp Id" aria-label="Search" id="myInput" onkeyup="searchFun()">
      <button><i class="bi bi-search"></i></button>
    </form>
  </div>
</nav>
   <br><br>
        <table id="myTable" align="center" border="10" width="100" style="width:70%" class="table table-hover table-dark">
       
        <thead>
           <tr>
               <th>Empid</th>
               <th>username</th>
               <th>password</th>
               <th>Add details</th>
               <th>delete</th>

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
ResultSet rs=st.executeQuery("SELECT * FROM employee ");
while(rs.next())
{
    String ida=rs.getString("empid");
      
   %>
           
           <tr>
        <td><%=rs.getInt(3)%></td>
       <td><%=rs.getString(1)%></td>
       <td><%=rs.getString(2)%></td>
       <td><button> <a href="Edetails?ida=<%=ida%>"/>add</button></td>
       
       <td><button onclick="del(<%=rs.getInt(3)%>)" class="openModal">delete</button>
       </td>
       
           </tr>
               
           
      <div class="modal">
        <div class="modalContent">
       <span onclick="hideModal()" class="close">×</span>
       <p>Are you sure you want to delete</p>
       <form action="deleteform" method="post">
       <input id="delInput" type="hidden" name="a">
            
       <input class="del" type="submit"  onclick="hideModal()" value="delete">
       
       
               </form>
       <button class="cancel" onclick="hideModal()">Cancel</button> 
      
   </div>
    </div>
           
             
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
           
           <h3><a href="addemployee"><button type="button" class="btn btn-primary">Back</button></a></h3>
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
    
    <script>
        function del(id){
        document.getElementById('delInput').value = id;
        
        document.getElementsByClassName('modal')[0].style.display = 'block';
        }
        
        function hideModal() {
      document.getElementsByClassName('modal')[0].style.display = 'none';
          }
</script>

    
</html>
