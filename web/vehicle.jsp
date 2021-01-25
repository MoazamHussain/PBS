<%-- 
    Document   : vehicle
    Created on : Apr 10, 2020, 2:25:17 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<!doctype html>

 <html class="no-js" lang="">
<head>
   
    <title>Vechicle</title>
   

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
       
    
       
       
    #weatherWidget .currentDesc {
        color: #ffffff!important;
    }
        .traffic-chart {
            min-height: 335px;
        }
        #flotPie1  {
            height: 150px;
        }
        #flotPie1 td {
            padding:3px;
        }
        #flotPie1 table {
            top: 20px!important;
            right: -10px!important;
        }
        .chart-container {
            display: table;
            min-width: 270px ;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        #flotLine5  {
             height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }
        #cellPaiChart{
            height: 160px;
        }
  
  .container {
 
  margin: 0 auto;
}
.btn {
  height: 45px;
  width: 150px;
  cursor: pointer;
}
h1 {
  text-align: center;
  font-weight: 100;
  font-family; sans-serif; 
}
@media (max-width: 1350px){
    .container {
    width: 50%;
  }
}
@media (max-width: 480px){
  .container {
    width: 100%;
  }
}
.rt{
  text-align: right;
}
.lef{
  text-align: left;
}
.col{
  padding: 1px;
}
</style>
</head>
 
<body>
     <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li >
                       <a href="custDash.jsp"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                    </li>
                   
                     <li>
                                <a href="CustPro.jsp"> <i class="menu-icon fa fa-th"></i>Profile</a>
                    </li>
                        <li class="active">
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
                    <a class="navbar-brand" href="dashboard.jsp"><img src="images/cust.png" alt="Logo"></a>
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
         <!--div class="breadcrumbs">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>Dashboard</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><a href="dashboard.php">Dashboard</a></li>
                                    <li><a href="add-vehicle.php">Vehicle</a></li>
                                    <li class="active">Add Vehicle</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div-->


        <div class="content" style="background-image: url(images/park2.jpg);height: 500px;">
            <div class="animated fadeIn">


          <div class="container" style="text-align: center;">
            
                   <center><h1 style="color: yellow;background-color:grey ; width: 40%">Select Parking Slot</h1></center>
    
                   <%!
                   ArrayList ar=new ArrayList();
                   int n;
                   %>
                   
                             <%
              String pno=request.getParameter("pno");
              String uname=(String)session.getAttribute("user");
            String pass=(String)session.getAttribute("pass");
            String v=request.getParameter("val");
            int c=0;
            
            
             
            
  try {
   
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select pno from booking  where bdate=CURDATE() and amt='UNPAID'");  
  
  
  ResultSet rs=stmt.executeQuery();  
  while(rs.next())
  {
      ar.add(rs.getString("pno"));
      c++;
  }
  n=ar.size();
 
  con.close();
  }
  catch(Exception e)
  {
  }
   
    
%>
            
                
         
  <hr>
  
  <div class="row">
      
      <div class="col"><a href="park.jsp?val=1"><button style="background-color: green; width: 120px;height: 40px;color: white" id="1" value="1">1</button></a></div>
     
  <div class="col rt"><a href="park.jsp?val=2"><button style="background-color: green; width: 120px;height: 40px;color: white" id="2" value="2">2</button></a></div>
  <div class="col lef"><a href="park.jsp?val=3"><button style="background-color: green; width: 120px;height: 40px;color: white" id="3" value="3">3</button></a></div>
  <div class="col"><a href="park.jsp?val=4"><button style="background-color: green; width: 120px;height: 40px;color: white" id="4" value="4">4</button></a></div>
  </div>
  <div class="row">
  <div class="col"> <a href="park.jsp?val=5"><button style="background-color: green; width: 120px;height: 40px;color: white" id="5" value="5">5</button></a></div>
  <div class="col rt"><a href="park.jsp?val=6"><button style="background-color: green; width: 120px;height: 40px;color: white" id="6" value="6">6</button></a></div>
  <div class="col lef"><a href="park.jsp?val=7"><button style="background-color: green; width: 120px;height: 40px;color: white" id="7" value="7">7</button></a></div>
  <div class="col"><a href="park.jsp?val=8"><button style="background-color: green; width: 120px;height: 40px;color: white" id="8" value="8">8</button></a></div>
  </div>
   <div class="row">
  <div class="col"> <a href="park.jsp?val=9"><button style="background-color: green; width: 120px;height: 40px;color: white" id="9" value="9">9</button></a></div>
  <div class="col rt"><a href="park.jsp?val=10"><button style="background-color: green; width: 120px;height: 40px;color: white" id="10" value="10">10</button></a></div>
  <div class="col lef"><a href="park.jsp?val=11"><button style="background-color: green; width: 120px;height: 40px;color: white" id="11" value="11">11</button></a></div>
  <div class="col"><a href="park.jsp?val=12"><button style="background-color: green; width: 120px;height: 40px;color: white" id="12" value="12">12</button></a></div>
  </div>
   <div class="row">
  <div class="col"> <a href="park.jsp?val=13"><button style="background-color: green; width: 120px;height: 40px;color: white" id="13" value="13">13</button></a></div>
  <div class="col rt"><a href="park.jsp?val=14"><button style="background-color: green; width: 120px;height: 40px;color: white" id="14" value="14">14</button></a></div>
  <div class="col lef" ><a href="park.jsp?val=15"><button style="background-color: green; width: 120px;height: 40px;color: white" id="15" value="15">15</button></a></div>
  <div class="col"><a href="park.jsp?val=16"><button style="background-color: green; width: 120px;height: 40px;color: white" id="16" value="16">16</button></a></div>
  </div>
   <div class="row">
  <div class="col"> <a href="park.jsp?val=17"><button style="background-color: green; width: 120px;height: 40px;color: white" id="17" value="17">17</button></a></div>
  <div class="col rt"><a href="park.jsp?val=18"><button style="background-color: green; width: 120px;height: 40px;color: white" id="18" value="18">18</button></a></div>
  <div class="col lef"><a href="park.jsp?val=19"><button style="background-color: green; width: 120px;height: 40px;color: white" id="19" value="19">19</button></a></div>
  <div class="col"><a href="park.jsp?val=20"><button style="background-color: green; width: 120px;height: 40px;color: white" id="20" value="20">20</button></a></div>
  </div>
   <div class="row">
  <div class="col"> <a href="park.jsp?val=21"><button style="background-color: green; width: 120px;height: 40px;color: white" id="21" value="21">21</button></a></div>
  <div class="col rt"><a href="park.jsp?val=22"><button style="background-color: green; width: 120px;height: 40px;color: white" id="22" value="22">22</button></a></div>
  <div class="col lef"><a href="park.jsp?val=23"><button style="background-color: green; width: 120px;height: 40px;color: white" id="23" value="23">23</button></a></div>
  <div class="col"><a href="park.jsp?val=24"><button style="background-color: green; width: 120px;height: 40px;color: white" id="24" value="24">24</button></a></div>
  </div>
   
  
</div>
        


            </div>
            <!-- .animated -->
        </div>
        <!-- /.content -->
       
        <!-- Footer -->
 
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
