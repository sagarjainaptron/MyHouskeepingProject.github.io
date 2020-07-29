<%-- 
    Document   : DeleteStaffAttendant
    Created on : Jul 12, 2020, 5:39:52 PM
    Author     : hp world
--%>

<%@page import="com.housekeeping.entities.Staff_update"%>
<%@page import="com.housekeeping.dao.Staff_dao"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete cleaner attendant</title>
        
               
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
    </head>
    
    <body class="deleteStaffContainer">
        <div class="container">
        <button  data-toggle="modal" data-target="#delete-st-record" id="deleteStaffContainerbtn">Confirm Delete</button>
        </div>
                     <%
       int idd  =  Integer.parseInt(request.getParameter("sid"));
        Staff_dao dao=new Staff_dao(ConnectionProvider.getConnection());
        Staff_update s=dao.getStaffById(idd);
        %>
        
                         <!-- Modal -->
<div class="modal fade" id="delete-st-record" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirm Deletion ???</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
                     <div class="modal-body">
        
          
                         <form action="DeleteStaffAttendant" method="POST" id="delete-st">
                <div class="form-group">
                    <input type="hidden" value="<%= s.getStaff_id()%>" name="del_st_id"/>
                    <h5>Note: Deleted record can't be restore later</h5>
              </div> 
 
               
                      <div class="container text-center">
                          <button type="submit" class="btn btn-outline-primary">Delete</button>
                      </div>
          </form>
          
      </div>
     
                     
                      
    </div>
  </div>
    <!-- end of model-->
    

    
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>


<script>
   $(document).ready(function () {
  
    
     $('#delete-st').on('submit', function (event) {

                    event.preventDefault();

                    var form = new FormData(this);

                    //send register servlet:

                    $.ajax({

                        url: "DeleteStaffAttendant",

                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {

                            console.log(data)

                         

                            if (data.trim() === 'deleted')

                            {

                                       swal("data deleted successfully")
                                        .then((value) => {

                                            window.location = "view_staff.jsp";
                                });
                                       

                            } else

                            {


                               swal(data);
                                

                            }

                        },

                        error: function (jqXHR, textStatus, errorThrown) {

                          

                            swal("something went wrong..try again");
                            

                        },

                        processData: false,

                        contentType: false

                    });

                });
   });
    </script>
    </body>
</html>
