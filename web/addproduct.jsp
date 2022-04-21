<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<head><link rel="stylesheet" type="text/css" href="style/design.css">
        <title>Maw&Paw</title></head>
    <body>
            <center><img src="Logo12.png" ></center>
               <ul>
              <li><a href="admin.jsp">Add New Admin</a></li>
                <li><a href="addnewproduct.jsp">Add New Product</a></li>
                <li><a href="updateproduct.jsp">Modify Product</a></li>
                <li><a href="customer.jsp">Customer List</a></li>
                <li><a href="vieworder.jsp">Order List</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
            <table>
            <%
            String productid=request.getParameter("ProductID");
            String material=request.getParameter("Material");
            String colour=request.getParameter("Colour");
            String price=request.getParameter("Price");
            String type=request.getParameter("Type");
            String name=request.getParameter("Name");
            String quantity=request.getParameter("quantity");

            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/petdb", "root", "");
            Statement st=conn.createStatement();
            int i=st.executeUpdate("insert into products(ProductID,Material,Colour,Price,Type,Name,quantity)values('"+productid+"','"+material+"','"+colour+"','"+price+"','"+type+"','"+name+"','"+quantity+"')");%>
            <tr><td><%out.println("New product is successfully added!");%></td></tr>
            <%}
            catch(Exception e)
            {
            System.out.print(e);
            e.printStackTrace();
            }
            %>
    </table></body>