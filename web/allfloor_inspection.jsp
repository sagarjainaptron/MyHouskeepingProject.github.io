<%-- 
    Document   : allfloor_inspection
    Created on : Jul 1, 2020, 4:02:48 PM
    Author     : hp world
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="com.housekeeping.entities.ComplaintBox"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.housekeeping.dao.RoomDao"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
    </head>
    <body>
      
      
                <div class="container">
                    
                   
                          
    <table class="table table-striped table-lg table-dark" >
  <thead class="thead-dark">
       <tr>
          <th>  <input id="myInput" type="text" placeholder="Search.."></th>
      </tr>
    <tr>
   <th scope="col">Room No.</th>
      <th scope="col">Required Items</th>
      <th scope="col">Complaints</th>
       <th scope="col">Date</th>
       <th scope="col">Time</th>
        <th scope="col">Room Type</th>
     
      
    </tr>
  </thead>
  <tbody id="myTable"> 
        <%
                    RoomDao rd=new RoomDao(ConnectionProvider.getConnection());
                    ArrayList<ComplaintBox> list=rd.getAllFloorComplaintStatus();
                    for(ComplaintBox c:list){
                    %>
    <tr>
      
        <td><%= c.getRoom_no()%></td>
        <td><%= c.getReq_items()%></td>
       <td><%= c.getComplaints()%></td>
       <td><%= DateFormat.getDateInstance().format(c.getCom_date()) %></td>
      <td><%= DateFormat.getTimeInstance().format(c.getCom_date()) %></td>
      <td></td>
    </tr>
   <br>
    
 <%     
                    }
                    %>
      
  </tbody>
</table>
                
            
                </div>
