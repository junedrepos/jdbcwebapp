<%-- 
    Document   : display
    Created on : Jul 26, 2017, 8:11:19 PM
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
          <ul>
              <li>
         <a href="${pageContext.request.contextPath}/logout">Logout</a>
            </li>
            <li>
         <a href="${pageContext.request.contextPath}/admin/course/add">Add courses</a>
            </li><li>
         <a href="${pageContext.request.contextPath}/admin/course/view">View courses</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/admin/student/add">Add Student</a>
            </li>
          <li>
                <a href="${pageContext.request.contextPath}/admin/student/view">View Student</a>
            </li>
        </ul>
    </body>
</html>
