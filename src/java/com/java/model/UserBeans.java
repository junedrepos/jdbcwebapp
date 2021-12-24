/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.model;

/**
 *
 * @author juned
 */

public class UserBeans {
    
    private int uid;
   
    private String user;
    private String password;
    private String type;

    public UserBeans() {
    }

    public UserBeans(int uid, String user, String password, String type) {
        this.uid = uid;
        this.user = user;
        this.password = password;
        this.type = type;
    }

    public UserBeans(String user, String password, String type) {
        this.user = user;
        this.password = password;
        this.type = type;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
}
