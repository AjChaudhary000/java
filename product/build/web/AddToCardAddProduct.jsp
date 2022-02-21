<%-- 
    Document   : AddToCardAddProduct
    Created on : Feb 21, 2022, 7:20:23 PM
    Author     : arjun
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="prod" scope="page" class="Product.Product" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
        <% 
         String id[] =  request.getParameterValues("addtocart");
         HttpSession s = request.getSession();
         s.setAttribute("AddToCartIds", id);
         response.sendRedirect("Home.jsp");
           %>
          
    </body>
</html>
