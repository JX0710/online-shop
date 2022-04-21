<%-- 
    Document   : updatecart2
    Created on : Dec 21, 2019, 1:45:45 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-
1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/petdb";%>
<%!String user = "root";%>
<%!String psw = "";%>

<head><link rel="stylesheet" type="text/css" href="style/pro.css">
        <title>Maw&Paw</title></head>    
<body>
    <div id="head">
        <img src="Logo12.png" alt="logo" style="width: 140px; height: 140px; float: left;">
        <h1>Welcome,<%=session.getAttribute("name")%></h1>

        <ul class="navi">
            <li><img src="icon/bell.png" style="width: 20px; height: 20px; padding-right: 5px">Notification</li>
            <li><img src="icon/help1.png" style="align: center; width: 20px; height: 20px; padding-right: 5px">Help</li>
            <li><img src="icon/cart.png" style="width: 20px; height: 20px; padding-right: 5px"><a href="viewcart.jsp">Shopping Cart</a></li>
            <li><img src="icon/person.png" style="width: 20px; height: 20px; padding-right: 5px"><a href="logout_user.jsp">Sign Out</a></li>
        </ul>
        <br></br>
			
    </div>

    <div id="left">
	<h2 class="trans">MENU</h2>
	<u1 class= "menu" >
            <li><a href="newhomeuser.jsp">HOME</a></li>
            <li class="cata">CATALOG</li>
                    <p><a href="viewcollar.jsp">Collar</a></p>
                    <p><a href="viewcloth.jsp">Cloth</a></p>
                    <p style="margin-bottom: 25px;"><a href="viewleash.jsp">Leash</a></p>
	</ul>
</div>
<table>

<%      
        String Userid=(String)session.getAttribute("userid");
        String Productid = request.getParameter("Productid");
        String Quantity=request.getParameter("quantity");
        
        if(Productid != null)
       {
        Connection con = null;
        PreparedStatement ps = null;
        
        try
       {
        Class.forName(driverName);
        con = DriverManager.getConnection(url,user,psw);
        String sql="Update cart set Quantity=? where UserID='"+Userid+"'AND ProductID='"+Productid+"'";
        ps = con.prepareStatement(sql);
         ps.setString(1,Quantity);
       
        int i = ps.executeUpdate();
        if(i > 0)
       {%>
       <tr><td style="text-align: center;"><%out.print("Quantity had been changed!");%></td></tr>
       <%}
        else
       {%>
       <tr><td style="text-align: center;"><%out.print("There is a problem in updating product.");%></td></tr>
       <%}
       }
        catch(SQLException sql)
       {
        request.setAttribute("error", sql);
        out.println(sql);
       }
       }
     %>
     
    </table>
    <p><a href="viewcart.jsp" style="width: 10%; margin: auto; margin-right: 10%; margin-top: 10%; padding: 20px; float:right;">Back</a></p>
    <div id="footer" style="margin-top: 5.5%">
	<h3>Right reserved: Maw & Paw Pet Accessories Corp</h3>
    </div>
</body>
