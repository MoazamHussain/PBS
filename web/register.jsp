<%-- 
    Document   : register
    Created on : Apr 10, 2020, 2:24:59 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
      <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

</head>
<body style="background-image: url('images/park.jfif');">

    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.jsp">
                          <h1 style="color: #000;font-weight: 600;">Register</h1>
                    </a>
                </div>
                <div class="login-form">
                    <form method="post" action="validatereg.jsp">
                         <p style="font-size:16px; color:red" align="center"></p>
                        <div class="form-group">
                            <label style="color: #000;font-weight: 400;">First Name</label>
                            <input class="form-control" type="text" placeholder="Enter First name" autocomplete="off" required="true" name="fname">
                        </div>
                        <div class="form-group">
                            <label style="color: #000;font-weight: 400;">Last Name</label>
                           <input class="form-control" type="text" placeholder="Enter Last name" autocomplete="off" required="true" name="lname">
                        </div>
                         <div class="form-group">
                            <label style="color: #000;font-weight: 400;">Contact number</label>
                           <input class="form-control" type="text" maxlength="10" placeholder="Enter Contact number" autocomplete="off" required="true" name="phno">
                        </div>
                        <div class="form-group">
                            <label style="color: #000;font-weight: 400;">Email ID</label>
                           <input class="form-control" type="email" placeholder="Enter Email ID" autocomplete="off" required="true" name="eid">
                        </div>
                        <div class="form-group">
                            <label style="color: #000;font-weight: 400;">UserName</label>
                           <input class="form-control" type="text" placeholder="Enter Username" autocomplete="off" required="true" name="uname">
                        </div>
                       
                        <div class="form-group">
                            <label style="color: #000;font-weight: 400;">Password</label>
                            <input type="password" class="form-control" name="pass" placeholder="Enter Password" autocomplete="off" required="true">
                        </div>
                         <div class="form-group">
                            <label style="color: #000;font-weight: 400;">Confirm Password</label>
                           <input class="form-control" type="password" placeholder="Confirm your password" autocomplete="off" required="true" name="cpass">
                        </div>
                          <div class="col-sm">
          <select name="User Type"  class="custom-select" style="width: 65%;">
  
  <option value="Customer">Customer</option>
</select>
<br>
<br>
      </div>
                        <div class="checkbox">
    

                        </div>
                        <button type="submit" name="login" class="btn btn-success btn-flat m-b-30 m-t-30">Sign Up</button>
                       
                        
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>
