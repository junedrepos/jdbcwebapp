/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author juned
 */
public class DBConnect {

    public static Statement dbConnect() {
        Connection con = null;
        Statement st = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                //                                    link to database
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/itn1230new",
                   //username   password
                        "root", "root");
                //           ""
                st = con.createStatement();
            } catch (SQLException e) {
                System.out.println(e);
            }
        } catch (ClassNotFoundException e) {
            System.out.println(e);
        }
        return st;
    }
}
