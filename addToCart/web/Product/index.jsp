<%-- 
    Document   : index
    Created on : Feb 7, 2022, 7:36:01 PM
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
        <form action="addproduct.jsp" method="POST">
            Product Name     <input type="text" name="Name"  /><br/>
            Product Qty     <input type="text" name="Qty"  /><br/>
            Product Price  <input type="text" name="Price"  /><br/>
            <input type="submit" value="Add"/> 
        </form>
        <a href="http://localhost:8080/addToCart/Product/ViewProduct.jsp">View Product</a>
    </body> 
</html>
