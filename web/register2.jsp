<%-- 
    Document   : register2
    Created on : Dec 12, 2019, 10:15:50 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style/design2.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Maw&Paw</title></head>
    <body>
        <table>
            <br><br><br>
<%
String Username=request.getParameter("username");
String Password=request.getParameter("password");
String Email=request.getParameter("email");
String PhoneNo=request.getParameter("phno");
String Address=request.getParameter("address");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/petdb", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into users(Username,password,Email,PhoneNo,Address)values('"+Username+"','"+Password+"', ' "+Email+"', ' "+PhoneNo+"','"+Address+"')");%>
    <tr><td align="center"><%out.println("Successfully registered!"+"<br>");%></tr></td> 


<%}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

    </table>
    <p><a href="Login.jsp" style="width: 10%; margin: auto; margin-right: 10%; margin-top: 5%; padding: 20px; float:right;">Login</a></p>
    </body> 
</html>
