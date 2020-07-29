/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.helper;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author hp world
 */
public class ConnectionProvider {
     private static Connection con;
    public static Connection getConnection(){
   
    try{
        if(con==null){
              Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/housekeeping", "root", "root");
        }
       
    }catch(Exception e){
        
    }
    return con;
}
}
