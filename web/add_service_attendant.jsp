<%-- 
    Document   : add_service_attendant
    Created on : Jun 21, 2020, 3:31:10 PM
    Author     : hp world
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add maintenance attendant</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       
        
        
        <div class="container">
            
                  <div class="card mt-2" style="width: 30rem;">
 
  <div class="card-body">
    <h5 class="card-title text-center">Insert data carefully</h5>
    <form action="AddServiceAttendantServlets" id="add-service-attendant" method="POST">
              
                <div class="form-group">
                 Name: <input name="sa_name" type="text"  class="form-control"/>
              </div>
                <div class="form-group">
                 Contact_No: <input name="sa_contNo" type="text"  class="form-control"/>
              </div>
                <div class="form-group">
                 Username:<input name="sa_username" type="text"  class="form-control"/>
              </div>
                <div class="form-group">
                 Password: <input name="sa_password" type="text"  class="form-control"/>
              </div>
                <div class="form-group">
                 Duty: <input name="sa_duty" type="text"  class="form-control"/>
              </div>
                 <div class="form-group">
                 Shift: <input name="sa_shift" type="text"  class="form-control"/>
              </div>
                 <div class="form-group">
                 Salary: <input name="sa_sal" type="text"  class="form-control"/>
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

                $('#add-service-attendant').on('submit', function (event) {

                    event.preventDefault();

                    var form = new FormData(this);

                    //send register servlet:

                    $.ajax({

                        url: "AddServiceAttendantServlets",

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
