<%-- 
    Document   : AddStudent
    Created on : Aug 3, 2017, 11:48:50 AM
    Author     : juned
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
    </head>
    <body>
    <form action="${pageContext.request.contextPath}/admin/student/save" method="POST">
        Name:<input type="text" name="name"><br/>
        Gender:<select name="gender">
            <option value="male">Male</option>
            <option value="female">Female</option>
                    </select><br/>
        Address:<input type="text" name="address"/><br/>
        Course:<select name="cid">
            <c:forEach items="${coursedata}" var="course">
                <option value="${course.cid}">${course.course}</option>
                
                 
            </c:forEach>
        </select>
        <br/>
        <input type="submit" value="Add Student"> 
        
    </form>
    </body>
</html>
