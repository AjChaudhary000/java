<%-- 
    Document   : ViewAddToCart
    Created on : Feb 21, 2022, 7:55:31 PM
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
        <table border="1">
            <tr>
                <td>Id</td>
                  <td>Product Name</td>
                    <td>Product Qty</td>
                      <td>Product Price</td>
                      
            </tr>
        <% 
         HttpSession s = request.getSession();
         String id[] = (String[]) s.getAttribute("AddToCartIds");
      for(String d :id){
      ResultSet rs =  prod.AddToCartViewProduct(Integer.parseInt(d));
      while(rs.next()){
           %>
           <tr>
               <td><%=rs.getInt("pid") %></td>
               <td><%=rs.getString("pname") %></td>
                    <td><%=rs.getString("pqty") %></td>
                      <td><%=rs.getString("pprice") %></td>
                      <td><%=rs.getString("pprice") %></td>
                     
            </tr>
       <%
       
       }
      }
       
        
        %>
        </table>
    </body>
</html>
