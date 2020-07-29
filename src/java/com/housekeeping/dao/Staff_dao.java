/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.dao;

import com.housekeeping.entities.Staff_update;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author hp world
 */
public class Staff_dao {
    private Connection con;

    public Staff_dao(Connection con) {
        this.con = con;
    }
    
    
    //view records
      public ArrayList<Staff_update> showStaffDetails(){
       ArrayList<Staff_update> list=new ArrayList<>();
        
       String q="select * from staff_details";
        try {
              PreparedStatement ps=con.prepareStatement(q);
       
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
          int staff_id=rs.getInt("staff_id");
            String staff_name=rs.getString("staff_name");
            int staff_age=rs.getInt("staff_age");
            String staff_doj=rs.getString("staff_doj");
            String staff_duty=rs.getString("staff_duty");
             String staff_shift=rs.getString("staff_shift");
             String staff_username=rs.getString("staff_username");
             String staff_password=rs.getString("staff_password");
             String staff_cont=rs.getString("staff_cont");
             String staff_sal=rs.getString("staff_sal");
             Staff_update s=new Staff_update(staff_id, staff_name, staff_age, staff_doj, staff_duty, staff_shift,staff_username,staff_password,staff_cont,staff_sal);
             list.add(s);
     }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
      
        return list;
}
      
      //insert records
        public boolean addNewStaff(Staff_update s){
        boolean f=false;
        try {
            String q="insert into staff_details(staff_name,staff_age,staff_doj,staff_sal,staff_shift,staff_username,staff_password,staff_cont) values(?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(q);
            pstmt.setString(1, s.getStff_name());
            pstmt.setInt(2, s.getStff_age());
            pstmt.setString(3, s.getStff_doj());
            pstmt.setString(4, s.getStaff_sal());
            pstmt.setString(5, s.getStff_shift());
            pstmt.setString(6, s.getStaff_username());
            pstmt.setString(7, s.getStaff_password());
            pstmt.setString(8, s.getStaff_cont());
           
            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
        
        
        //update staff
            public boolean updateStaff(Staff_update s){
        boolean f=false;
        try {
            String query="update staff_details set staff_name=?, staff_sal=?, staff_shift=? where staff_id=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setString(1, s.getStff_name());
            p.setString(2, s.getStaff_sal());
            p.setString(3, s.getStff_shift());
            p.setInt(4,s.getStaff_id());
            p.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
            
            //getStaffById
               public Staff_update getStaffById(int staffId){
         Staff_update staff_update=null;
              String q="select * from staff_details where staff_id=?";
         try {
        
         PreparedStatement p=this.con.prepareStatement(q);
         p.setInt(1,staffId);
         ResultSet set=p.executeQuery();
         if(set.next()){
                int sId=set.getInt("staff_id");
                String sName=set.getString("staff_name");
                String sDuty=set.getString("staff_duty");
                String sShift=set.getString("staff_shift");
                String sUsername=set.getString("staff_username");
                String sPassword=set.getString("staff_password");
               
                
                staff_update=new Staff_update(sId, sName, sDuty, sShift,sUsername,sPassword);
         }
         
         
         } catch (Exception e) {
             e.printStackTrace();
         }return staff_update;
     }
    
      
               
               
                  //get user by email and password
    
    public Staff_update getUserByEmailAndPassword(String email,String password){
        Staff_update user=null;
        
        try {
            String query="select * from staff_details where staff_username=? and staff_password=?";
            PreparedStatement pstm=con.prepareStatement(query);
            pstm.setString(1, email);
             pstm.setString(2, password);
            ResultSet set= pstm.executeQuery();
            if(set.next()){
                user=new Staff_update();
               
                //set to user object
                
                user.setStaff_id(set.getInt("staff_id"));
                 user.setStff_name(set.getString("staff_name"));
                  user.setStaff_username(set.getString("staff_username"));
                   user.setStaff_password(set.getString("staff_password"));
                    user.setStff_doj(set.getString("staff_doj"));
                     user.setStff_duty(set.getString("staff_duty"));
                   user.setStff_shift(set.getString("staff_shift"));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }
               
               
           //delete staff Attendant
            public boolean deleteStaffAttendant(Staff_update s){
        boolean f=false;
        try {
            String query="DELETE from staff_details where staff_id=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setInt(1,s.getStaff_id());
            p.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
      
}

