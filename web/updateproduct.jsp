<%-- 
    Document   : updateproduct
    Created on : Dec 17, 2019, 5:24:40 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
        <%
            
            String driver = "com.mysql.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String database = "petdb";
            String userid = "root";
            String password = "";
            try {
            Class.forName(driver);
            } catch (ClassNotFoundException e) {
            e.printStackTrace();
            }
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
        %>
        
        <html>
        <head><link rel="stylesheet" type="text/css" href="style/design2.css">
        <title>Maw&Paw</title></head>
        <body>
               <ul>
              <li><a href="admin.jsp">Add New Admin</a></li>
                <li><a href="addnewproduct.jsp">Add New Product</a></li>
                <li><a href="updateproduct.jsp">Modify Product</a></li>
                <li><a href="customer.jsp">Customer List</a></li>
                <li><a href="vieworder.jsp">Order List</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
        <table border="1" style="border-collapse:collapse;margin-top: 10%; width: 50%; text-align: center;">
        <tr>
        <td></td>
        <td>Product ID</td>
        <td>Material</td>
        <td>Colour</td>
        <td>Price</td>
        <td>Type</td>
        <td>Quantity</td>
        
        </tr>
            <%
                try{
                connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                statement=connection.createStatement();
                String sql ="select * from products";
                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
            %>
        <tr>
        <td><img src="<%=resultSet.getString("Name")%>" style="width:150px;height:150px;padding-bottom: 10px;padding-top: 10px" ></td>
        <td><%=resultSet.getString("ProductID") %></td>
        <td><%=resultSet.getString("Material") %></td>
        <td><%=resultSet.getString("Colour") %></td>
        <td><%=resultSet.getString("Price") %></td>
        <td><%=resultSet.getString("Type") %></td>
        <td><%=resultSet.getString("Quantity") %></td>
        
        <td><a href="updateproduct2.jsp?ProductID=<%=resultSet.getString("ProductID")%>">Update</a></td>
        <td><a href="deleteproduct.jsp?ProductID=<%=resultSet.getString("ProductID")%>">Delete</a></td>
        </tr>
            <%
                }
                connection.close();
                } catch (Exception e) {
                e.printStackTrace();
                }
            %>
        </table>
        </body>
        </html>
