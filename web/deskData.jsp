<%-- 
    Document   : monthly_roaster
    Created on : Jun 20, 2020, 6:12:02 PM
    Author     : hp world
--%>

<%@page import="com.housekeeping.entities.Desk_attendant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Desk_attendant desk_attendant=(Desk_attendant)session.getAttribute("currentDeskUser");
    if(desk_attendant==null){
        response.sendRedirect("index.jsp");
    }
%>


<html>
<title><%= desk_attendant.getD_name()%> Welcome Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<!-- Sidebar -->
<div class="w3-sidebar w3-light-grey w3-bar-block" style="width:25%">
  <h2 class="w3-bar-item">Click the link below</h2>
   <a href="#" onclick="loadingData()" id="afc" class="w3-bar-item w3-button">All Floor Cleaning Status</a>
  <a href="#" onclick="loadingData()" id="afs" class="w3-bar-item w3-button">All Floor Service Status</a>
   <a href="#" onclick="loadingData()" id="afi" class="w3-bar-item w3-button">Complaints Section</a>
   <a href="#" onclick="loadingData()" id="laf" class="w3-bar-item w3-button">Lost and Found</a>
</div>

<!-- Page Content -->
<div style="margin-left:25%">

<div class="w3-container w3-teal">
    <h1 class="text-center">Desk Attendant Page</h1>
</div>
    <h4 class="container-fluid text-center"><em>Welcome <%= desk_attendant.getD_name() %></em> </h4>


 <div class="container" id="desk-container">
                  
              </div>

</div>
      
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
   function loadingData(){
       $('#afc').click(function (event){
            $.ajax({
           url: "allfloor_cleaning.jsp",
           data:"hellop",
           success: function (data, textStatus, jqXHR) {
                        $('#desk-container').html(data);
                    }
       });
   });
       
       
       
          $('#afs').click(function (event){
            $.ajax({
           url: "allfloor_service.jsp",
           data:"hmmp",
           success: function (data, textStatus, jqXHR) {
                        $('#desk-container').html(data);
                    }
       });
       });
       
        $('#afi').click(function (event){
            $.ajax({
           url: "allfloor_inspection.jsp",
           data:"hmmpty",
           success: function (data, textStatus, jqXHR) {
                        $('#desk-container').html(data);
                    }
       });
       });
       
         $('#laf').click(function (event){
            $.ajax({
           url: "lost_and_found.jsp",
           data:"hmmptyy",
           success: function (data, textStatus, jqXHR) {
                        $('#desk-container').html(data);
                    }
       });
       });
      
   }
</script>
</body>
</html>
