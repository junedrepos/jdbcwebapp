<%-- 
    Document   : edit
    Created on : Jul 26, 2017, 7:29:54 PM
    Author     : juned
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body>
        <h1>Edit course</h1>
            <form action="${pageContext.request.contextPath}/admin/course/update" method="POST">
                <p>Cid:<input type="hidden" name="cid" value="${coursedata.get(0).cid}"><br>
                Course Name:<input type="text" name="course" placeholder="Enter your title" value="${coursedata.get(0).course}" size="15"/><br>
                Price:<input type="text" name="price" placeholder ="Enter your price "size="15" value="${coursedata.get(0).price}"/> <br>
                Duration:<input type="text" name="duration" size="15" placeholder ="Enter course duration" value="${coursedata.get(0).duration}"/><br>
                <input type="submit" value="Update Course" size="15" />

            </p>
            </form>
    </body>
</html>
