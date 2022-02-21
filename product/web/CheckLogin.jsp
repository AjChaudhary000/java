<%-- 
    Document   : CheckLogin.js
    Created on : Feb 21, 2022, 6:30:20 PM
    Author     : arjun
--%>
<jsp:useBean id="user" scope="page" class="User.User" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
     String uname = request.getParameter("uname");
     String upass = request.getParameter("upass");
     int index = user.UserCheck(uname, upass);
     if(index == 0){
          %>
     <h1>User data Invalid .....</h1>
      <label> <a href="http://localhost:8080/product/login.jsp"> Click Here</a></label>
        <%
        
     }else{
     response.sendRedirect("Home.jsp");
     }
     %>
    </body>
</html>
