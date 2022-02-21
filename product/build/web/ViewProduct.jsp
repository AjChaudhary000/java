<%-- 
    Document   : ViewProduct
    Created on : Feb 21, 2022, 7:02:50 PM
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
        <a href="http://localhost:8080/product/Home.jsp"> <- Back</a>
        <form action="AddToCardAddProduct.jsp" method="post">
        <table border="1">
            <tr>
                <td>Id</td>
                  <td>Product Name</td>
                    <td>Product Qty</td>
                      <td>Product Price</td>
                      <td>Add to cart</td>
            </tr>
       <% 
       ResultSet rs = prod.ViewProduct();
       while(rs.next()){
           %>
           <tr>
               <td><%=rs.getInt("pid") %></td>
               <td><%=rs.getString("pname") %></td>
                    <td><%=rs.getString("pqty") %></td>
                      <td><%=rs.getString("pprice") %></td>
                      <td><%=rs.getString("pprice") %></td>
                      <td><input type="checkbox" name="addtocart" value="<%= rs.getInt("pid")%>"/></td>
            </tr>
       <%
       
       }
       
       %><tr>
           <td colspan="4" ></td>
           <td colspan="0" ><button type="submit" class="btn btn-primary">ADD TO CART</button></td>
       </tr>
       </table>
           </form>
    </body>
</html>
