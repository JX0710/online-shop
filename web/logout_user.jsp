<%-- 
    Document   : logout_user
    Created on : Dec 12, 2019, 11:15:50 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style/product.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Maw&Paw</title></head>
<body style="text-align: center;">  
    <% session.invalidate(); %>
    <br><br><br>
    <h2 class="cata" style="padding: 30px 0px;">You have been successfully logout!</h2>
    <p><a href="index.jsp" style="width: 10%; margin: auto; margin-top: 5%; margin-bottom: 20%; padding: 20px;">Login</a></p>
    
</body>
</html>