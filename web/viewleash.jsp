<%-- 
    Document   : viewleash
    Created on : Dec 20, 2019, 9:37:07 PM
    Author     : Ooi Jing Xian
--%>

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

<!DOCTYPE html>
<html>
     <head>
         <link rel="stylesheet" type="text/css" href="style/pro.css">
         <title>Maw & Paw</title>
     </head>
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
<h1 class="cata" style="text-align: center; margin-top: 30px;">LIST OF ALL LEASHES</h1>
<p style="color:red; text-align: left; padding-left: 35px;">*Please update on your shopping cart if you want to buy more than one quantity of the same product.</p>
<table border="1">
<tr>
<td></td>
<td>Product ID</td>
<td>Material</td>
<td>Colour</td>
<td>Price</td>
<td>Add To Cart</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database,userid,password);
statement=connection.createStatement();
String sql ="select * from products WHERE Type = 'Leash'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><img src="<%=resultSet.getString("Name")%>" style="width:150px;height:150px;padding-bottom: 10px;padding-top: 10px" ></a></td>
<td><%=resultSet.getString("ProductID") %></td>
<td><%=resultSet.getString("Material") %></td>
<td><%=resultSet.getString("Colour") %></td>
<td><%=resultSet.getString("Price") %></td>
<td><a href="addtocart.jsp?ProductID=<%=resultSet.getString("ProductID")%>">Add To Cart</a></td>

</tr>
<%
    
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>

    <div id="footer">
	<h3>Right reserved: Maw & Paw Pet Accessories Corp</h3>
    </div>

</body>
</html>
