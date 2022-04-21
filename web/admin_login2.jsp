<%-- 
    Document   : admin_login2
    Created on : Dec 12, 2019, 11:36:13 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
       <link rel="stylesheet" type="text/css" href="style/design.css">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Maw&Paw</title></head>

<body><center><img src="Logo12.png" ></center>
                <ul>
                <li><a href="admin.jsp">Add New Admin</a></li>
                <li><a href="addnewproduct.jsp">Add New Product</a></li>
                <li><a href="updateproduct.jsp">Modify Product</a></li>
                <li><a href="customer.jsp">Customer List</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
        <%! String userdbEmail;
            String userdbPsw;
        %>
        <%
            Connection con= null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            String driverName = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/petdb";
            String user = "root";
            String dbpsw = "";

            String sql = "select * from admins where email=? and password=? ";

            String email = request.getParameter("email");
            String password = request.getParameter("password");


            if((!(email.equals(null) || email.equals("")) && !(password.equals(null) || password.equals(""))) )
            {
            try{
            Class.forName(driverName);
            con = DriverManager.getConnection(url, user, dbpsw);
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);

            rs = ps.executeQuery();
            if(rs.next())
            { 
            userdbEmail = rs.getString("email");
            userdbPsw = rs.getString("password");

            if(email.equals(userdbEmail) && password.equals(userdbPsw) )
            {
            session.setAttribute("name",userdbEmail);

            response.sendRedirect("admin_welcome.jsp"); 
            } 
            }
            else
            response.sendRedirect("admin_error.jsp");
            rs.close();
            ps.close(); 
            }
            catch(SQLException sqe)
            {
            out.println(sqe);
            } 
            }
            else
            {
        %>
        <center><p style="color:red">Error In Login</p></center>
        <% 
        getServletContext().getRequestDispatcher("/admin_login.jsp").include(request, response);
        }
        %>
</body>
</html>