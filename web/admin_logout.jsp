<%-- 
    Document   : admin_logout
    Created on : Dec 12, 2019, 11:41:04 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style/design2.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head><title>Maw&Paw</title></head>
</head>
<body>  <center><img src="Logo12.png" ></center>
        <% session.invalidate(); %>
    <br><br><br>
    <h2 class="cata" style="padding: 30px 0px;">You have been successfully logout!</h2>
    <p><a href="index.jsp" style="width: 10%; margin: auto; margin-top: 5%; margin-bottom: 20%; padding: 20px;">Back</a></p>
</body>
</html>