<%-- 
    Document   : inspectComplaints
    Created on : Jun 30, 2020, 3:17:36 PM
    Author     : hp world
--%>

<%@page import="com.housekeeping.entities.Inspect_attendant"%>
<%@page import="com.housekeeping.entities.RoomNo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.housekeeping.dao.RoomDao"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body style="background-color: crimson; color: white">
         <div class="container">
            
           
             <div class="container-fluid mt-4">
             <a class="nav-link" href="Logout_servlets4" style="position: absolute; right: 10px;top: 5px"><span class="fa fa-user-plus">Logout</span></a>
               
                 <button data-toggle="modal" data-target="#add-complaints">Click here to update the details</button><br>
                 <h1 class="floorhead">Read the following instructions below carefully...</h1><br>
                
                
                <h3>The Guest room inspection ensures that the desired results of an established cleaning system are consistently achieved by the housekeeping department. The main Purpose of a room inspection is to catch any problems that may have been overlooked during the cleaning before it is found by the guest and becomes a dissatisfaction and complaints.

                    <br><br>Housekeeping department should implement a well-conducted and diplomatic room inspection program, this can also motivate the room attendants or room maids as the employees/staff take pride in their work and enjoy having an opportunity to set standards to others.

<br><br>Every guest room must be checked on the daily basis by housekeeping supervisor, this will help the hotel to attain high guest satisfaction in terms of room comfort and also for safety reasons. If the floor supervisor is not been able to check the room by the end of the shift, the Asst. Executive housekeeper must do it before releasing the room for guest occupancy.

<br><br>Use of a pre-printed room inspection check-list form will prove effective for the hotel management. It will establish a set procedure ensuring that will remind both Housekeeping Supervisor / Executive and Room maids of any defects and missing amenities for the guest. 
                </h3>
        </div>
        </div>
        
          
        <!-- Modal -->
<div class="modal fade" id="add-complaints" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update the fields below</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          
          <form action="ComplaintBoxServlets" method="POST"  id="update-inspect">
           
                <select class="form-control" name="roomNumber">
                      <option selected disabled>---Select Room No.---</option>
                      
                        
                      <% 
                      RoomDao rd=new RoomDao(ConnectionProvider.getConnection());
                      ArrayList<RoomNo> list=rd.getAllRoomNo();
                      for(RoomNo rn:list){
                      %>
                      <option value="<%= rn.getRoom_no()%>"><%= rn.getRoom_no()%></option>
                      
                      <%
                      }
                      %>
                      
                 
                  
                </select><br>
             
                       <div class="form-group">
                  <textarea name="Req_items" class="form-control" placeholder="Mention required items in the room" style="height: 150px;"></textarea>
              </div>
              <div class="form-group">
                  <textarea name="complaints" class="form-control" placeholder="Write complaints of customers (if any)" style="height: 100px;"></textarea>
              </div>
            
               
                      <div class="container text-center">
                          <button type="submit" class="btn btn-outline-primary">Done</button>
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

 <script>
            
            $(document).ready(function (){
                $('#update-inspect').on('submit', function (event) {

                    event.preventDefault();

                    var form = new FormData(this);

                    //send register servlet:

                    $.ajax({

                        url: "ComplaintBoxServlets",

                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {

                            console.log(data)

                         

                            if (data.trim() === 'done')

                            {

                                      swal("Good job!", "Request Updated!", "success");

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
