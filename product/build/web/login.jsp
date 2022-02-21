<%-- 
    Document   : login
    Created on : Feb 21, 2022, 5:59:04 PM
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
        <h1>Login Page </h1>
    <form action="CheckLogin.jsp" method="post">
        <input type="text" placeholder="Enter the User Name " name="uname"/>
        <input type="password" placeholder="Enter the Password " name="upass"/>
        <input type="submit" value="Login" name="submit"/>
        <label>A new Create Account <a href="http://localhost:8080/product/Reg.jsp"> Click Here</a></label>
    </form>
    </body>
</html>
