<%-- 
    Document   : edit_desk_attendant
    Created on : Jun 23, 2020, 2:39:12 PM
    Author     : hp world
--%>

<%@page import="com.housekeeping.entities.Desk_attendant"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page import="com.housekeeping.dao.DeskDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <%
  
    DeskDao d=new DeskDao(ConnectionProvider.getConnection());
   int did=Integer.parseInt(request.getParameter("id"));
    Desk_attendant da =d.getDeskattendantById(did);
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= da.getD_name()%> update details</title>
                  <!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
              
        
        
        
        
        
        
       <div class="container" id="desk-edit">
     <h3>Please edit carefully</h3>  
     <form action="EditDeskAttendantServlets" method="post" id="update-da">
         <table class="table">
          
    
    <tr>
        <td>
            <input type="hidden" name="desk_id" value="<%= da.getD_id()%>"></td>
        <td>  <input type="text" name="desk_id" value="<%= da.getD_id()%>">
        </td>
</tr>
    
    
              <tr>
                 <td>Name:</td>
                 <td><input type="text" name="desk_name" class="form-control" value="<%= da.getD_name()%>"></td>
             </tr>
             <tr>
                 <td>Contact No.</td>
                 <td><input type="text" name="desk_cont" class="form-control" value="<%= da.getD_contNo()%>"></td>
             </tr>
             <tr>
                 <td>Shift:</td>
                 <td><input type="text" name="desk_shift" class="form-control" value="<%= da.getD_shift()%>"></td>
             </tr>
               <tr>
                 <td>Salary:</td>
                 <td><input type="text" name="desk_sal" class="form-control" value="<%= da.getD_sal()%>"></td>
             </tr>
            
             </tr>
            
         </table>
         
             <div class="container">
                 <button type="submit" class="btn btn-outline-primary" >Save</button>
                 
             </div>
             
     </form>
     
 </div>
             
             
             
                  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
   $(document).ready(function () {
  
    
     $('#update-da').on('submit', function (event) {

                    event.preventDefault();

                    var form = new FormData(this);

                    //send register servlet:

                    $.ajax({

                        url: "EditDeskAttendantServlets",

                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {

                            console.log(data)

                         

                            if (data.trim() === 'updated')

                            {

                                       swal("data updated successfully")
                                        .then((value) => {

                                            window.location = "view_desk_attendant.jsp";
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
