<%-- 
    Document   : staff_details
    Created on : Jun 18, 2020, 3:35:29 PM
    Author     : hp world
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Admin Dashboard</title>
        
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
    </head>
    <body>
        <!--navbar-->
          
        <nav class="navbar navbar-expand-lg navbar-light primary-background">
            <div class="container">
  <a class="navbar-brand" href="#">TCS ION</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      
    
    
    
    <div class="btn-group">
         <div class="btn-group">
    <button type="button" class="btn primary-background dropdown-toggle" data-toggle="dropdown">
       Room Cleaner
    </button>
    <div class="dropdown-menu">
        <a class="dropdown-item" href="view_staff.jsp">View Cleaner Attendant</a>
          <a class="dropdown-item" href="add_staff.jsp">Add Cleaner Attandant</a>
        
    </div>
   <div class="btn-group">
    <button type="button" class="btn primary-background dropdown-toggle" data-toggle="dropdown">
       Room Service Attandant
    </button>
    <div class="dropdown-menu">
       <a class="dropdown-item" href="view_service_attendant.jsp">View Service Attandant</a>
          <a class="dropdown-item" href="add_service_attendant.jsp">Add Service Attandant</a>
        
    </div>
  <div class="btn-group">
    <button type="button" class="btn primary-background dropdown-toggle" data-toggle="dropdown">
       Inspect Attandant
    </button>
    <div class="dropdown-menu">
     <a class="dropdown-item" href="view inspect_attendant.jsp">View Inspect Attandant</a>
          <a class="dropdown-item" href="add_inspect_attendant.jsp">Add Inspect Attandant</a>
        
    </div>
  </div>
</div>
    
    
    
    
    
    
      <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle active" href="#" id="navbardrop" data-toggle="dropdown">Desk Attendant</a>
      <div class="dropdown-menu">
          <a class="dropdown-item" href="view_desk_attendant.jsp">View</a>
          <a class="dropdown-item" href="add_desk_attendant.jsp">Add</a>
          
         
      </div>
    </li>
     </ul>
    
      <ul class="navbar-nav mr-right">
          <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> Help</a>
      <div class="dropdown-menu">
          <h3 style="padding-left: 5px">you can ask your queries in ChatBot</h3>
          <h6>Related questions below....</h6>
          <a class="dropdown-item text-primary" href="#">How to use i t?</a>
          <a class="dropdown-item text-primary" href="#">How to add staff ?</a>
           <a class="dropdown-item text-primary" href="#">How to manage records ?</a>
          <a class="dropdown-item text-primary" href="#">How secure is the application ?</a>
      </div>
          </li>
          
          <li class="nav-item">
              <a class="nav-link" href="index.jsp"><span class="fa fa-user-plus">Logout</span></a>
          </li>
          
      </ul>
   
</div>
  </div>
</nav>
        
        
        <!-- end of navbar -->
        
        
        
          
         
              
              <main>
                   <div class="row container-fluid" >
                 
                       <div class="col-md-3">
                      <div class="list-group" >
                          <Button onclick="loadData()" id="allFloor" class="list-group-item list-group-item-action mt-2" style="background-color: #4d4dff; border-width: thin; border-color: black;color: white">All Floor cleaning status</Button>
                           <Button onclick="loadData()" id="floor-service" class="list-group-item list-group-item-action mt-2" style="background-color: #4d4dff; border-width: thin; border-color: black ;color: white">All Floor weekly service status</Button>
                           <Button onclick="loadData()" id="floor-inspection" class="list-group-item list-group-item-action mt-2" style="background-color: #4d4dff; border-width: thin; border-color: black ;color: white">Room inspection details and complaints</Button>
                      </div>
 
</div>
                 
                       <div class="col-md-8 text-center">
                           
                           <marquee direction="left"><h1>Welcome to housekeeping management system ....Admin page</h1></marquee>
                           
                          
                       </div>
                       <form action="roaster.jsp">
                        <p align="right"><input type="submit" value="Roaster" style="color: white; background-color: #4d4dff; margin-top: 70px; border-width: thin; border-color: black  " /></p>
                       </form>
                        
                        
                                    <div class="col-lg-12">
                      <div id="floor-table-container">
                          
                      </div>
                       
                       
                     </div>
                       <button style="background-color:#4d4dff;color: white; border-radius: 20px; position: absolute;bottom: 40px;right: 40px; border-color: white" onclick="chatDiv()"><i class="fa fa-commenting-o fa-3x" aria-hidden="true"></i></button>
                       <div class="container">
                      
                       <div class="row">
                           <div class="col-4 offset-3 bg-secondary text-white" id="chat" style="display: none">
				
				<h3 class="text-center">Chat Messenger</h3><br>
                                <p class="bg-info"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hi there! How can I help you :)</em></p>
				<p id="chatLog" class="bg-info"><em></em></p>
				<input type="text" name="" placeholder="type.." id="userBox" onkeydown="if(event.keyCode==13) {talk()}">
                       </div>
			</div>
                       </div>
        
     <!--   <div class="container">
            <form action="">
            Select Date: <input name="datepicker" type="text" class="datepicker" placeholder="pick date"/>
            <button>Open</button>
            </form>
        </div>   -->
              
             
      
          
          
          
          
                  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script>
   function loadData(){
       $('#allFloor').click(function (event){
            $.ajax({
           url: "allfloor_cleaning.jsp",
           data:"hello",
           success: function (data, textStatus, jqXHR) {
                        $('#floor-table-container').html(data);
                    }
       });
   });
        
           
       
       
       
          $('#floor-service').click(function (event){
            $.ajax({
           url: "allfloor_service.jsp",
           data:"hmm",
           success: function (data, textStatus, jqXHR) {
                        $('#floor-table-container').html(data);
                    }
       });
       });
       
       
       
          $('#floor-inspection').click(function (event){
            $.ajax({
           url: "allfloor_inspection.jsp",
           data:"hmmmm",
           success: function (data, textStatus, jqXHR) {
                        $('#floor-table-container').html(data);
                    }
       });
       });
      
   }
</script>

<script>
   $(document).ready(function () {
    $(".datepicker").datepicker();
});
</script>

<script>
    	function chatDiv() {
//	document.getElementById("chat").style.display='block';
$('#chat').toggle();
}
know={
		"hello":"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Hii:)</b><hr>",
		"how to use it":"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><li>You can add your staff</li><li>You can check status of staff and also room status... </li><li>You can also manage roaster fields</li></b><hr>",
		"how to add staff":"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Follow the steps bellow><ol><li>Click on the Room Cleaner in nav bar</li><li>Then click on add staff</li><li>Fill the details and click on add staff</li><li>Its simple...</li></ol></b><hr>",
		"how to manage records":"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Just see the requirements in the link given bellow<li>https://hmhub.me/role-of-housekepping-in-guest-satisfaction-and-repeat-business/</li></b><hr>",
                 "":"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Pleask free to ask queries.. ></b><hr>",	
		"how secure is the application":"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>All the details are well secured and is protected</b><hr>"
		
	};
	function talk(){
		var user=document.getElementById("userBox").value.toLowerCase();
		document.getElementById("userBox").value="";
		document.getElementById("chatLog").innerHTML+=user+"<br>";
		if(user in know){
			document.getElementById("chatLog").innerHTML+=know[user]+"<br>";
		}
		else{
			document.getElementById("chatLog").innerHTML+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>You can send your queries at jainsagar8888@gmail.com</b><hr><br>";

		}
	}
</script>

        
        
    </body>
</html>
