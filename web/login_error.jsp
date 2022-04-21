<%-- 
    Document   : login_error
    Created on : Dec 12, 2019, 11:16:17 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style/design.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head><title>Maw&Paw</title></head>
</head>
<body>  
               
        <center><p style="color:red">Sorry, your record is not available.</p></center>
        <%
            getServletContext().getRequestDispatcher("/Login.jsp").include(request, response);
        %>
</body>
</html>
