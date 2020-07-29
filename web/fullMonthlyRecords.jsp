<%-- 
    Document   : fullMonthlyRecords
    Created on : Jul 12, 2020, 10:37:51 PM
    Author     : hp world
--%>

<%@page import="com.housekeeping.entities.Desk_attendant"%>
<%@page import="com.housekeeping.dao.DeskDao"%>
<%@page import="com.housekeeping.entities.Inspect_attendant"%>
<%@page import="com.housekeeping.dao.RoomDao"%>
<%@page import="com.housekeeping.entities.Service_attendant"%>
<%@page import="com.housekeeping.dao.ServiceDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.housekeeping.entities.Staff_update"%>
<%@page import="com.housekeeping.dao.Staff_dao"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff monthly roaster</title>
           <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    
    <style>
        body{
            margin: 50px;
        }
    </style>
    
    <body>
        <table class="table table-striped table-bordered">
  <thead>
    <tr>
      <th scope="col">Employee Name</th>
      <th scope="col">Contact Number</th>
      <th scope="col">Job</th>
      <th scope="col">Salary</th>
      <th scope="col">Working Days/week</th>
    </tr>
  </thead>
  <tbody>
      
       <%
       Staff_dao staff_dao=new Staff_dao(ConnectionProvider.getConnection());
        ArrayList<Staff_update> list=staff_dao.showStaffDetails();
        for(Staff_update su:list){
      %>
      
    <tr  class="table-primary">
      <td scope="row"><%= su.getStff_name() %></td>
      <td><%= su.getStaff_cont() %></td>
      <td><%= su.getStff_duty() %></td>
      <td><%= su.getStaff_sal() %></td>
      <td><%= su.getStff_shift()%></td>
    </tr>
    <%
    }
    %>
    
    
     <%
       ServiceDao serviceDao=new ServiceDao(ConnectionProvider.getConnection());
        ArrayList<Service_attendant> list2=serviceDao.getServiceAttendantDetails();
        for(Service_attendant sa:list2){
      %>
      
    <tr class="table-danger">
       
      <td scope="row"><%= sa.getS_name()%></td>
      <td><%= sa.getS_contNo()%></td>
      <td><%= sa.getS_duty()%></td>
      <td><%= sa.getS_sal() %></td>
      <td><%= sa.getS_shift()%></td>
    </tr>
    <%
    }
    %>
   
    
       <%
       RoomDao roomDao=new RoomDao(ConnectionProvider.getConnection());
         ArrayList<Inspect_attendant> list3=roomDao.getInspectAttendantDetails();
        for(Inspect_attendant ia:list3){
      %>
      
    <tr class="table-warning">
       
      <td scope="row"><%= ia.getName()%></td>
      <td><%= ia.getCont_no()%></td>
      <td><%= ia.getDuty() %></td>
      <td><%= ia.getSal() %></td>
      <td><%= ia.getShift() %></td>
    </tr>
    <%
    }
    %>
    
    
        <%
       DeskDao deskDao=new DeskDao(ConnectionProvider.getConnection());
           ArrayList<Desk_attendant> list4=deskDao.getDeskAttendantDetails();
        for(Desk_attendant da:list4){
      %>
      
    <tr class="table-dark">
       
        <td scope="row"><%= da.getD_name()%></td>
      <td><%= da.getD_contNo()%></td>
      <td><%= da.getD_duty() %></td>
      <td><%= da.getD_sal() %></td>
      <td><%= da.getD_shift()%></td>
    </tr>
    <%
    }
    %>
  </tbody>
</table>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  

    </body>
</html>
