<%-- 
    Document   : addtocart
    Created on : Dec 20, 2019, 9:57:45 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<head><link rel="stylesheet" type="text/css" href="style/pro.css">
        <title>Maw & Paw</title></head>
<body>
    <div id="head">
        <img src="Logo12.png" alt="logo" style="width: 150px; height: 140px; float: left;">
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

String Name=(String)session.getAttribute("name");
String Productid=request.getParameter("ProductID");
int temp_id=0;
int quantity=1;
            
String sql="select UserID from users where Username=?";

            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        
try{
   Class.forName("com.mysql.jdbc.Driver");
        try{
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/petdb","root","");
                    ps=con.prepareStatement(sql);
                    ps.setString(1,Name);
                    rs=ps.executeQuery();
                    
                    if(rs.next()){
                         temp_id=rs.getInt("UserID");
                          
                    }
                    
                    ps.close();
                    
                    sql="insert into cart(UserID,ProductID,Quantity)values(?,?,?)";
                    ps=con.prepareStatement(sql);
                    ps.setInt(1, temp_id);
                    ps.setString(2,Productid);
                    ps.setInt(3,quantity);
                  
                    
                    
                    int j=ps.executeUpdate();%>
                    <tr><td style="text-align: center;"><%out.println("Your product is added to cart!");%></td></tr>
                    <%rs.close();
                    ps.close();
                    con.close();
                    
                    
                    
                    
        }catch(SQLException e_sql){
            e_sql.printStackTrace();
        
        }

}catch(ClassNotFoundException e){
e.printStackTrace();
}
%>  
    </table>
    <p><a href="newhomeuser.jsp" style="width: 10%; margin: auto; margin-right: 10%; margin-top: 5%; padding: 20px; float:right;">Back</a></p>
    <div id="footer" style="margin-top: 5.5%">
	<h3>Right reserved: Maw & Paw Pet Accessories Corp</h3>
    </div
</body>
