<%-- 
    Document   : updateproduct2
    Created on : Dec 17, 2019, 5:25:15 PM
    Author     : Ooi Jing Xian
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
        <%
            String Productid = request.getParameter("ProductID");
            String driver = "com.mysql.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String database = "petdb";
            String userid = "root";
            String password = "";
            try {
            Class.forName(driver);
            } catch (ClassNotFoundException e) {
            e.printStackTrace();
            }
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
        %>
        <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from products where ProductID="+Productid;
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
        %>

        <!DOCTYPE html>
            <html>
            <head><link rel="stylesheet" type="text/css" href="style/design2.css">
            <title>Maw&Paw</title></head>
            <body>
            <ul>
               <li><a href="admin.jsp">Add New Admin</a></li>
                <li><a href="addnewproduct.jsp">Add New Product</a></li>
                <li><a href="updateproduct.jsp">Modify Product</a></li>
                <li><a href="customer.jsp">Customer List</a></li>
                <li><a href="vieworder.jsp">Order List</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
                <table>
            <form method="post" action="updateproduct3.jsp">
            <tr><td><img src="<%=resultSet.getString("Name")%>" style="width:150px; height:150px; padding-bottom: 10px; padding-top: 10px;"></td></tr>
            <input type="hidden" name="imgname" value="<%=resultSet.getString("Name") %>">
            <input type="hidden" name="Productid" value="<%=resultSet.getString("ProductID") %>">
            <tr><td>Product ID:</td>
                <td><input type="text" name="Productid" value="<%=resultSet.getString("ProductID") %>" disabled></td>
            </tr>
            <br>
            <tr><td>Material:</td>
                <td><input type="text" name="material" value="<%=resultSet.getString("Material") %>"></td>
            </tr>
            <br>
            <tr><td>Colour:</td>
                <td><input type="text" name="colour" value="<%=resultSet.getString("Colour") %>"></td>
            </tr> 
            <br>
            <tr><td>Price:</td>
                <td><input type="text" name="price" value="<%=resultSet.getString("Price") %>"></td>
                </tr>
            <br>
            <tr><td>Type:</td>
                <td><input type="text" name="type" value="<%=resultSet.getString("Type") %>"></td>
            </tr> 
            <br>
            <tr><td>Quantity:</td>
                <td><input type="text" name="quantity" value="<%=resultSet.getString("Quantity") %>"></td>
            </tr> 
            
            <br><br>
            <tr><td colspan="2" align="center"><input type="submit" value="Submit"></td></tr>
            </form>
            <%
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
                </table></body>
            </html>
