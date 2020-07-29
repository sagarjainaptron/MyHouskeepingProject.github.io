/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.dao;

import com.housekeeping.entities.Desk_attendant;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author hp world
 */
public class DeskDao {
     private Connection con;

    public DeskDao(Connection con) {
        this.con = con;
    }
     
             //view records
      public ArrayList<Desk_attendant> getDeskAttendantDetails(){
       ArrayList<Desk_attendant> list=new ArrayList<>();
        
       String q="select * from desk_attendant";
        try {
              PreparedStatement ps=con.prepareStatement(q);
       
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            int d_id=rs.getInt("id");
            String d_name=rs.getString("name");
            String d_contNo=rs.getString("contact_no");
            String d_duty=rs.getString("duty");
            String d_shift=rs.getString("shift");
            String d_sal=rs.getString("sal");
            String d_username=rs.getString("username");
            String d_password=rs.getString("password");
          
            
            Desk_attendant d=new Desk_attendant(d_id, d_name, d_contNo, d_duty, d_shift, d_sal, d_username, d_password);
             list.add(d);
     }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
      
        return list;
}
      
      
          //insert records
        public boolean addDeskAttendantDetails(Desk_attendant s){
        boolean f=false;
        try {
            String q="insert into desk_attendant(name,contact_no,duty,shift,sal,username,password) values(?,?,?,?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(q);
            pstmt.setString(1, s.getD_name());
            pstmt.setString(2, s.getD_contNo());
            pstmt.setString(3, s.getD_duty());
            pstmt.setString(4, s.getD_shift());
            pstmt.setString(5, s.getD_sal());
            pstmt.setString(6, s.getD_usernme());
            pstmt.setString(7, s.getD_password());
           
            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
        
        
                   //getServiceById
               public Desk_attendant getDeskattendantById(int deskId){
         Desk_attendant desk_attendant=null;
              String q="select * from desk_attendant where id=? ";
                   try {
                        PreparedStatement p=this.con.prepareStatement(q);
                          p.setInt(1,deskId);
                          ResultSet set=p.executeQuery();
                          if (set.next()) {
                            int sId=set.getInt("id");
                String dName=set.getString("name");
                String dContNo=set.getString("contact_no");
                String dDuty=set.getString("duty");
                String dShift=set.getString("shift");
                String dUsername=set.getString("username");
                String dPassword=set.getString("password");
                String dSal=set.getString("sal");
               
                
                desk_attendant=new Desk_attendant(sId, dName, dContNo, dDuty, dShift, dSal, dUsername, dPassword);
                       }
                       
                   } catch (Exception e) {
                       e.printStackTrace();
                   }
              
              
              
         return desk_attendant;
     }
               
               
                    
                  //update service Attendant
            public boolean updateDeskAttendant(Desk_attendant s){
        boolean f=false;
        try {
            String query="update desk_attendant set name=?, contact_no=?, shift=?, sal=? where id=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setString(1, s.getD_name());
            p.setString(2, s.getD_contNo());
            p.setString(3, s.getD_shift());
            p.setString(4, s.getD_sal());
            p.setInt(5,s.getD_id());
            p.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
            
            
            
                            //get user by email and password
    
    public Desk_attendant getDeskUserByEmailAndPassword(String email,String password){
        Desk_attendant user=null;
        
        try {
            String query="select * from desk_attendant where username=? and password=?";
            PreparedStatement pstm=con.prepareStatement(query);
            pstm.setString(1, email);
             pstm.setString(2, password);
            ResultSet set= pstm.executeQuery();
            if(set.next()){
                user=new Desk_attendant();
               
                //set to user object
                
                user.setD_id(set.getInt("id"));
                 user.setD_name(set.getString("name"));
                  user.setD_contNo(set.getString("contact_no"));
                   user.setD_duty(set.getString("duty"));
                    user.setD_sal(set.getString("shift"));
                     user.setD_shift(set.getString("sal"));
                   user.setD_usernme(set.getString("username"));
                   user.setD_password(set.getString("password"));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }
    
    
           //delete desk Attendant
            public boolean deleteDeskAttendant(Desk_attendant s){
        boolean f=false;
        try {
            String query="DELETE from desk_attendant where id=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setInt(1,s.getD_id());
            p.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
        
}
