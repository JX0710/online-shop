<html>
    
<head><link rel="stylesheet" type="text/css" href="style/design2.css">
        <title>Maw&Paw</title></head>
    
<body><center><img src="Logo12.png"></center>
<ul>
              <li><a href="admin.jsp">Add New Admin</a></li>
                <li><a href="addnewproduct.jsp">Add New Product</a></li>
                <li><a href="updateproduct.jsp">Modify Product</a></li>
                <li><a href="customer.jsp">Customer List</a></li>
                <li><a href="vieworder.jsp">Order List</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
<form name="addnewproduct.jsp" method="post" action="addproduct.jsp" >
<table>
<h1>Insert product </h1>
<tr><td>ProductID</td><td><input type="text" name="ProductID"></tr></td>
<tr><td>Material</td><td><input type="text" name="Material"></tr></td>
<tr><td>Colour</td><td><input type="text" name="Colour"></tr></td>
<tr><td>Price</td><td><input type="text" name="Price"></tr></td>
<tr><td>Type</td><td><input type="text" name="Type"></tr></td>
<tr><td>Name</td><td><input type="text" name="Name"></tr></td>
<tr><td>Quantity</td><td><input type="text" name="quantity"></td></tr>
<tr><td colspan="2" align="center"><input type="submit" name="submit" value="Submit"></td></tr>
</table>
</form>
</body>
</html>