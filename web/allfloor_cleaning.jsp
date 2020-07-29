<%-- 
    Document   : allfloor_cleaning
    Created on : Jun 17, 2020, 4:20:05 PM
    Author     : hp world
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.housekeeping.entities.Floor"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page import="com.housekeeping.dao.FloorDao"%>
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
   <th scope="col">Floor No.</th>
      <th scope="col">Room No.</th>
      <th scope="col">Status</th>
      <th scope="col">Name</th>
      <th scope="col">Date</th>
      <th scope="col">Time</th>
       <th scope="col">Room Type</th>
      
    </tr>
  </thead>
  <tbody id="myTable">
     <%
                    FloorDao fd=new FloorDao(ConnectionProvider.getConnection());
                    ArrayList<Floor> list=fd.getAllFloorStatus();
                    for(Floor f:list){
                    %>
    <tr>
      
        <td><%= f.getFloorNo() %></td>
      <td><%= f.getRoomNo()%></td>
      <td><button class="roomStatus" style="color: white"><%= f.getStatus()%></button></td>
      <td><%= f.getDutyName()%></td>
       <td><%= DateFormat.getDateInstance().format(f.getDateTime()) %></td>
       <td><%= DateFormat.getTimeInstance().format(f.getDateTime()) %></td>
        <td></td>
       
    </tr>
   <br>
    
 <%     
                    }
                    %>
    
  </tbody>
</table>
                
            
                </div>
                    
                                     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>


<script>
  $(document).ready(function (){
      $('.roomStatus').each(function (){
          if($(this).text()==='Dirty'){
              $(this).css('color','red');
          }
          if($(this).text()==='Cleaned'){
              $(this).css('background-color','green');
          }
          
      });
  });
  
</script>
    </body>
</html>
