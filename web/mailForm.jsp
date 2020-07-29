<%-- 
    Document   : mailForm
    Created on : Jul 14, 2020, 5:00:29 PM
    Author     : hp world
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>vendor sending confirmation mail page</title>
        
                          <!-- CSS only -->
  
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        
        <h1 class="text-center">Send the mail to the receiver with username and password credentials</h1>
        <h6 class="text-center text-danger">*It is required to turn on less secure app access option security of your mail to send message*</h6>
      
         <%
       String sender_email=request.getParameter("email");
       %>
        
        <div class="container text-center">
            <form action="MailServlet" method="POST" style="margin-top: 40px" id="mail_btn">
                
             <div class="form-group">
          
            
            <div class="form-group">
                <input type="text" name="to" class="form-control" value="<%= sender_email %>" placeholder="To" style="width: 500px; margin-left: 300px"/>
              </div>
            <div class="form-group">
                  <input type="text" name="subject" placeholder="Subject" class="form-control" style="width: 500px; margin-left: 300px"/>
              </div>
                 
                  <div class="form-group">
                
                  <textarea class="form-control" name="message" rows="5" placeholder="message" style="width: 500px; margin-left: 300px"></textarea>
              </div>
                 
            <div class="form-group">
                  <input type="text" name="yourEmail" placeholder="Your Email" class="form-control" style="width: 500px; margin-left: 300px"/>
              </div>
            <div class="form-group">
                  <input type="password" name="yourPassword" placeholder="Your Password" class="form-control" style="width: 500px; margin-left: 300px"/>
              </div>
            <div class="form-group">
                  <input type="submit" value="Send" />
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
  
    
     $('#mail_btn').on('submit', function (event) {

                    event.preventDefault();

                    var form = new FormData(this);

                    //send register servlet:

                    $.ajax({

                        url: "MailServlet",

                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {

                            console.log(data)

                         

                            if (data.trim() === 'successfull')

                            {

                                       swal("Mail was send successfully to the owner")
                                        .then((value) => {

                                            window.location = "index.jsp";
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
