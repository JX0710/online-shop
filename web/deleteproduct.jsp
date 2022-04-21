<%-- 
    Document   : deleteproduct2
    Created on : Dec 17, 2019, 5:27:57 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-
1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<head><link rel="stylesheet" type="text/css" href="style/design.css">
        <title>Sunset Hotel</title></head>    
<body><center><img src="Logo12.png" ></center>
                <ul>
               <li><a href="admin.jsp">Add New Admin</a></li>
                <li><a href="addnewproduct.jsp">Add New Product</a></li>
                <li><a href="updateproduct.jsp">Modify Product</a></li>
                <li><a href="customer.jsp">Customer List</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
<table>
<%
String ProductID=request.getParameter("ProductID");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/petdb","root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM products WHERE ProductID="+ProductID);%>
<tr><td><%out.println("Product Deleted Successfully!");%></tr></td>
<%}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</table>
