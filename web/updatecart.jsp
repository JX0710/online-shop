<%-- 
    Document   : updatecart
    Created on : Dec 21, 2019, 11:43:12 AM
    Author     : Ooi Jing Xian
--%>

<%@page import="java.sql.*,java.util.*"%>
    <%
        String Productid = request.getParameter("ProductID");
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
    <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from cart where UserID='"+Userid+"'AND ProductID='"+Productid+"'";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){



    %>

<!DOCTYPE html>
<html>
    <head><link rel="stylesheet" type="text/css" href="style/pro.css">
    <title>Maw&Paw</title>
    <style>
        table { 
            margin: auto; 
            font-size: 20px;
            color: black; 
            border: 2.5px solid;
            border-color: lightgoldenrodyellow;
            background-color:rgba(200, 235, 250, 0.8);
            height: 150px;
            width: 40%;
        }

        td {
            padding: 10px 20px;
        }

        input[type=text]{
            width: 80%;
            padding: 5px 20px;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit]{
                padding:15px;
                width: 30%;
                margin: 5px 10px 0px 0px;;
                border: none;
                background-color:#ed9c28;
                border-radius: 10px;
                color: white;
                text-align: center; 
        }
        input[type=submit]:hover{
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

<table width="20%">
    <form method="post" action="updatecart2.jsp">
    <input type="hidden" name="Productid" value="<%=resultSet.getString("ProductID") %>">
    <tr>
        <td align="right">Product ID:</td>
        <td><input type="text" name="Productid" value="<%=resultSet.getString("ProductID") %>" disabled></td>
    </tr>
    <br>
    <tr><td align="right">Quantity:</td>
        <td><input type="text" name="quantity" value="<%=resultSet.getString("Quantity") %>"></td>
    </tr> 

    <br><br>
    <tr><td colspan="2" align="center"><input type="submit" value="Submit"></td></tr>
    </form>
    <%
    }
    connection.close();
    } catch (Exception e) {
    e.printStackTrace();
    }
    %>
</table>
<p><a href="viewcart.jsp" style="width: 10%; margin: auto; margin-right: 10%; margin-top: 5%; padding: 20px; float:right;">Back</a></p>
    <div id="footer" style="margin-top: 5%">
	<h3>Right reserved: Maw & Paw Pet Accessories Corp</h3>
    </div>
</body>
</html>
