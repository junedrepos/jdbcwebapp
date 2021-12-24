/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.dao;

import com.java.model.CourseBeans;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


/**
 *
 * @author juned
 */
public class CourseDao {
    public static void saveCourse(CourseBeans cbeans){
      Statement st = DBConnect.dbConnect();
      String sql = "insert into course(course,price,duration) values('"+cbeans.getCourse()+
              "','"+cbeans.getPrice()+"','"+cbeans.getDuration()+"')";
       try{
           System.out.println("here1");
           st.execute(sql);
       }catch(Exception e){
           System.out.println(e);
    }       }

    public static ArrayList<CourseBeans> getCourses(){
        ArrayList<CourseBeans> alist = new ArrayList<CourseBeans>();
        Statement st = DBConnect.dbConnect();
        String sql ="select * from course";
         ResultSet rs = null;
         try{
             System.out.println("here2");
             rs = st.executeQuery(sql);
             while(rs.next()){
                 CourseBeans cb = new CourseBeans(rs.getInt("cid"),rs.getString("course")
                 ,rs.getString("price"),rs.getString("duration"));
                 alist.add(cb);
             }
         }catch(Exception e){
             System.out.println(e);
         }
         return alist;
    }
    public static ArrayList<CourseBeans> getCourseById(int cid){
        ArrayList<CourseBeans> alist = new ArrayList<CourseBeans>();
         Statement st = DBConnect.dbConnect();
        String sql ="select * from course where cid="+cid;
         ResultSet rs = null;
         try{
             rs = st.executeQuery(sql);
            rs.next();
            System.out.println("here3");
            CourseBeans cb = new CourseBeans(rs.getInt("cid"),rs.getString("course")
                 ,rs.getString("price"),rs.getString("duration"));
                 alist.add(cb);
            
         }catch(Exception e){
             System.out.println(e);
         }
        return alist;
    }
    public static void updateCourse(CourseBeans cbeans){
        Statement st = DBConnect.dbConnect();
        String sql ="update course set course ='"+cbeans.getCourse()+"',price ='"
                +cbeans.getPrice()+"', duration ='"+cbeans.getDuration()+"' where cid="
                +cbeans.getCid();
        try{
            //System.out.println("here4");
            st.executeUpdate(sql);
        }catch(Exception e){
            System.out.println(e);
        }
    }
    public static void deleteCourse(int cid){
       Statement st = DBConnect.dbConnect();
        String sql ="delete from course where cid ="+cid;
        try{
            System.out.println("here5");
            st.executeUpdate(sql);
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
