<%-- 
    Document   : view
    Created on : Jun 14, 2017, 9:46:43 PM
    Author     : juned
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import ="java.util.ArrayList" %>
<%@page import ="com.java.model.CourseBeans" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                out.println(request.getRequestURI());
                out.println(request.getRequestURL());
                System.out.println(request.getRequestURI());
                %>
        <table border = "5">
            <thead> 
            <th>cid</th>
            <th>course</th>
            <th>price</th>
            <th>duration</th>
            
            </thead>
                <tbody>
                    <!-- for(Datatype course:coursedata)) -->
                     <%
              
           ArrayList<CourseBeans> al = (ArrayList)request.getAttribute("coursedata");
           for(com.java.model.CourseBeans var:al){
               out.println("<tr><td>"+var.getCid()+"</td>");
               out.println("<td>"+var.getCourse()+"</td>");
               out.println("<td>"+var.getPrice()+"</td>");
               out.println("<td>"+var.getDuration()+"</td>");
               out.println("<td><a href=\""+request.getContextPath()+"/admin/course/edit/?value="+var.getCid()+"\">Edit</a></td>");
               out.println("<td>"+request.getContextPath()+"/admin/course/delete/?value="+var.getCid()+"</td>");
               out.println("</tr>");
               
               
           //   for(com.itn.model.CourseBean var: request.getAttribute("testdata")){
                
            }  
                
               

            %>
                    <e:forEach items="${coursedata}" var="course">   
                    <tr>
                        
                        <td>${course.cid}</td>
                        <td>${course.course}</td>
                        <td>${course.price}</td>
                        <td>${course.duration}</td>
                        <td><a href="${pageContext.request.contextPath}/admin/course/edit/?value=${course.cid}">
                                Edit</a></td>
                        <td><a href="${pageContext.request.contextPath}/admin/course/delete/?value=${course.cid}">
                                Delete</a></td>
                    </tr>
                    </e:forEach>
                </tbody>
            
            
        </table>
        
    </body>
</html>
