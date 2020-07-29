<%-- 
    Document   : index
    Created on : Jun 16, 2020, 5:54:42 PM
    Author     : hp world
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Housekeeping Management System</title>
       
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body onload="myFunction()" style="width: 100%;height: 90vh">
         
        <div id="loading"></div>
        
        <!--navbar-->
        <nav class="navbar navbar-expand-lg navbar-light primary-background">
            <div class="container">
  <a class="navbar-brand" href="#">TCS ION</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">

      <li class="nav-item dropdown active">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Staff User</a>
      <div class="dropdown-menu">
          <a class="dropdown-item" data-toggle="modal" data-target="#user-login" href="#">Cleaner Attendant</a>
          <a class="dropdown-item" data-toggle="modal" data-target="#service-login" href="#">Maintenance Attendant</a>
          <a class="dropdown-item" data-toggle="modal" data-target="#inspect-login" href="#">Room Inspection Attendant</a>
          
      </div>
    </li>

     <li class="nav-item active">
          <a class="nav-link" data-toggle="modal" data-target="#desk-login" href="#">Desk Attendant Manager</a>
      </li>
 
      <li class="nav-item disabled">
        <a class="nav-link" href="#">About</a>
      </li>
  
      <li class="nav-item active">
          <a class="nav-link" href="vendorPayment.jsp">Vendor Spec</a>
      </li>
    </ul>
  </div>
</nav>
    <!--end of navbar-->    
        
        
        
        
        
        <div class="container text-center">
            <h1 id="indexhead" >Housekeeping Management System</h1>
        </div>
            
            
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                     <img src="img/img1.png" alt="NO PIC" width="800px" height="800px" >
                </div>
                <div class="col-md-4">
  <div class="card" style="width: 23rem; height: 23rem;">
      <div class="card-header text-center primary-background">
          Admin Login
      </div>
  <div class="card-body">
                                
      <form action="staff_details.jsp" onsubmit="return validate()">
  <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
    <input name="admin_user"  required type="text" class="form-control admin_user" aria-describedby="emailHelp">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="admin_pass"  required type="password" class="form-control admin_pass" >
  </div>
                                    <div class="container text-center">
                                        <button id="btn1" type="submit" class="btn btn-primary">Submit</button>
                                    </div>
  
</form>
                                
                            </div>
</div>
           
                </div>
            </div>
 
        </div>
        
           
   
        
 

<!-- Modal -->
<div class="modal fade" id="user-login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">User Login</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          
          <form action="Login_servlets" method="POST">
           
              <div class="form-group">
                  <input name="u_username" type="text" placeholder="Enter username" class="form-control"/>
              </div>
              <div class="form-group">
                  <input type="password" name="u_password" class="form-control" placeholder="Enter password"/>
              </div>
               
                      <div class="container text-center">
                          <button type="submit" class="btn btn-outline-primary">Login</button>
                      </div>
          </form>
          
      </div>
     
                     
                      
    </div>
  </div>
</div>
        
        
        <!--end of modal-->    
        
        
        
        
        
        
        
        <!-- Modal2 -->
<div class="modal fade" id="service-login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">User Login</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          
          <form action="Login_servlets2" method="POST">
           
              <div class="form-group">
                  <input name="s_username" type="text" placeholder="Enter username" class="form-control"/>
              </div>
              <div class="form-group">
                  <input type="password" name="s_password" class="form-control" placeholder="Enter password"/>
              </div>
               
                      <div class="container text-center">
                          <button type="submit" class="btn btn-outline-primary">Login</button>
                      </div>
          </form>
          
      </div>
     
                     
                      
    </div>
  </div>
</div>
        
        
        <!--end of modal2-->    
        
        
        
        
        
        
         <!-- Modal3 -->
<div class="modal fade" id="desk-login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">User Login</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          
          <form action="Login_servlets3" method="POST">
           
              <div class="form-group">
                  <input name="d_username" type="text" placeholder="Enter username" class="form-control"/>
              </div>
              <div class="form-group">
                  <input type="password" name="d_password" class="form-control" placeholder="Enter password"/>
              </div>
               
                      <div class="container text-center">
                          <button type="submit" class="btn btn-outline-primary">Login</button>
                      </div>
          </form>
          
      </div>
     
                     
                      
    </div>
  </div>
</div>
        
        
        <!--end of modal3-->   
        
        
        
         <!-- Modal4 -->
         
<div class="modal fade" id="inspect-login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">User Login</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          
          <form action="Login_servlets4" method="POST">
           
              <div class="form-group">
                  <input name="i_username" type="text" placeholder="Enter username" class="form-control"/>
              </div>
              <div class="form-group">
                  <input type="password" name="i_password" class="form-control" placeholder="Enter password"/>
              </div>
               
                      <div class="container text-center">
                          <button type="submit" class="btn btn-outline-primary">Login</button>
                      </div>
          </form>
          
      </div>
     
                     
                      
    </div>
  </div>
   

</div>
         <div style="height: 50px; background-color: black">
             <p align="center" style="color: white; font-size: 20px">Copyright &copy TCS ION,India.All rights reserved <u><a href="#">Terms of Use</a> |<a href="#"> Privacy Policy-REVISED</a></u></p> 
         </div>
         
     
        
        <!--end of modal4-->  
        
        
        
        
        
        
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script>
    
  
    
    function validate(){
        var f=false;
         var username= $('.admin_user').val();
        if(username=='admin'){         
            f=true;
        }
        else{
            f=false;
        }
       
        
        
        var password= $('.admin_pass').val();
        if(password=='admin'){
            
            f=true;
        }
        else{
            f=false;
        }
        
        
        return f;
    }
</script>

<script>
    var preloader=document.getElementById('loading');
    function myFunction(){
      //  preloader.style.display='none';
     setTimeout(function (){
         $("#loading").fadeOut('slow',function (){
             
         });
     },1500);
      
    }
</script>
       
    </body>
</html>
