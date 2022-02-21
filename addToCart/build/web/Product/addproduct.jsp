<%-- 
    Document   : addproduct
    Created on : Feb 7, 2022, 7:45:15 PM
    Author     : arjun
--%>

<jsp:useBean id="prod" scope="page" class="Product.AddProdcut" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% String name =request.getParameter("Name");
            String qty =request.getParameter("Qty");
            String price =request.getParameter("Price");
            prod.Add(name,qty,price);
            response.sendRedirect("ViewProduct.jsp");
        %>
        
    </body>
</html>
