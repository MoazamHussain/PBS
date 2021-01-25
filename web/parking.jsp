<%-- 
    Document   : parking
    Created on : Apr 10, 2020, 2:24:38 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<!doctype html>

 <html class="no-js" lang="">
<head>
    
    <title>Parking Bookings</title>
   

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
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />

   <style>
   

    </style>
</head>
<body>
     <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li >
                        <a href="dashboard.jsp"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                    </li>
                       <li class="active">
                        <a href="parking.jsp"> <i class="menu-icon fa fa-th"></i>Parking</a>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
    <div id="right-panel" class="right-panel">
<header id="header" class="header">
            <div class="top-left">
                <div class="navbar-header">
                    <a class="navbar-brand" href="dashboard.jsp"><img src="images/logo1.png" alt="Logo"></a>
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

   <!-- Content -->
        <div class="content" style="background-image: url(images/park2.jpg);height: 500px;">
            <div class="animated fadeIn">
                <div class="row">
                   
         

                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Manage Incoming Vehicle</strong>
                        </div>
                        <div class="card-body">
                             <table class="table">
                <thead>
                                        <tr>
                                            <tr>
                  <th>S.NO</th>
            
                 
                    <th>Parking Number</th>
                    <th>Owner Name</th>
                    <th>Vehicle Reg Number</th>
                   
                          <th>Action</th>
                </tr>
                                        </tr>
               </thead>
               <form action="bill.jsp">
                   <%   
           int bookid=0;
            
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select * from booking where amt='UNPAID' ");  
  
  ResultSet rs=stmt.executeQuery();  
  while(rs.next())
          {
              bookid=rs.getInt("bid");
             %>
             <tr>
                 <td><%=rs.getInt("bid")%></td>
                 <td><%=rs.getString("pno")%></td>
                 <td><%=rs.getString("oname")%></td>
                 <td><%=rs.getString("rid")%></td>
                 <td><input type="submit" class="btn btn-danger" name="bid" value="<%=bookid%>"><%=rs.getString("amt")%></td>
                 
                 
             </tr>
             
             
             <%
          }
 
    con.close();
  }
  catch(Exception e){ out.println(e);
    }  

  
%>
               </form>

              </table>

                    </div>
                </div>
            </div>

   
                <!-- /Widgets -->
               </div>
           </div>
       </div>

            </div>
            <!-- .animated -->
        </div>
    </div>
        <!-- /.content -->
        <div class="clearfix"></div>
        <!-- Footer -->
  <footer class="site-footer">
            <div class="footer-inner bg-white">
                <div class="row">
                   
                </div>
            </div>
        </footer>
         <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>

    <!--  Chart js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

    <!--Chartist Chart-->
    <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
    <script src="assets/js/init/weather-init.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
    <script src="assets/js/init/fullcalendar-init.js"></script>


</body>
</html>
