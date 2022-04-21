<%-- 
    Document   : admin2
    Created on : Dec 12, 2019, 10:57:11 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<head><link rel="stylesheet" type="text/css" href="style/design.css">
        <title>Maw&Paw</title></head>
    <body><table>
            <center><img src="Logo12.png" ></center>
               <ul>
              <li><a href="admin.jsp">Add New Admin</a></li>
                <li><a href="addnewproduct.jsp">Add New Product</a></li>
                <li><a href="updateproduct.jsp">Modify Product</a></li>
                <li><a href="customer.jsp">Customer List</a></li>
                <li><a href="vieworder.jsp">Order List</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
            <%
            String email=request.getParameter("email");
            String password=request.getParameter("password");

            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/petdb", "root", "");
            Statement st=conn.createStatement();
            int i=st.executeUpdate("insert into admins(Email,password)values('"+email+"','"+password+"')");%>
            <tr><td><%out.println("New admin is successfully added!");%></td></tr>
            <%}
            catch(Exception e)
            {
            System.out.print(e);
            e.printStackTrace();
            }
            %>
    </table></body>
