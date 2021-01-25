<%-- 
    Document   : validatebook
    Created on : Apr 10, 2020, 9:14:07 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

    </head>
    <body>
           <%
              String pno=(String)session.getAttribute("parkno");
              String vcom=request.getParameter("v_comp");
              String regn=request.getParameter("regno");
              String oname=request.getParameter("oname");
              String ocon=request.getParameter("ono");
             
              String uname=(String)session.getAttribute("user");
            String pass=(String)session.getAttribute("pass");
            
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("INSERT INTO `booking`( `pno`, `v_comp`, `rid`, `oname`, `phno`, `bdate`, `amt`) VALUES (?,?,?,?,?,CURDATE(),?)");  
  stmt.setString(1, pno);
  stmt.setString(2, vcom);
  stmt.setString(3, regn);
  stmt.setString(4, oname);
  stmt.setString(5, ocon);
  stmt.setString(6, "UNPAID");
 
  stmt.executeUpdate();

con.close();
  
  }
  catch(Exception e){ out.println(e);
  response.sendRedirect("invalidpage.jsp");
    }  

%>
        <center>
            <br><br>
        <h1>Booking Successfull!!</h1>
        <form action="index.jsp">
            <br><br>
            <input type="submit" value="Submit" class="btn btn-success">
        </form>
        </center>
    </body>
</html>
