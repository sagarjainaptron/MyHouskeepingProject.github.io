<%-- 
    Document   : roaster
    Created on : Jul 5, 2020, 4:59:32 PM
    Author     : hp world
--%>


<%@page import="com.housekeeping.entities.Roaster"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.housekeeping.dao.RoasterDao"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <title>Roaster Page</title>
    </head>
    <body style="background-color: black">
        <div class="container">
            <button data-toggle="modal" data-target="#add-roaster">Add</button>
            <a href="fullMonthlyRecords.jsp">&nbsp;&nbsp; Visit staff monthly records</a>
            
            
            
            
            
            <table class="table table-striped table-lg table-dark" style="margin-top: 20px">
  <thead>
    <tr>
      <th scope="col">S No.</th>
      <th scope="col">JOB</th>
      <th scope="col">No of employee</th>
      <th scope="col">Available employees</th>
      <th scope="col">Required employees</th>
      <th scope="col">Working hours</th>
      <th scope="col">Shift</th>
      <th scope="col">salary</th>
      <th scope="col">Working days</th>
    </tr>
  </thead>
  <tbody>
      
      <%
       RoasterDao rd=new RoasterDao(ConnectionProvider.getConnection());
       ArrayList<Roaster> list=rd.displayRoasterFields();
        for(Roaster r:list){
      %>
      
      <tr>
         <th><%= r.getsNo() %></th>
      <td><%= r.getJob()%></td>
      <td><%= r.getnOfEmp()%></td>
      <td><%= r.getAvailable() %></td>
      <td><%= r.getRequired() %></td>
      <td><%= r.getWorkingHours()%></td>
      <td><%= r.getShift()%></td>
      <td><%= r.getSal()%></td>
      <td><%= r.getWorkingDays()%></td>
      
      <td><a href="edit_roaster.jsp?id=<%= r.getsNo()%>">update</a></td>
      </tr>
      </br>
      
      <%
  }
  %>
  </tbody>
  
  
            </table>
             <h4 style="color: white">Note:</h4> 
            <b><em style="color: white">The off days for staff members on special occasions will be on Republic Day ,Independence Day , Gandhi Jayanti , Eid. </em></b><br>
            <b><em style="color: white">One extra leave per month is acceptable. </em></b><br>
            <b><em style="color: white">Working on Saturday and Sunday will be on day shift.</em></b><br>
        </div>
        
        
        
          <!-- Modal -->
<div class="modal fade" id="add-roaster" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add details carefully</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          
          <form action="AddRoasterServlets" method="POST" id="add-roaster">
           
              <div class="form-group">
                  <input name="rJob" type="text" placeholder="Enter Job" class="form-control"/>
              </div>
              <div class="form-group">
                  <input type="text" name="rEmp" placeholder="No of Employees reuired" class="form-control"/>
              </div>
              <div class="form-group">
                  <input type="text" name="rWH" placeholder="Working hours(per day)" class="form-control"/>
              </div>
              <br>
              <div class="form-group">
                  <input type="text" name="rShift" placeholder="Shift" class="form-control"/> 
              </div>
              <div class="form-group">
                  <input type="text" name="rSal" placeholder="Enter Salary" class="form-control"/> 
              </div>
              <div class="form-group">
                  <input type="text" name="rWD" placeholder="Woking days(per week)" class="form-control"/> 
              </div>
              <div class="form-group">
                  <input type="text" name="rAvailable" placeholder="Available Employee" class="form-control"/> 
              </div>
              <div class="form-group">
                  <input type="text" name="rRequired" placeholder="Required Employee" class="form-control"/> 
              </div>
               
                      <div class="container text-center">
                          <button type="submit" class="btn btn-outline-primary"  >Add</button>
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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
   $(document).ready(function () {
   
    
     $('#add-roaster').on('submit', function (event) {

                    event.preventDefault();

                    var form = new FormData(this);

                    //send register servlet:

                    $.ajax({

                        url: "AddRoasterServlets",

                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {

                            console.log(data)

                         

                            if (data.trim() === 'done')

                            {

                                       swal("data updated successfully")
                                        .then((value) => {

                                            window.location = "roaster.jsp";
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
