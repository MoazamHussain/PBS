<%-- 
    Document   : CustPro
    Created on : Apr 10, 2020, 2:23:41 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<!doctype html>
<html class="no-js" lang="">
<head>
    
    <title>Customer Profile</title>
   

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

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>
   <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                  <li >
                        <a href="custDash.jsp"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                    </li>
                   
                     <li class="active">
                               <a href="CustPro.jsp"> <i class="menu-icon fa fa-th"></i>Profile</a>
                    </li>
                       <li>
                        <a href="vehicle.jsp"> <i class="menu-icon fa fa-th"></i>Book Parking</a>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
    <div id="right-panel" class="right-panel">
<header id="header" class="header">
            <div class="top-left">
                <div class="navbar-header">
                    <a class="navbar-brand" href=""><img src="images/cust.png" alt="Logo"></a>
                    <a class="navbar-brand hidden" href="./"><img src="images/logo3.png" alt="Logo"></a>
                    <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                </div>
            </div>
            <div class="top-right">
                <div class="header-menu">
                    <div class="header-left">
                        
                        <div class="form-inline">
                           
                        </div>

                     
                    </div>

                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="images/images.png" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                           

                            <a class="nav-link" href="index.jsp"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>

                </div>
            </div>
        </header>
        <div class="content" style="background-image: url(images/park3.jpg);height: 500px;">
            <div class="animated fadeIn">


                <div class="row">
                    <div class="col-lg-6">
                        <div class="card">
                            
                           
                        </div> <!-- .card -->

                    </div><!--/.col-->
<%
          String uname=(String)session.getAttribute("user");
            String pass=(String)session.getAttribute("pass");
            
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select * from register where uname=? and pass=?");  
  stmt.setString(1, uname);
  stmt.setString(2, pass);
 
  ResultSet rs=stmt.executeQuery();  
while(rs.next()) 
{


%>
              

                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>Customer Profile</strong> 
                            </div>
                            <div class="card-body card-block">
                                <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                    <p style="font-size:16px; color:red" align="center">
                                    <div class="row form-group">
              
                                        <div class="col col-md-3"><label for="text-input" class=" form-control-label">Name</label></div>
                                        <div class="col-12 col-md-9"><input class=" form-control" id="adminname" name="adminname" type="text" value="<%=rs.getString("fname")%> <%=rs.getString("lname")%>" readonly="true"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="email-input" class=" form-control-label">User Name</label></div>
                                        <div class="col-12 col-md-9"><input class=" form-control" id="username" name="username" type="text" value="<%=rs.getString("uname")%>"  readonly='true'></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="password-input" class=" form-control-label">Contact Number</label></div>
                                        <div class="col-12 col-md-9"> <input class="form-control " id="contactnumber" name="contactnumber" type="text" value="<%=rs.getString("phno")%>" required="true" readonly="true"></div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3"><label for="disabled-input" class=" form-control-label">Email</label></div>
                                        <div class="col-12 col-md-9"><input class="form-control " id="email" name="email" type="email" value="<%=rs.getString("emailid")%>" required="true" readonly='true'></div>
                                    </div>
                                  
                                   <p style="text-align: center;"> <button style="text-align: center; width: 10%; height: 10%" type="submit" class="btn btn-warning btn-sm" name="submit" >  OK  </button></p>
                                </form>
                                                          <%}                          

con.close();
  }
  catch(Exception e){ out.println(e);
    }  


%>
                            </div>
                            
                        </div>
                        
                    </div>

                    <div class="col-lg-6">
                        
                  
                </div>

           

            </div>


        </div><!-- .animated -->
    </div><!-- .content -->

    <div class="clearfix"></div>



</div><!-- /#right-panel -->

<!-- Right Panel -->

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
<script src="assets/js/main.js"></script>


</body>
</html>
