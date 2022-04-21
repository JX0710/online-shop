<%-- 
    Document   : admin
    Created on : Dec 12, 2019, 10:55:09 PM
    Author     : Ooi Jing Xian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style/design2.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Maw&Paw</title>
        <script>
            function validateform(){
                var a=document.forms["admin"]["email"].value;
                var b=document.forms["admin"]["password"].value;
               
                
                if(a ==""){
                    window.alert("Please insert email!");
                    return false;
                }
                else if (b ==""){
                    window.alert("Please insert password!");
                    return false;
                }
                
         }
        </script>
    </head>
    <body><center><img src="Logo12.png" ></center>
               <ul>
              <li><a href="admin.jsp">Add New Admin</a></li>
                <li><a href="addnewproduct.jsp">Add New Product</a></li>
                <li><a href="updateproduct.jsp">Modify Product</a></li>
                <li><a href="customer.jsp">Customer List</a></li>
                <li><a href="vieworder.jsp">Order List</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
        <h1>New Admins Details</h1>
        <form name="admin" action="admin2.jsp" onsubmit="return validateform()">
            <table border="0">
                    <tr><td>Email:</td>
                    <td><input type="email" name="email" value="" /></td>
                <tr><td>Password:</td>
                    <td><input type="password" name="password" value="" /></td>
                </tr>
                    <tr><td colspan="2" align="center"><input type="submit" value="Submit" />
                        </td></tr>
            </table>

        </form>
        
    </body>
</html>

