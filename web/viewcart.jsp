<%-- 
    Document   : viewcart
    Created on : Dec 20, 2019, 10:35:00 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

        
        <%
            String Userid=(String)session.getAttribute("userid");
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
<head> <link rel="stylesheet" type="text/css" href="style/pro.css">
       <title>Maw & Paw</title>
       <style>
           th, td a {
                text-align: center;
                background-color:#ed9c28;
                display: block;
                padding: 10px 0px;
                margin: 5px 10px;
                border-radius: 10px;
                color: black;
                font-weight: bold;
                }
            td a:hover {
                background-color: #f5b65d;
                }
       </style>
</head>
<body>
    <div id="head">
        <img src="Logo12.png" alt="logo" style="width: 140px; height: 140px; float: left;">
        <h1>Welcome,<%=session.getAttribute("name")%></h1>

        <ul class="navi">
            <li><img src="icon/bell.png" style="width: 20px; height: 20px; padding-right: 5px">Notification</li>
            <li><img src="icon/help1.png" style="align: center; width: 20px; height: 20px; padding-right: 5px">Help</li>
            <li><img src="icon/cart.png" style="width: 20px; height: 20px; padding-right: 5px"><a href="viewcart.jsp">Shopping Cart</a></li>
            <li><img src="icon/person.png" style="width: 20px; height: 20px; padding-right: 5px"><a href="logout_user.jsp">Sign Out</a></li>
        </ul>
        <br></br>

</div>

<div id="left">
    <h2 class="trans">MENU</h2>
    <u1 class= "menu" >
        <li><a href="newhomeuser.jsp">HOME</a></li>
        <li class="cata">CATALOG</li>
            <p><a href="viewcollar.jsp">Collar</a></p>
            <p><a href="viewcloth.jsp">Cloth</a></p>
            <p style="margin-bottom: 25px;"><a href="viewleash.jsp">Leash</a></p>
    </ul>
</div>
  
<div id="center">
<h1 class="cata" style="text-align: center; margin-top: 30px;">SHOPPING CART</h1>
<table border="1" style="margin-top: 5%;border-collapse:collapse">
<tr>
<td>Product ID</td>
<td>Quantity</td>
</tr>
    <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from cart WHERE UserID="+Userid;
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
    %>
<tr>
<td><%=resultSet.getString("ProductID") %></td>
<td><%=resultSet.getString("Quantity") %></td>
<td><a href="updatecart.jsp?ProductID=<%=resultSet.getString("ProductID")%>">Update</a></td>
<td><a href="deletecart.jsp?ProductID=<%=resultSet.getString("ProductID")%>">Delete</a></td>
</tr>
    <%

        }
        connection.close();
        } catch (Exception e) {
        e.printStackTrace();
        }


    %>

    
</table>
    
    <p><a href="checkout.jsp" style="width: 8%; float: right; margin-right: 10%; margin-top: 10px;">Checkout</a></p>
    
</div>
    
    <div id="footer" style="margin-top: 5%">
	<h3>Right reserved: Maw & Paw Pet Accessories Corp</h3>
    </div>
    
</body>
</html>
