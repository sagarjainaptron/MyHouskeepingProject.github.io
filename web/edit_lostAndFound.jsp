<%-- 
    Document   : edit_lostAndFound
    Created on : Jul 9, 2020, 5:40:36 PM
    Author     : hp world
--%>

<%@page import="com.housekeeping.entities.LostAndFound"%>
<%@page import="com.housekeeping.helper.ConnectionProvider"%>
<%@page import="com.housekeeping.dao.LostAndFoundDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
       int serNo  =  Integer.parseInt(request.getParameter("sno"));
        LostAndFoundDao dao=new LostAndFoundDao(ConnectionProvider.getConnection());
        LostAndFound laf=dao.getLostItemsById(serNo);
        %>
        
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update details</title>
        
                          <!-- CSS only -->
  
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
       
        
        <div class="container text-center">
            <form action="EditLostAndFoundServlets" method="POST" id="update-laf">
             <div class="form-group">
                 <input type="hidden" name="lfsernum" value="<%= laf.getsNo() %>" class="form-control"/>
              </div>
                 <div class="form-group">  <em>Date Found: <%= laf.getDate()%></em></div>
                 <div class="form-group">  <em>Time Found: <%= laf.getTimeFound()%></em></div>
                 <div class="form-group">    <em>Area Founded:<%= laf.getAreaFound()%></em></div>
         <div class="form-group">    <em>Item: <%= laf.getItem()%></em></div>
          <div class="form-group">   <em>Description: <%= laf.getDesc()%></em></div>
           <div class="form-group">  <em>Founded By: <%= laf.getFoundedBy()%></em></div>
            
            <div class="form-group">
                  <input type="text" name="lfcolby" placeholder="Collected By" class="form-control" style="width: 500px; margin-left: 300px"/>
              </div>
              <div class="form-group">
                
                  <textarea class="form-control" name="lfaddress" rows="5" placeholder="Address" style="width: 500px; margin-left: 300px"></textarea>
              </div>
            <div class="form-group">
                <input name="datepicker1" type="text" class="datepicker1" placeholder="Collected item date"/>
              </div> 
           <br>
             <div class="form-group">
                  <input type="text" name="lfchecked" placeholder="If owner founded just type Found" class="form-control" style="width: 500px; margin-left: 300px"/>
              </div>
            <input type="submit" value="update"/>
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
    $(".datepicker1").datepicker();
    
     $('#update-laf').on('submit', function (event) {

                    event.preventDefault();

                    var form = new FormData(this);

                    //send register servlet:

                    $.ajax({

                        url: "EditLostAndFoundServlets",

                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {

                            console.log(data)

                         

                            if (data.trim() === 'updated')

                            {

                                       swal("data updated successfully");

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
