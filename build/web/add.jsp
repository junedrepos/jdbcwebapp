<%-- 
    Document   : insert
    Created on : Jun 18, 2017, 11:52:09 AM
    Author     : RAI'Z
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Page</title>
    </head>
    <body>
        <h1> Fill the details </h1>
        <form action="${pageContext.request.contextPath}/admin/course/save" method="POST">
            <label>Course </label>
            <input type="text" name="course" placeholder ="course"><br>
            <br>
            <label> Price</label>
            <input type="text" name="price" placeholder ="price"><br>
            <br>
            <label>Duration</label>
            <input type="text" name="duration" placeholder ="duration"><br>
            <br>
            <input type="submit" value="Submit" >  
        </form>
            <a href="${pageContext.request.contextPath}/admin/course/view">view course</a>
    </body>
</html>
