<%-- 
    Document   : login_user
    Created on : Dec 12, 2019, 11:13:40 PM
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

<body>
        <%! String userdbUsername;
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

            String sql = "select * from users where Username=? and password=? ";

            String username = request.getParameter("username");
            String password = request.getParameter("password");


            if((!(username.equals(null) || username.equals("")) && !(password.equals(null) || password.equals(""))) )
            {
            try{
            Class.forName(driverName);
            con = DriverManager.getConnection(url, user, dbpsw);
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);

            rs = ps.executeQuery();
            if(rs.next())
            { 
            userdbUsername = rs.getString("Username");
            userdbPsw = rs.getString("password");

            if(username.equals(userdbUsername) && password.equals(userdbPsw) )
            {
            session.setAttribute("name",userdbUsername);
            session.setAttribute("userid",rs.getString("UserID"));
            
            response.sendRedirect("newhomeuser.jsp"); 
            } 
            }
            else
            response.sendRedirect("login_error.jsp");
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
        getServletContext().getRequestDispatcher("/Login.jsp").include(request, response);
        }
        %>
</body>
</html>