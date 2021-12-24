<%-- 
    Document   : index
    Created on : Jul 26, 2017, 5:17:10 PM
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
        <a href="${pageContext.request.contextPath}/admin-login">Login</a>
        <a href="${pageContext.request.contextPath}/admin/display">Go to main Page</a>
        <a href="${pageContext.request.contextPath}/dummylink/test">Test with Controller </a>
        <a href="test.jsp">Test normal</a>
    </body>
</html>
