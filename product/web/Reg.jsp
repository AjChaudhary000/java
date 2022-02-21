<%-- 
    Document   : Reg
    Created on : Feb 21, 2022, 6:11:45 PM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Registration Page </h1>
    <form action="AddUser.jsp" method="post">
        <input type="text" placeholder="Enter the User Name " name="uname"/>
        <input type="password" placeholder="Enter the Password " name="upass"/>
        <input type="submit" value="Reg" name="submit"/>
        <label>Already Create Account <a href="http://localhost:8080/product/login.jsp"> Click Here</a></label>
    </form>
    </body>
</html>
