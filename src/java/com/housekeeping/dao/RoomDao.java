/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.dao;

import com.housekeeping.entities.ComplaintBox;
import com.housekeeping.entities.Inspect_attendant;
import com.housekeeping.entities.RoomNo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

/**
 *
 * @author hp world
 */
public class RoomDao {
    Connection con;

    public RoomDao(Connection con) {
        this.con = con;
    }
    
        public ArrayList<RoomNo> getAllRoomNo(){
    ArrayList<RoomNo> list=new ArrayList<>();
    
        try {
            String q="select * from roomno";
            PreparedStatement preparedStatement=this.con.prepareStatement(q);
            ResultSet set=preparedStatement.executeQuery();
            while(set.next()){
                int floorNo=set.getInt("Floor_num");
                String roomNo=set.getString("Room_num");
                String occupancy=set.getString("occupancy");
               RoomNo rn=new RoomNo(floorNo, roomNo,occupancy);
                list.add(rn);
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    return list;
} 
        
             //insert date wise complaints records
        public boolean insertInComplaintBox(ComplaintBox cb){
        boolean f=false;
        try {
            String q="insert into complaintbox(room_no,req_items,complaints) values(?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(q);
            pstmt.setString(1, cb.getRoom_no());
            pstmt.setString(2, cb.getReq_items());
            pstmt.setString(3, cb.getComplaints());

            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
        
          //insert records
        public boolean addInspectAttendantDetails(Inspect_attendant s){
        boolean f=false;
        try {
            String q="insert into inspect_attendant(name,doj,contact_no,shift,username,password,sal) values(?,?,?,?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(q);
            pstmt.setString(1, s.getName());
            pstmt.setString(2, s.getDoj());
            pstmt.setString(3, s.getCont_no());
            pstmt.setString(4, s.getShift());
            pstmt.setString(5, s.getUsername());
            pstmt.setString(6, s.getPassword());
            pstmt.setString(7, s.getSal());
           
            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    } 
        
        
                //view records
      public ArrayList<Inspect_attendant> getInspectAttendantDetails(){
       ArrayList<Inspect_attendant> list=new ArrayList<>();
        
       String q="select * from inspect_attendant";
        try {
              PreparedStatement ps=con.prepareStatement(q);
       
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            int d_id=rs.getInt("id");
            String d_name=rs.getString("name");
            String d_doj=rs.getString("doj");
            String d_contNo=rs.getString("contact_no");           
            String d_shift=rs.getString("shift");;
            String d_username=rs.getString("username");
            String d_password=rs.getString("password");
            String d_duty=rs.getString("duty");
            String d_sal=rs.getString("sal");
          
            
            Inspect_attendant i=new Inspect_attendant(d_id, d_name,d_doj, d_contNo,d_shift, d_username, d_password,d_duty,d_sal);
             list.add(i);
     }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
      
        return list;
}
        
        
        
            //getInspectById
               public Inspect_attendant getInspectattendantById(int inspectId){
         Inspect_attendant inspect_attendant=null;
              String q="select * from inspect_attendant where id=? ";
                   try {
                        PreparedStatement p=this.con.prepareStatement(q);
                          p.setInt(1,inspectId);
                          ResultSet set=p.executeQuery();
                          if (set.next()) {
                            int sId=set.getInt("id");
                String iName=set.getString("name");
                String iDoj=set.getString("doj");
                String iContNo=set.getString("contact_no");
                String iShift=set.getString("shift");
                String iUsername=set.getString("username");
                String iPassword=set.getString("password");
               
                
               inspect_attendant=new Inspect_attendant(sId, iName, iDoj, iContNo, iShift, iUsername, iPassword);
                       }
                       
                   } catch (Exception e) {
                       e.printStackTrace();
                   }
              
              
              
         return inspect_attendant;
     }
               
               
                   
                  //update inspect Attendant
            public boolean updateInspectAttendant(Inspect_attendant s){
        boolean f=false;
        try {
            String query="update inspect_attendant set name=?, contact_no=?,sal=? where id=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setString(1, s.getName());
            p.setString(2, s.getCont_no());
            p.setString(3, s.getSal());
            p.setInt(4, s.getId());
            p.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
            
                    
                            //get user by email and password
    
    public Inspect_attendant getInspectUserByEmailAndPassword(String email,String password){
        Inspect_attendant user=null;
        
        try {
            String query="select * from inspect_attendant where username=? and password=?";
            PreparedStatement pstm=con.prepareStatement(query);
            pstm.setString(1, email);
             pstm.setString(2, password);
            ResultSet set= pstm.executeQuery();
            if(set.next()){
                user=new Inspect_attendant();
               
                //set to user object
                
                user.setId(set.getInt("id"));
                 user.setName(set.getString("name"));
                  user.setDoj(set.getString("doj"));
                   user.setCont_no(set.getString("contact_no"));
                    user.setShift(set.getString("shift"));
                     user.setUsername(set.getString("username"));
                   user.setPassword(set.getString("password"));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }
        
    
     //fetching floor wise service records
           //all floor
        public ArrayList<ComplaintBox> getAllFloorComplaintStatus(){
        
        ArrayList<ComplaintBox> list=new ArrayList<>();
        
        
         String q="select * from complaintbox order by com_date";
        try {
              PreparedStatement ps=con.prepareStatement(q);
        
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            String room_no=rs.getString("room_no");
           String req_items=rs.getString("req_items");
           String complaints=rs.getString("complaints");
            Timestamp com_date=rs.getTimestamp("com_date");
           
           
             ComplaintBox cb=new ComplaintBox(room_no, req_items, complaints, com_date);
             list.add(cb);
            
            
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
       return list;
    }
        
           //delete inspect Attendant
            public boolean deleteInspectAttendant(Inspect_attendant s){
        boolean f=false;
        try {
            String query="DELETE from inspect_attendant where id=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setInt(1,s.getId());
            p.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
}
