<%-- 
    Document   : register
    Created on : Nov 13, 2019, 6:04:04 PM
    Author     : Ooi Jing Xian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style/index.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Maw&Paw</title>
        <script>
            function validateform(){
                var a=document.forms["register"]["username"].value;
                var b=document.forms["register"]["password"].value;
                var c=document.forms["register"]["email"].value;
                var d=document.forms["register"]["phno"].value;
                
               
                
                if(a ==""){
                    window.alert("Please insert username!");
                    return false;
                }
                else if (b ==""){
                    window.alert("Please insert password!");
                    return false;
                }
                else if (c ==""){
                    window.alert("Please insert email!");
                    return false;
                }
                else if (d ==""){
                    window.alert("Please insert phone number!");
                    return false;
                }
                
                
         }
        </script>
    </head>
    <body><center><img src="banner_r.png"></center>
        
        <form name="register" action="register2.jsp" method="POST" onsubmit="return validateform()">
            <table border="0" width="400"  align="center" class="demo-table">
               
                   <tr><td align="center">Username</td>
                        <td><input type="text" name="username" value="" /></td>
                   </tr>
                   <tr><td align="center">Password</td>
			<td><input type="password" name="password" value="" /></td>
                   </tr>
                   <tr><td align="center">Email</td>
			<td><input type="email" name="email" value="" /></td>
                    </tr>
                    <tr><td align="center">Phone Number</td>
			<td><input type="text" name="phno" value="" /></td>
                    </tr>    
                    <tr><td align="center">Address</td>
                        <td><input type="text" name="address" value=""/></td>
                    </tr>
                                    
                        
               
            </table>
            <br><center><input type="submit" value="Submit" />`<input type="reset" value="Reset" /></center>
        </form>
       <p><a href="index.jsp" style="width: 10%; margin: auto; margin-right: 10%; margin-top: 5%; padding: 20px; float:right;">Back</a></p>
    </body>
</html>
