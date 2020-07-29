<%-- 
    Document   : lost_and_found
    Created on : Jul 8, 2020, 1:54:31 PM
    Author     : hp world
--%>

<%@page import="com.housekeeping.entities.LostAndFound"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.housekeeping.dao.LostAndFoundDao"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lost and found page</title>
        
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <script>

</script>
    </head>
    <body>
        <div class="container">
            <a href="#"><h3 style="margin-bottom: 20px">Policy</h3></a>
              <table class="table table-striped table-lg table-dark" >
  <thead class="thead-dark">
      <tr>
          <td><h4 class="text-center">Lost and Found Register</h4></td>
           <button data-toggle="modal" data-target="#add-record">Add</button>
      </tr>
       <tr>
          <th>  <input id="myInput" type="text" placeholder="Search.."></th>
      </tr>

    <tr>
   <th scope="col">S No..</th>
      <th scope="col">Date</th>
      <th scope="col">Time Found</th>
      <th scope="col">Area/Room where item found</th>
      <th scope="col">Item</th>
      <th scope="col">Description</th>
      <th scope="col">Founded By</th>
      <th scope="col">Item collected By</th>
      <th scope="col">Address</th>
      <th scope="col">Date of collected item</th>
      <th scope="col">Mark</th>
      
      
    </tr>
  </thead>
  <tbody id="myTable">
<%
                    LostAndFoundDao rd=new LostAndFoundDao(ConnectionProvider.getConnection());
                    ArrayList<LostAndFound> list=rd.displayLostAndFoundFields();
                    for(LostAndFound lf:list){
                    %>
    <tr>
      
        <td><%= lf.getsNo() %></td>
        <td><%= lf.getDate() %></td>
        <td><%= lf.getTimeFound() %></td>
        <td><%= lf.getAreaFound() %></td>
        <td><%= lf.getItem() %></td>
        <td><%= lf.getDesc() %></td>
        <td><%= lf.getFoundedBy() %></td>
        <td><%= lf.getCollectedBy() %></td>
        <td><%= lf.getAddress() %></td>
        <td><%= lf.getDateCollected() %></td>
        <td><button class="itemStatus"><%= lf.getMark() %></button></td>
        <td><a href="edit_lostAndFound.jsp?sno=<%=lf.getsNo() %>">update</a></td>
    
    </tr>
   <br>
<%
}
%>
    
  </tbody>
</table>
        </div>
        
        
         
          <!-- Modal -->
<div class="modal fade" id="add-record" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add details carefully</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          
          <form action="AddLostAndFoundServlets" method="POST" id="add-laf">
                <div class="form-group">
                 <input name="datepicker2" type="text" class="datepicker2" placeholder="pick lost item date"/>
              </div> 
              
               <div class="form-group">
                  <input type="text" name="ltf" placeholder="Time Found" class="form-control"/>
              </div>
              <div class="form-group">
                  <input type="text" name="lif" placeholder="Area/Room where item found" class="form-control"/>
              </div>
              <br>
              <div class="form-group">
                  <input type="text" name="li" placeholder="Item" class="form-control"/> 
              </div>
              <div class="form-group">
                  <input type="text" name="ld" placeholder="Description" class="form-control"/> 
              </div>
              <div class="form-group">
                  <input type="text" name="lfb" placeholder="Founded By" class="form-control"/> 
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

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>


    
<script>

            $(document).ready(function () {

                console.log("loaded........")
                
                
                 $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
                
                $(".datepicker2").datepicker();
                

                $('#add-laf').on('submit', function (event) {

                    event.preventDefault();

                    var form = new FormData(this);

                    //send register servlet:

                    $.ajax({

                        url: "AddLostAndFoundServlets",

                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {

                            console.log(data)

                         

                            if (data.trim() === 'done')

                            {

                                       swal("data inserted successfully");

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
        
        <script>
  $(document).ready(function (){
      $('.itemStatus').each(function (){
          if($(this).text()==='Found'){
              $(this).css('color','green');
          }
           if($(this).text()==='Not found'){
              $(this).css('color','red');
          }
 
      });
  });
  
</script>
    </body>
</html>
