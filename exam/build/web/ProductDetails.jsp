<%-- 
    Document   : ProductDetails
    Created on : Jan 11, 2022, 10:44:21 AM
    Author     : arjun
--%>
<jsp:useBean id="prod" scope="page" class="DB.DB" />
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          
         
                  
         
            
           
       %>
       <table>
           <tr>
     
       <th >Product Name</th>
      <th >Product Price </th>
      <th >Product image</th>
      
    </tr>
         <%
           int id = Integer.parseInt(request.getParameter("id"));
           ArrayList<DB.DB> data = new ArrayList<DB.DB>();
          data = prod.DisplayProductDetails(id);
          for(DB.DB p :data){
      %>
          <tr>
               
        <td><%= p.getPname()%></td>
      <td><%= p.getPprice()%></td>
      <td><%= p.getPimage()%></td>
          </tr>
           <% }%>
      </table>
    </body>
</html>
