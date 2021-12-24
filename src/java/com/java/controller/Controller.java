/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.controller;

import com.java.*;
import com.java.dao.CourseDao;
import com.java.dao.StudentDao;
import com.java.dao.UserDao;
import com.java.model.CourseBeans;
import com.java.model.StudentBeans;
import com.java.model.UserBeans;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author juned
 */
@WebServlet({"/admin/course/add","/admin/course/save","/admin/course/view",
                "/admin/course/edit/","/admin/course/delete/","/index","/admin/course/update",
                "/admin/display","/admin-login","/logincheck","/404","/logout","/dummylink/test",
                "/admin/student/add","/admin/student/save","/admin/student/view",
                "/admin/student/edit/","/admin/student/delete/","/admin/student/update"})
public class Controller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet controller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet controller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println(request.getRequestURI());
        if(request.getRequestURI().equals(request.getContextPath()+"/admin/course/add")){
        RequestDispatcher rd=request.getRequestDispatcher("/add.jsp");
        rd.forward(request, response);
        }
        else if(request.getRequestURI().equals(request.getContextPath()+"/admin/course/view")){
            ArrayList<CourseBeans> al =CourseDao.getCourses();
            request.setAttribute("coursedata",al);
        RequestDispatcher rd=request.getRequestDispatcher("/view.jsp");
        rd.forward(request, response);
        }
       else if(request.getRequestURI().equals(request.getContextPath()+"/admin/course/edit/")){
            int cid = Integer.valueOf(request.getParameter("value"));
            //CourseDao cd = new CourseDao();
            //cd.getCourseByID
           ArrayList<CourseBeans> al=CourseDao.getCourseById(cid);
           request.setAttribute("coursedata", al);
            RequestDispatcher rd=request.getRequestDispatcher("/edit.jsp");
        rd.forward(request, response);
       }
       else if(request.getRequestURI().equals(request.getContextPath()+"/index")){
        RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
        rd.forward(request, response);
       }
        else if(request.getRequestURI().equals(request.getContextPath()+"/admin/course/delete/")){
            int cid = Integer.valueOf(request.getParameter("value"));
           CourseDao.deleteCourse(cid);
            RequestDispatcher rd=request.getRequestDispatcher("/success.jsp");
        rd.forward(request, response);
       }
        else if(request.getRequestURI().equals(request.getContextPath()+"/admin/display")){
        RequestDispatcher rd=request.getRequestDispatcher("/display.jsp");
        rd.forward(request, response);
       }
        else if(request.getRequestURI().equals(request.getContextPath()+"/admin-login")){
        RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
        rd.forward(request, response);
       }
        else if(request.getRequestURI().equals(request.getContextPath()+"/404")){
            RequestDispatcher rd = request.getRequestDispatcher("/404.jsp");
            rd.forward(request, response);
        }
        else if(request.getRequestURI().equals(request.getContextPath()+"/logout")){
            HttpSession session = request.getSession(false);
            if(session!=null){
                session.invalidate();
            }
            RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
            
        }
        else if(request.getRequestURI().equals(request.getContextPath()+"/dummylink/test")){
         /*  request.getSession().setAttribute("role","guest");
               request.getSession().setAttribute("user","hello");*/
            RequestDispatcher rd = request.getRequestDispatcher("/test.jsp");
            rd.forward(request, response);
        }
        else if(request.getRequestURI().equals(request.getContextPath()+"/admin/student/add")){
        ArrayList<CourseBeans> al =CourseDao.getCourses();
            request.setAttribute("coursedata",al);
        RequestDispatcher rd=request.getRequestDispatcher("/addstudent.jsp");
        rd.forward(request, response);
        }
            else if(request.getRequestURI().equals(request.getContextPath()+"/admin/student/view")){
                ArrayList<CourseBeans> al = CourseDao.getCourses();
                ArrayList<StudentBeans> al2 = StudentDao.getStudent();
                HashMap<Integer,String> mp = new HashMap<Integer,String>();
                for(CourseBeans var:al){
                    CourseBeans cb = var;
                    mp.put(cb.getCid(), cb.getCourse());
                }
                 request.setAttribute("coursemapdata", mp);
                request.setAttribute("studentdata", al2);

                RequestDispatcher rd = request.getRequestDispatcher("/viewstudent.jsp");
                rd.forward(request, response);

            }
        else if(request.getRequestURI().equals(request.getContextPath()+"/admin/student/edit/")){
            int sid = Integer.valueOf(request.getParameter("value"));
            ArrayList<StudentBeans> al = StudentDao.getStudentById(sid);
            ArrayList<CourseBeans> alc = CourseDao.getCourses();
           request.setAttribute("studentdata", al);
                        request.setAttribute("coursedata", alc);
            RequestDispatcher rd=request.getRequestDispatcher("/editstudent.jsp");
        rd.forward(request, response);
       }
        else if(request.getRequestURI().equals(request.getContextPath()+"/admin/student/delete/")){
            int sid = Integer.valueOf(request.getParameter("value"));
            StudentDao.delete(sid);
            response.sendRedirect(request.getContextPath()+"/admin/student/view");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       if(request.getRequestURI().equals(request.getContextPath()+"/admin/course/save")){
           String course=request.getParameter("course");
           String price=request.getParameter("price");
           String duration=request.getParameter("duration");
           CourseBeans cbeans = new CourseBeans(course,price,duration);
           CourseDao.saveCourse(cbeans);
           response.sendRedirect(request.getContextPath()+"/success.jsp");
           
       }
       else if(request.getRequestURI().equals(request.getContextPath()+"/admin/course/update")){
           String courseId = request.getParameter("cid");
           int cid = Integer.valueOf(courseId);
           String course=request.getParameter("course");
           String price=request.getParameter("price");
           String duration=request.getParameter("duration");
           CourseBeans cbeans = new CourseBeans(cid,course,price,duration);
          
            CourseDao.updateCourse(cbeans);
           response.sendRedirect(request.getContextPath()+"/admin/course/view");
       }
       else if(request.getRequestURI().equals(request.getContextPath()+"/logincheck")){
           String Username = request.getParameter("user");
            String Password = request.getParameter("password");
            //ArrayList<UserBeans> alist = new ArrayList<UserBeans>();
           String type= UserDao.getAccount(Username, Password);
           System.out.println(type);
            if (type!=null){
               request.getSession().setAttribute("role",type);
               request.getSession().setAttribute("user",Username);
                response.sendRedirect(request.getContextPath()+"/admin/display");
              }
            else{
                request.setAttribute("failed","<div>Wrong username or passwors</div>");
            RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                rd.forward(request, response);
          // response.sendRedirect(contextPath+"/login.jsp");
        }
       }
       else  if(request.getRequestURI().equals(request.getContextPath()+"/admin/student/save")){
           String name=request.getParameter("name");
           String gender=request.getParameter("gender");
           String address=request.getParameter("address");
           String ccid=request.getParameter("cid");
           int cid = Integer.valueOf(ccid);
           StudentBeans sbeans = new StudentBeans(cid,name,gender,address);
           StudentDao.addStudent(sbeans);
           response.sendRedirect(request.getContextPath()+"/success.jsp");
           
       }
       
        else if(request.getRequestURI().equals(request.getContextPath()+"/admin/student/update")){
           String ssid = request.getParameter("sid");
           int sid = Integer.valueOf(ssid);
            String name=request.getParameter("name");
           String gender=request.getParameter("gender");
           String address=request.getParameter("address");
           String ccid=request.getParameter("cid");
           int cid = Integer.valueOf(ccid);
           StudentBeans sbeans = new StudentBeans(sid,cid,name,gender,address);
           StudentDao.update(sbeans);
           response.sendRedirect(request.getContextPath()+"/admin/student/view");
           
       }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
