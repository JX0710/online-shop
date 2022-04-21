<%-- 
    Document   : admin_welcome
    Created on : Dec 12, 2019, 11:38:25 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style/design.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head><title>Maw&Paw</title></head>
</head>
<body><center><img src="Logo12.png" ></center>
               <ul>
                <li><a href="admin.jsp">Add New Admin</a></li>
                <li><a href="addnewproduct.jsp">Add New Product</a></li>
                <li><a href="updateproduct.jsp">Modify Product</a></li>
                <li><a href="customer.jsp">Customer List</a></li>
                <li><a href="vieworder.jsp">Order List</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
<table><tr><td>Welcome, <%=session.getAttribute("name")%></tr></td>
<tr><td><a href="admin_logout.jsp">Logout</a></table></tr></td>
</body>
</html>
