<%-- 
    Document   : validatereg
    Created on : Mar 1, 2020, 5:44:30 PM
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

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    </head>
    <body>
        
          <%
        
                    String fname=request.getParameter("fname");
                    String lname=request.getParameter("lname");
                    
                    String phone=request.getParameter("phno");
                   
                    String emailid=request.getParameter("eid");
                    String uname=request.getParameter("uname");
                    String pass=request.getParameter("pass");
                    String cpass=request.getParameter("cpass");
               
            
                    
            
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root",""); 
    if(pass.equals(cpass))
            {
    String sql="INSERT INTO `register`( `fname`, `lname`, `phno`, `emailid`, `uname`, `pass`) VALUES (?,?,?,?,?,?)";
 
    PreparedStatement stmt1=con.prepareStatement(sql);  
  stmt1.setString(1, fname);
  stmt1.setString(2, lname);
  stmt1.setString(3, phone);
  stmt1.setString(4, emailid);
  stmt1.setString(5, uname);
  stmt1.setString(6, pass);

  stmt1.executeUpdate();
  
  String sql1="INSERT INTO `login`( `username`, `password`, `type`) VALUES (?,?,?)";
 
    PreparedStatement stmt2=con.prepareStatement(sql1);  
  stmt2.setString(1, uname);
  stmt2.setString(2, pass);
  stmt2.setString(3, "Customer");
  

  stmt2.executeUpdate();

  response.sendRedirect("regsuccess.jsp");
con.close();

            }
            
}

            
            
  catch(Exception e)
  { e.printStackTrace();
  out.println(e);
  
    }
        
        %>
        <center>
            <br><br>
        <h1>Invalid Credentials !!</h1>
        <form action="index.jsp">
            <br><br>
            <input type="submit" value="OK" class="btn btn-danger">
        </form>
        </center>
    </body>
</html>
