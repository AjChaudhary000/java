<%-- 
    Document   : AddUser
    Created on : Feb 21, 2022, 6:16:30 PM
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
     int index = user.AddUsers(uname, upass);
     if(index == 1){
         response.sendRedirect("login.jsp");
     }else{
     %>
     <h1>User data Invalid .....</h1>
        <%
     }
     %>
    </body>
</html>
