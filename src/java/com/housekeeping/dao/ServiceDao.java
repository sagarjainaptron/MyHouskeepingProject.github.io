/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.dao;

import com.housekeeping.entities.Service_attendant;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author hp world
 */
public class ServiceDao {
     private Connection con;

    public ServiceDao(Connection con) {
        this.con = con;
    }
     
        //view records
      public ArrayList<Service_attendant> getServiceAttendantDetails(){
       ArrayList<Service_attendant> list=new ArrayList<>();
        
       String q="select * from service_attendant";
        try {
              PreparedStatement ps=con.prepareStatement(q);
       
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            int s_id=rs.getInt("s_id");
            String s_name=rs.getString("s_name");
            String s_contNo=rs.getString("cont_no");
            String s_username=rs.getString("s_username");
            String s_password=rs.getString("s_password");
            String s_duty=rs.getString("s_duty");
            String s_shift=rs.getString("s_shift");
            String s_sal=rs.getString("s_sal");
            
            Service_attendant s=new Service_attendant(s_id, s_name, s_contNo, s_username, s_password, s_duty, s_shift,s_sal);
             list.add(s);
     }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
      
        return list;
}
      
      
      
        //insert records
        public boolean addServiceAttendantDetails(Service_attendant s){
        boolean f=false;
        try {
            String q="insert into service_attendant(s_name,cont_no,s_username,s_password,s_duty,s_shift,s_sal) values(?,?,?,?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(q);
            pstmt.setString(1, s.getS_name());
            pstmt.setString(2, s.getS_contNo());
            pstmt.setString(3, s.getS_usernme());
            pstmt.setString(4, s.getS_password());
            pstmt.setString(5, s.getS_duty());
            pstmt.setString(6, s.getS_shift());
            pstmt.setString(7, s.getS_sal());
           
            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
        
        
           //getServiceById
               public Service_attendant getServicettendantById(int serviceId){
         Service_attendant service_attendant=null;
              String q="select * from service_attendant where s_id=? ";
                   try {
                        PreparedStatement p=this.con.prepareStatement(q);
                          p.setInt(1,serviceId);
                          ResultSet set=p.executeQuery();
                          if (set.next()) {
                            int sId=set.getInt("s_id");
                String sName=set.getString("s_name");
                String sContNo=set.getString("cont_No");
                String sUsername=set.getString("s_username");
                String sPassword=set.getString("s_password");
                String sDuty=set.getString("s_duty");
                String sShift=set.getString("s_shift");
                
                service_attendant=new Service_attendant(sId,sName,sContNo,sUsername,sPassword,sDuty,sShift);
                       }
                       
                   } catch (Exception e) {
                       e.printStackTrace();
                   }
              
              
              
         return service_attendant;
     }
    
               
                  //update service Attendant
            public boolean updateServiceAttendant(Service_attendant s){
        boolean f=false;
        try {
            String query="update service_attendant set s_name=?, s_sal=?, s_shift=? where s_id=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setString(1, s.getS_name());
            p.setString(2, s.getS_sal());
            p.setString(3, s.getS_shift());
            p.setInt(4,s.getS_id());
            p.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
      
      
                           //get user by email and password
    
    public Service_attendant getUByEmailAndPassword(String email,String password){
        Service_attendant user=null;
        
        try {
            String query="select * from service_attendant where s_username=? and s_password=?";
            PreparedStatement pstm=con.prepareStatement(query);
            pstm.setString(1, email);
             pstm.setString(2, password);
            ResultSet set= pstm.executeQuery();
            if(set.next()){
                user=new Service_attendant();
               
                //set to user object
                
                user.setS_id(set.getInt("s_id"));
                 user.setS_name(set.getString("s_name"));
                  user.setS_usernme(set.getString("s_username"));
                   user.setS_password(set.getString("s_password"));
                   user.setS_contNo(set.getString("cont_no"));
                     user.setS_duty(set.getString("s_duty"));
                   user.setS_shift(set.getString("s_shift"));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }
            
    
           //delete service Attendant
            public boolean deleteServiceAttendant(Service_attendant s){
        boolean f=false;
        try {
            String query="DELETE from service_attendant where s_id=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setInt(1,s.getS_id());
            p.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
}
