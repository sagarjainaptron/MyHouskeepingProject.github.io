<%-- 
    Document   : view inspect_attendant
    Created on : Jul 1, 2020, 2:55:19 PM
    Author     : hp world
--%>

<%@page import="com.housekeeping.entities.Inspect_attendant"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.housekeeping.dao.RoomDao"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inspect attendant details</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="container">
              <div class="container-fluid">
                <table class="table table-striped table-lg table-dark" >
  <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Contact_No</th>
       <th scope="col">Date of joining</th>
      <th scope="col">Shift</th>
      <th scope="col">Salary</th>
     <th scope="col">Username</th>
      <th scope="col">Password</th>
      
      
    </tr>
  </thead>
 
                    
                   
  <tbody>
          <%
                    RoomDao rd=new RoomDao(ConnectionProvider.getConnection());
                    ArrayList<Inspect_attendant> list=rd.getInspectAttendantDetails();
                    for(Inspect_attendant ia:list){
                    %>
    <tr>
      
      <td><%= ia.getId()%></td>
      <td><%= ia.getName()%></td>
      <td><%= ia.getCont_no()%></td>
      <td><%= ia.getDoj()%></td>
      <td><%= ia.getShift()%></td>
      <td><%= ia.getSal()%></td>
      <td><%= ia.getUsername()%></td>
      <td><%= ia.getPassword()%></td>
      <td><a href="edit_inspect_attendant.jsp?id=<%= ia.getId() %>">update</a></td>
        <td><a href="deleteInspectAttendant.jsp?sid=<%= ia.getId()%>"><i class="fa fa-trash-o"></i></a></td>
    </tr>
  <br>
    
 <%     
                    }
                    %>
                  
                    
    
  </tbody>
   
</table>
                    
                    
                    
                
            </div>
        </div>
           
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>    
    </body>
</html>
