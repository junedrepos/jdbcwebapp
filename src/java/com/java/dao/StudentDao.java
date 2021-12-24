/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.dao;

import com.java.model.StudentBeans;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author juned
 */
public class StudentDao {
    public static void addStudent(StudentBeans sbean){
        Statement st = DBConnect.dbConnect();
        String sql = "insert into student(name,gender,address,cid) values('"
                +sbean.getName()+"','"+sbean.getGender()+"','"+sbean.getAddress()+
                "',"+sbean.getCid()+")";
        try{
            st.execute(sql);
        }catch(Exception e){
            System.out.println(e);
        }
    }
    public static ArrayList<StudentBeans> getStudent(){
        Statement st = DBConnect.dbConnect();
        String sql = "select * from student";
        ResultSet rs = null;
        ArrayList<StudentBeans> al = new ArrayList<StudentBeans>();
        try{
            rs= st.executeQuery(sql);
            while(rs.next()){
                StudentBeans sb = new StudentBeans(rs.getInt("sid"),rs.getInt("cid"),rs.getString("name")
                ,rs.getString("gender"),rs.getString("address"));
                al.add(sb);
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return al;
    }
    public static ArrayList<StudentBeans> getStudentById(int sid){
        Statement st = DBConnect.dbConnect();
        String sql = "select * from student where sid="+sid;
        ResultSet rs = null;
        ArrayList<StudentBeans> al = new ArrayList<StudentBeans>();
        try{
            rs= st.executeQuery(sql);
            rs.next();
                StudentBeans sb = new StudentBeans(rs.getInt("sid"),rs.getInt("cid"),rs.getString("name")
                ,rs.getString("gender"),rs.getString("address"));
                al.add(sb);
            
        }catch(Exception e){
            System.out.println(e);
        }
        return al;
    }
    public static void update(StudentBeans s){
        Statement st = DBConnect.dbConnect();
        String sql = "update student set name='"+s.getName()+"',gender='"+s.getGender()+
                "',address='"+s.getAddress()+"',cid="+s.getCid()+" where sid ="+s.getSid();
        try{
            st.executeUpdate(sql);
        }catch(Exception e){
            System.out.println(e);
        }
        
    }
    public static void delete(int sid){
        Statement st = DBConnect.dbConnect();
        String sql = "delete from student where sid="+sid;
        try{
            st.executeUpdate(sql);
        }catch(Exception e){
        System.out.println(e);
    }
    }
}
