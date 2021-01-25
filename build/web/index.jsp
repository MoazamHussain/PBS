<%-- 
    Document   : index
    Created on : Apr 10, 2020, 2:21:28 PM
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

                        <h1 style="color: #000;font-weight: 600;">Parking Booking System</h1>
                    </a>
                </div>
                <div class="login-form">
                    <form method="post" action="validatelogin.jsp">
                         <p style="font-size:16px; color:red" align="center"></p>
                        <div class="form-group">
                            <label style="color: #000;font-weight: 400;"><strong>User Name</strong></label>
                            <input class="form-control" maxlength="13" type="text" placeholder="Username" required="true" name="uname" autocomplete="off">
                        </div>
                        <div class="form-group">
                            <label style="color: #000;font-weight: 400;"><strong>Password</strong></label>
                            <input type="password" maxlength="13" class="form-control"  name="pass" placeholder="Password" required="true" autocomplete="off">
                        </div>
                          <div class="col-sm">
          <select name="Usertype"  class="custom-select" style="width: 65%;">
  <option value="Admin">Admin</option>
  <option value="Customer">Customer</option>
</select>
      </div>
                        <div class="checkbox">
                            
                            <label class="pull-right">
                                <a href="">Forgotten Password?</a>
                            </label>

                        </div>
                        <br>
                        <button type="submit" name="login" class="btn btn-success btn-flat m-b-30 m-t-30">Sign in</button><br><br>
                       
                         <p class="message">Not registered? <a href="register.jsp">Create an account</a></p>
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

