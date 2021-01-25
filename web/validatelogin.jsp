<%-- 
    Document   : validatelogin
    Created on : Feb 26, 2020, 8:44:51 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <title>JSP Page</title>
    </head>
    <body>
        
        <%   
            String uname=request.getParameter("uname");
            String pass=request.getParameter("pass");
            String type=request.getParameter("Usertype");
            session.setAttribute("user", uname);
            session.setAttribute("pass", pass);
            session.setAttribute("utype", type);
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select username,password,type from login where username=? and password=? and type=?");  
  stmt.setString(1, uname);
  stmt.setString(2, pass);
  stmt.setString(3, type);
  ResultSet rs=stmt.executeQuery();  
if(rs.next()) 
{
if (type.equals("Admin")) {
            response.sendRedirect("dashboard.jsp");
        }

else
{
    response.sendRedirect("custDash.jsp");
    
}

}                          

con.close();
  }
  catch(Exception e){ out.println(e);
    }  

  
%>


        <br><br>
        <center><h1>Invalid Credentials!</h1>
            <br><br>
        <form action="index.jsp">
            <input type="submit" value="Submit" class="btn btn-danger">
        </form>
            </center>
    </body>
</html>
