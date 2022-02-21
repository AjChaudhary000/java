<%@page import="java.util.ArrayList"%>
<jsp:useBean id="prod" scope="page" class="DB.DB" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
         
      <table>
         
          <tr>
               <%
           ArrayList<DB.DB> data = new ArrayList<DB.DB>();
          data = prod.DisplayProduct();
          for(DB.DB p :data){
      %>
      <td> <a href="ProductDetails.jsp?id=<%= p.getId()%>"> <%= p.getPname()%></a></td>
              <% }%>
          </tr>
      </table>
    </body>
</html>
