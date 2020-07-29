<%-- 
    Document   : view_desk_attendant
    Created on : Jun 22, 2020, 5:26:24 PM
    Author     : hp world
--%>

<%@page import="com.housekeeping.entities.Desk_attendant"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page import="com.housekeeping.dao.DeskDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Desk attendant details</title>
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
      <th scope="col">Username</th>
      <th scope="col">Password</th>
       <th scope="col">Duty</th>
      <th scope="col">Shift</th>
      <th scope="col">Salary</th>
      
      
    </tr>
  </thead>
 
                    
                   
  <tbody>
          <%
                    DeskDao dd=new DeskDao(ConnectionProvider.getConnection());
                    ArrayList<Desk_attendant> list=dd.getDeskAttendantDetails();
                    for(Desk_attendant da:list){
                    %>
    <tr>
      
      <td><%= da.getD_id()%></td>
      <td><%= da.getD_name()%></td>
      <td><%= da.getD_contNo()%></td>
      <td><%= da.getD_usernme()%></td>
      <td><%= da.getD_password()%></td>
      <td><%= da.getD_duty()%></td>
      <td><%= da.getD_shift()%></td>
      <td><%= da.getD_sal()%></td>
 
      <td><a href="edit_desk_attendant.jsp?id=<%= da.getD_id()%>">update</a></td>
      <td><a href="deleteDeskAttendant.jsp?sid=<%= da.getD_id()%>"><i class="fa fa-trash-o"></i></a></td>
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
