/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.dao;

import com.housekeeping.entities.LostAndFound;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

/**
 *
 * @author hp world
 */
public class LostAndFoundDao {
    private Connection con;

    public LostAndFoundDao(Connection con) {
        this.con = con;
    }
    
       //insert records
        public boolean insertLostAndFoundFields(LostAndFound s){
        boolean f=false;
        try {
            String q="insert into lost_and_found(DateLost,TimeFound,AreaFound,Item,Description,FoundedBy) values(?,?,?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(q);
            
               java.util.Date utilDate = new java.util.Date();
          java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime()); 
            pstmt.setDate(1, sqlDate);
            pstmt.setString(2, s.getTimeFound());
            pstmt.setString(3, s.getAreaFound());
            pstmt.setString(4, s.getItem());
            pstmt.setString(5, s.getDesc());
            pstmt.setString(6, s.getFoundedBy());
         
           
           
            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    } 
        
        
        
         //displaying lost and found fileds
        public ArrayList<LostAndFound> displayLostAndFoundFields(){
        
        ArrayList<LostAndFound> list=new ArrayList<>();
        
        
         String q="select * from lost_and_found";
        try {
              PreparedStatement ps=con.prepareStatement(q);
        
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            int sNo=rs.getInt("SNo");
          Date date=rs.getDate("DateLost");
            String timeFound=rs.getString("TimeFound");
            String AreaFound=rs.getString("AreaFound");
             String Item=rs.getString("Item");
             String Descr=rs.getString("Description");
             String FoundedBy=rs.getString("FoundedBy");
             String CollectedBy=rs.getString("CollectedBy");
             String Address=rs.getString("Address");
            Date DateCollected=rs.getDate("DateCollected");
             String Mark=rs.getString("Mark");
             LostAndFound lostAndFound=new LostAndFound(sNo, date, timeFound, AreaFound, Item, Descr, FoundedBy, CollectedBy, Address, DateCollected, Mark);
             list.add(lostAndFound);
            
            
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
       return list;
    }
        
        
         //update lostAndFound
            public boolean updateLostAndFound(LostAndFound s){
        boolean f=false;
        try {
            String query="update lost_and_found set CollectedBy=?, Address=?, DateCollected=?,Mark=? where SNo=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setString(1, s.getCollectedBy());
            p.setString(2, s.getAddress());
     
            java.util.Date utilDate = new java.util.Date();
          java.sql.Date sqld = new java.sql.Date(utilDate.getTime()); 
            p.setDate(3, sqld);
            p.setInt(4,s.getsNo());
            p.setString(5, s.getMark());
            p.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
            
            //getLostItemsById
               public LostAndFound getLostItemsById(int sno){
         LostAndFound lostAndFound=null;
              String q="select * from lost_and_found where SNo=?";
         try {
        
         PreparedStatement p=this.con.prepareStatement(q);
         p.setInt(1,sno);
         ResultSet set=p.executeQuery();
         if(set.next()){
              Date datef=set.getDate("DateLost");
                int SNo=set.getInt("SNo");
                String TimeFound=set.getString("TimeFound");
                String AreaFound=set.getString("AreaFound");
                String Item=set.getString("Item");
                String Description=set.getString("Description");
                String FoundedBy=set.getString("FoundedBy");
               
                
                lostAndFound=new LostAndFound(SNo,datef, TimeFound, AreaFound, Item, Description, FoundedBy);
         }
         
         
         } catch (Exception e) {
             e.printStackTrace();
         }return lostAndFound;
     }
    
      
        
        
        
}
