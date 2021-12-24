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

public class StudentBeans {
    private int sid;
    private int cid;
    private String name;
    private String gender;
    private String address;
    private CourseBeans course;

    public CourseBeans getCourse() {
        return course;
    }

    public void setCourse(CourseBeans course) {
        this.course = course;
    }

    public StudentBeans(int sid, int cid, String name, String gender, String address, CourseBeans course) {
        this.sid = sid;
        this.cid = cid;
        this.name = name;
        this.gender = gender;
        this.address = address;
        this.course = course;
    }
    
    
    public StudentBeans() {
    }

    public StudentBeans(int cid, String name, String gender, String address) {
        this.cid = cid;
        this.name = name;
        this.gender = gender;
        this.address = address;
    }

    public StudentBeans(int sid, int cid, String name, String gender, String address) {
        this.sid = sid;
        this.cid = cid;
        this.name = name;
        this.gender = gender;
        this.address = address;
    }
    
    
    
    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    
}
