<%-- 
    Document   : serviceData
    Created on : Jun 26, 2020, 3:40:54 PM
    Author     : hp world
--%>

<%@page import="com.housekeeping.entities.Service_attendant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Service_attendant service_attendant=(Service_attendant)session.getAttribute("currentU");
    if(service_attendant==null){
        response.sendRedirect("index.jsp");
    }
%>






<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= service_attendant.getS_name()%> Welcome Page</title>
        
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body style="background-color: blue; color: white">
        
        <div class="container">
            
           
             <div class="container-fluid mt-4">
            
               <a class="nav-link" href="index.jsp" style="position: absolute; right: 10px;top: 5px"><span class="fa fa-user-plus">Logout</span></a>
                 <button data-toggle="modal" data-target="#service-attendant-updates">Click here to update the details</button>
                <h1 class="floorhead">Read the following instructions below carefully...</h1><br>
                <h1>  <b> PREREQUISITES:</b><br></h1>
                <h3>   To be able to work in a neat and efficient manner, keeping work areas clean and well organised. Ability to multi-task in busy environment and adheres to hotel the Standard Operating Procedures. 
                </h3> <br>
                <h1>  <b> Guidelines</b><br></h1>
                
                <ul>
                    <h3> <li> Respond and attend to guest repair requests. </li><br><br>
              <li>  Communicate with different types of people to comprehend what they want and to provide them with information and assistance. </li><br>
              <br> <li> Ability to work under pressure situations and exercise good judgements. </li><br>
               <br> <li> Ability to focus attention on details, speed and accuracy. </li><br>
               <br> <li> Ability to maintain confidentiality of hotel guests and pertinent hotel information.</li><br>
               <br> <li> Ability to ensure security of guest room access and hotel property.</li><br>
              <br> <li> Preform maintenance activities in the guest room like plunging toilets, unclogging drains, repairing all types of hardware,  electrical equipment including lamps, air conditioners / HVAC and AC ducts.</li><br>
              <br> <li> Perform maintenance activities in hotel public areas like plunging toilets, unclogging drains, repairing all types of hardware, plumbing and electrical equipment and cosmetic items.</li><br>
              <br> <li> To clean, lubricate, protect, and otherwise maintain all tools and equipment in the hotel.</li><br>
              <br> <li> To monitor fire Alarm / Life Safety System systems as necessary, to be fully informed of the system operation and to handle emergencies involving the systems.</li><br>
              <br> <li> Train and instruct other members of the staff through sharing of knowledge and skills. </li><br></h3>
                    
                    
                </ul>
             </div>
        </div>
                  
        
        
        
        
        <!-- Modal -->
<div class="modal fade" id="service-attendant-updates" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update the fields below</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          
          <form action="RoomServiceServlets" method="POST"  id="update-service">
           
          <!--    <div class="form-group">
                  <b> Select today's Date: </b><input name="datepicker3" type="text" class="datepicker" placeholder="pick date"/>
              </div> -->
              <div class="form-group">
                  <input name="fn" type="text" placeholder="Floor No." class="form-control"/>
              </div>
              <div class="form-group">
                  <input type="text" name="rn" class="form-control" placeholder="Room No."/>
              </div>
              <div class="form-group">
                  <input name="nn" type="text" value="<%= service_attendant.getS_name() %>" class="form-control"/>
              </div>
              <div class="form-group">
                  <input name="sp" type="text" value="<%= service_attendant.getS_duty()%>" class="form-control"/>
              </div>
              
              <br>
              <div class="form-group">
                  <input name="ss" type="text" placeholder="Status" class="form-control"/>
                  <small class="form-text text-danger ml-2">Type done if work is done...</small>
              </div>
               
                      <div class="container text-center">
                          <button type="submit" class="btn btn-outline-primary">Update</button>
                      </div>
          </form>
          
      </div>
     
                     
                      
    </div>
  </div>
</div>
        
        
        <!--end of modal-->    
                    
                    
             
                    
                    
                  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--
<script>
   $(document).ready(function () {
    $(".datepicker").datepicker();
   });
    </script>
    -->
    
    <script>
            
            $(document).ready(function (){
                $('#update-service').on('submit', function (event) {

                    event.preventDefault();

                    var form = new FormData(this);

                    //send register servlet:

                    $.ajax({

                        url: "RoomServiceServlets",

                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {

                            console.log(data)

                         

                            if (data.trim() === 'done')

                            {

                                      swal("Good job!", "Data Updated!", "success");

                            } else

                            {


                                swal(data);

                            }

                        },

                        error: function (jqXHR, textStatus, errorThrown) {

                          

                           swal ( "Oops" ,  "Something went wrong!" ,  "error" );
                            

                        },

                        processData: false,

                        contentType: false

                    });

                });
    
    
    
});
                

</script>
  </body>
</html>