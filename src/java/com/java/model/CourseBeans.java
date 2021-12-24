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

public class CourseBeans {

  private int cid; 
  
  private String course;
  private String price;
  private String duration;
  private StudentBeans student;

    public CourseBeans(int cid, String course, String price, String duration, StudentBeans student) {
        this.cid = cid;
        this.course = course;
        this.price = price;
        this.duration = duration;
        this.student = student;
    }

    public StudentBeans getStudent() {
        return student;
    }

    public void setStudent(StudentBeans student) {
        this.student = student;
    }
  
    public CourseBeans() {
    }

    public CourseBeans(String course, String price, String duration) {
        this.course = course;
        this.price = price;
        this.duration = duration;
    }

    public CourseBeans(int cid, String course, String price, String duration) {
        this.cid = cid;
        this.course = course;
        this.price = price;
        this.duration = duration;
    }
    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }
  
  
  
  
}
