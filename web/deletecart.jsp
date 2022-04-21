<%-- 
    Document   : deletecart
    Created on : Dec 20, 2019, 11:08:51 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-
1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<head><link rel="stylesheet" type="text/css" href="style/pro.css">
        <title>Maw & Paw</title></head>    
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


               
<table>
<%
String ProductID=request.getParameter("ProductID");
String Userid=(String)session.getAttribute("userid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/petdb","root", "");
Statement st=conn.createStatement();
String query="delete from cart where UserID=? AND ProductID=?";
PreparedStatement ps=conn.prepareStatement(query);
ps.setString(1, Userid);
ps.setString(2, ProductID);

ps.execute();
        
conn.close();%>
<tr><td style="text-align: center;"><%out.println("Product Deleted Successfully!");%></tr></td>
<%}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

</table>
<p><a href="viewcart.jsp" style="width: 10%; margin: auto; margin-right: 10%; margin-top: 5%; padding: 20px; float:right;">Back</a></p>
<div id="footer" style="margin-top: 5.5%">
	<h3>Right reserved: Maw & Paw Pet Accessories Corp</h3>
    </div
</body>