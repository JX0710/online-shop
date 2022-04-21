<%-- 
    Document   : updateproduct3
    Created on : Dec 17, 2019, 5:26:15 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-
1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/petdb";%>
<%!String user = "root";%>
<%!String psw = "";%>

<head><link rel="stylesheet" type="text/css" href="style/design.css">
        <title>Maw&Paw</title></head>    
<body><center><img src="Logo12.png" ></center>
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
        String ProductID = request.getParameter("Productid");
        String Material=request.getParameter("material");
        String Colour=request.getParameter("colour");
        String Price=request.getParameter("price");
        String Type=request.getParameter("type");
        String Name=request.getParameter("imgname");
        String Quantity=request.getParameter("quantity");
        
        if(ProductID != null)
       {
        Connection con = null;
        PreparedStatement ps = null;
        String Product= request.getParameter(ProductID);
        try
       {
        Class.forName(driverName);
        con = DriverManager.getConnection(url,user,psw);
        String sql="Update products set ProductID=?,Material=?,Colour=?,Price=?,Type=?,Name=?,quantity=? where ProductID="+ProductID;
        ps = con.prepareStatement(sql);
        ps.setString(1,ProductID);
        ps.setString(2,Material);
        ps.setString(3,Colour);
        ps.setString(4,Price);
        ps.setString(5,Type);
        ps.setString(6,Name);
        ps.setString(7,Quantity);
       
        int i = ps.executeUpdate();
        if(i > 0)
       {%>
       <tr><td align="center"><%out.print("Product Updated Successfully");%></td></tr>
       <%}
        else
       {%>
       <tr><td align="center"><%out.print("There is a problem in updating product.");%></td></tr>
       <%}
       }
        catch(SQLException sql)
       {
        request.setAttribute("error", sql);
        out.println(sql);
       }
       }
     %>
    </table></body>
