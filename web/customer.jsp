<%-- 
    Document   : customer
    Created on : Dec 17, 2019, 8:11:15 PM
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
        <body><center><img src="Logo12.png" ></center>
               <ul>
               <li><a href="admin.jsp">Add New Admin</a></li>
                <li><a href="addnewproduct.jsp">Add New Product</a></li>
                <li><a href="updateproduct.jsp">Modify Product</a></li>
                <li><a href="customer.jsp">Customer List</a></li>
                <li><a href="vieworder.jsp">Order List</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
        <table border="1" style="border-collapse:collapse">
        <tr>
        
        <td>User ID</td>
        <td>Username</td>
        <td>Email</td>
        <td>Phone Number</td>
        <td>Address</td>
        
        
        </tr>
            <%
                try{
                connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                statement=connection.createStatement();
                String sql ="select * from users";
                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
            %>
        <tr>
       
        <td><%=resultSet.getString("UserID") %></td>
        <td><%=resultSet.getString("Username") %></td>
        <td><%=resultSet.getString("Email") %></td>
        <td><%=resultSet.getString("PhoneNO") %></td>
        <td><%=resultSet.getString("Address")%></td>
        
        
        
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

