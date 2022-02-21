<%-- 
    Document   : AddProductCheck
    Created on : Feb 21, 2022, 6:55:06 PM
    Author     : arjun
--%>
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
     String pname = request.getParameter("pname");
     String pqty = request.getParameter("pqty");
     String pprice = request.getParameter("pprice");
     int index = prod.AddProduct(pname, pqty, pprice);
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
