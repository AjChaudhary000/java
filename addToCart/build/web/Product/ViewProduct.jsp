<%-- 
    Document   : ViewProduct
    Created on : Feb 20, 2022, 1:33:57 PM
    Author     : arjun
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="prod" scope="page" class="Product.AddProdcut" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="2">
        <%
            ResultSet rs = prod.FetchData();
        while(rs.next()){ %>
        <tr>
            <td>
                <%= rs.getString("pname") %>
            </td>
            <td>
                <img src=<%= rs.getString("pimg") %> width="100" height="100"/>
               
            </td>
            <td>
                <%= rs.getString("pprice")%>
            </td>
        </tr>
        
        <%
        }    
        %>
        </table>
        <h1>Hello World!</h1>
    </body>
</html>
