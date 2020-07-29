<%-- 
    Document   : add_staff
    Created on : Jun 18, 2020, 6:35:46 PM
    Author     : hp world
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add cleaner attendant</title>
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            
                  <div class="card mt-2" style="width: 30rem;">
 
  <div class="card-body">
    <h5 class="card-title text-center">Insert data carefully</h5>
    <form action="AddStaffServlets" id="add-staff" method="POST">
              
                <div class="form-group">
                 Name: <input name="sName" type="text"  class="form-control"/>
              </div>
                <div class="form-group">
                 Contact No: <input name="sCont" type="text"  class="form-control"/>
              </div>
                <div class="form-group">
                 Age: <input name="sAge" type="text"  class="form-control"/>
              </div>
                <div class="form-group">
                 Date of Joining: <input name="sDoj" type="text"  class="form-control"/>
              </div>
                <div class="form-group">
                 Duty: <input name="sSal" type="text"  class="form-control"/>
              </div>
                <div class="form-group">
                 Work shift: <input name="sShift" type="text"  class="form-control"/>
              </div>
                 <div class="form-group">
                 Username: <input name="sUsername" type="text"  class="form-control"/>
              </div>
         <div class="form-group">
                 Password: <input name="sPassword" type="text"  class="form-control"/>
              </div>
                       </div>
               
                      <div class="container text-center">
                          <button type="submit" class="btn btn-outline-primary">Add</button>
                      </div>
         </div>
               
             
               
              
              
          </form>
  </div>
        
        
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>



<script>

            $(document).ready(function () {

                console.log("loaded........")

                $('#add-staff').on('submit', function (event) {

                    event.preventDefault();

                    var form = new FormData(this);

                    //send register servlet:

                    $.ajax({

                        url: "AddStaffServlets",

                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {

                            console.log(data)

                         

                            if (data.trim() === 'done')

                            {

                                       swal("data inserted successfully")
                                        .then((value) => {

                                            window.location = "staff_details.jsp";
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
