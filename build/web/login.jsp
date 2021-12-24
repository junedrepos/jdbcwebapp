<%-- 
    Document   : login
    Created on : Jun 27, 2017, 7:46:12 PM
    Author     : juned
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <h1> <p>Login</p></h1>
        ${failed}
        <form action="${pageContext.request.contextPath}/logincheck" method="POST" > 
            <p>Username: <input type="text" name="user"><br></p>
            <p> Password:<input type="password" name="password"><br></p>
            <input type="submit" value="login" class="btn btn-success">
        </form></center>
    </body>
</html>
