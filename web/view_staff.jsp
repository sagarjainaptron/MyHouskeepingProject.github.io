<%-- 
    Document   : add_staff
    Created on : Jun 18, 2020, 4:37:24 PM
    Author     : hp world
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.housekeeping.entities.Staff_update"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page import="com.housekeeping.dao.Staff_dao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cleaner details</title>
                      
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="container">
            
            <div>
                
            </div>
            
              <div class="container">
                <table class="table table-striped table-lg table-dark" >
  <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Date of Joining</th>
      <th scope="col">Duty</th>
      <th scope="col">Shift</th>
      <th scope="col">Salary</th>
      <th scope="col">Username</th>
      <th scope="col">Password</th>
      
    </tr>
  </thead>
 
                    
                   
  <tbody>
          <%
                    Staff_dao sd=new Staff_dao(ConnectionProvider.getConnection());
                    ArrayList<Staff_update> list=sd.showStaffDetails();
                    for(Staff_update su:list){
                    %>
    <tr>
      
      <td><%= su.getStaff_id() %></td>
      <td><%= su.getStff_name() %></td>
      <td><%= su.getStff_age()%></td>
      <td><%= su.getStff_doj() %></td>
      <td><%= su.getStff_duty() %></td>
      <td><%= su.getStff_shift() %></td>
      <td><%= su.getStaff_sal()%></td>
      <td><%= su.getStaff_username()%></td>
      <td><%= su.getStaff_password()%></td>
      <td><a href="edit_staff.jsp?id=<%= su.getStaff_id() %>">update</a></td>
      <td><a href="deleteStaffAttendant.jsp?sid=<%= su.getStaff_id()%>"><i class="fa fa-trash-o"></i></a></td>
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
