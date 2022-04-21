<%-- 
    Document   : vieworder
    Created on : Dec 22, 2019, 12:53:19 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

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
        <body><center><img src="Logo12.png" ></center>
               <ul>
               <li><a href="admin.jsp">Add New Admin</a></li>
                <li><a href="addnewproduct.jsp">Add New Product</a></li>
                <li><a href="updateproduct.jsp">Modify Product</a></li>
                <li><a href="customer.jsp">Customer List</a></li>
                <li><a href="vieworder.jsp">Order List</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
            <table border="1" style="margin-top: 5%;border-collapse:collapse">
        <tr>
        <td>User ID</td>
        <td>Product ID</td>
        <td>Quantity</td>
        
        </tr>
            <%
                try{
                connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                statement=connection.createStatement();
                String sql ="select * from cart ";
                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
            %>
        <tr>
        <td><%=resultSet.getString("UserID") %></td>
        <td><%=resultSet.getString("ProductID") %></td>
        <td><%=resultSet.getString("Quantity") %></td>
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

