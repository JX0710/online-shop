<%-- 
    Document   : Login
    Created on : Nov 13, 2019, 6:03:54 PM
    Author     : Ooi Jing Xian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="stylesheet" type="text/css" href="style/design2.css">
        <script>
            function validateform(){
                var a=document.forms["login"]["username"].value;
                var b=document.forms["login"]["password"].value;
                
                if(a ==""){
                    window.alert("Please insert your username!");
                    return false;
                }
                else if (b ==""){
                    window.alert("Please insert your password!");
                    return false;
                }
            }
        </script>
        
        <title>Maw&Paw</title></head>
    <body><center><img src="banner_l.png" style="height: 230px; width: 600px;"></center>
               

        <form name="login" action="login_user.jsp" method="POST">
            <table border="0"  align="center" class="demo-table">
                <tbody>
                    <tr><td align="center">Username</td>
						<td align="center"><input type="text" name="username" value=""/></td>
					</tr>
                    <tr><td align="center">Password</td>
						<td align="center"><input type="password" name="password" value=""/></td>
					</tr>
                    <tr><td></td>
						<td align="center"><input type="submit" value="Log In"/></td>
						</tr>
                </tbody>
            </table>
            <p><a href="index.jsp" style="width: 10%; margin: auto; margin-right: 10%; margin-top: 5%; padding: 20px; float:right;">Back</a></p>
        </form>
    </body>
</html>
