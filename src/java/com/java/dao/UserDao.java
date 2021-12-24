/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.dao;

import com.java.model.UserBeans;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


/**
 *
 * @author juned
 */
public class UserDao {
    public static String getAccount(String user, String password){
       // ArrayList<UserBeans> alist = new ArrayList<UserBeans>();
        Statement st = DBConnect.dbConnect();
          String type = null;
          String sql ="select * from user where user = '"+user+"' and password ='"+password+"'";
          ResultSet rs = null;
          try{
              rs=st.executeQuery(sql);
              rs.next();
              type = rs.getString("type");
          }catch(Exception e){
              System.out.println(e);
          }
        return type;
       
    }
  
}
