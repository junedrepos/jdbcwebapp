<%-- 
    Document   : viewstudent
    Created on : Aug 4, 2017, 11:44:35 AM
    Author     : juned
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Page</title>
    </head>
    <body>
        <table>
           <thead> 
            <th>Sid</th>
            <th>Student Name</th>
            <th>Gender</th>
            <th>Course</th>
            <th>Address</th>
            </thead>
                <tbody>
                  
                    <e:forEach items="${studentdata}" var="stud">   
                    <tr>
                        
                        <td>${stud.sid}</td>
                        <td>${stud.name}</td>
                        <td>${stud.gender}</td>
                        <td>${coursemapdata[stud.cid]}</td>
                        <td>${stud.address}</td> 
                      
                        <td><a href="${pageContext.request.contextPath}/admin/student/edit/?value=${stud.sid}">
                                Edit</a></td>
                        <td><a href="${pageContext.request.contextPath}/admin/student/delete/?value=${stud.sid}">
                                Delete</a></td>
                    </tr>
                    </e:forEach>
                </tbody>
            
            
            
        </table>
    </body>
</html>
