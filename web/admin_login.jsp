<%-- 
    Document   : admin_login
    Created on : Dec 12, 2019, 11:35:19 PM
    Author     : Ooi Jing Xian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="stylesheet" type="text/css" href="style/design2.css">
        <script>
            function validateform(){
                var a=document.forms["admin"]["email"].value;
                var b=document.forms["admin"]["password"].value;
                
                if(a ==""){
                    window.alert("Please insert your email!");
                    return false;
                }
                else if (b ==""){
                    window.alert("Please insert your password!");
                    return false;
                }
            }
        </script>
        
        <title>Maw&Paw</title></head>
    <body><center><img src="Logo12.png" ></center>
               

        <form name="admin" action="admin_login2.jsp" method="POST">
            <table border="0">
                <tr><td>Email:</td>
                    <td><input type="email" name="email" value="" /></td>
                <tr><td>Password:</td>
                    <td><input type="password" name="password" value="" /></td>
                </tr>
                    <tr><td colspan="2" align="center"><input type="submit" value="Log In" />
                        </td></tr>
            </table>

        </form>
    <p><a href="index.jsp" style="width: 10%; margin: auto; margin: 10%; margin-bottom: 20%; padding: 20px; float:right;">Back</a></p>
    </body>
</html>
