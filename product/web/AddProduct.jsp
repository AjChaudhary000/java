<%-- 
    Document   : AddProduct
    Created on : Feb 21, 2022, 6:52:58 PM
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
        <h1>Add Products</h1>
        <form action="AddProductCheck.jsp" method="post">
        <input type="text" placeholder="Enter the Product Name " name="pname"/>
        <input type="text" placeholder="Enter the Product Qty " name="pqty"/>
        <input type="text" placeholder="Enter the Product Price " name="pprice"/>
        <input type="submit" value="Add Product" name="submit"/>
        
    </form>
    </body>
</html>
