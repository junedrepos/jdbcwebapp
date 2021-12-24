<%-- 
    Document   : editstudent
    Created on : Aug 3, 2017, 12:11:38 PM
    Author     : juned
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/admin/student/update" method="POST">
            <p>Sid:<input type="hidden" name="sid" value="${studentdata.get(0).sid}"><br>
                Student Name:<input type="text" name="name" value="${studentdata.get(0).name}" size="15"/><br>
                Gender:<select name="gender">
                    <option value="male" <e:if test="${studentdata.get(0).gender.equals('male')}">selected="selected"</e:if>>male</option>   
                    <option value="female"  <e:if test="${studentdata.get(0).gender.equals('female')}">selected="selected"</e:if>>
                            female
                        </option>   

                    </select><br/>
                    Address:<input type="text" name="address" value="${studentdata.get(0).address}"><br>
                Course: <select name="cid">  
                    <e:forEach items="${coursedata}" var="course">
                        <option value="${course.cid}" <e:if test="${course.cid.equals(studentdata.get(0).cid)}">selected="selected"</e:if> >
                            ${course.course}
                        </option>      
                    </e:forEach>
                </select>
                <br/><input type="submit" value="Update">

            </p>   

        </form>
    </body>
</html>
