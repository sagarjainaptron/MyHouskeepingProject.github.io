/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.dao;

import com.housekeeping.entities.Floor;
import com.housekeeping.entities.Floor_service;

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
public class FloorDao {
    private Connection con;

    public FloorDao(Connection con) {
        this.con = con;
    }
    /*
    //floor 1
    public ArrayList<Floor> getFloor1Status(){
       ArrayList<Floor> list=new ArrayList<>();
        
       String q="select * from floorcleaning where FloorNo = ?";
        try {
              PreparedStatement ps=con.prepareStatement(q);
        ps.setInt(1, 1);
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            int floorNo=rs.getInt("FloorNo");
           String roomNo=rs.getString("RoomNo");
            String roomType=rs.getString("RoomType");
            String status=rs.getString("Status");
            String duty=rs.getString("Attendent");
             Timestamp rtime=rs.getTimestamp("RTime");
             Floor floor=new Floor(floorNo,roomNo,roomType, status, duty, rtime);
             list.add(floor);
            
            
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
      
        
        return list;
    }
    
   // Floor2
    public ArrayList<Floor> getFloor2Status(){
        
        ArrayList<Floor> list=new ArrayList<>();
        
        
         String q="select * from floorcleaning where FloorNo = ?";
        try {
              PreparedStatement ps=con.prepareStatement(q);
        ps.setInt(1, 2);
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            int floorNo=rs.getInt("FloorNo");
           String roomNo=rs.getString("RoomNo");
            String roomType=rs.getString("RoomType");
            String status=rs.getString("Status");
            String duty=rs.getString("Attendent");
             Timestamp rtime=rs.getTimestamp("RTime");
             Floor floor=new Floor(floorNo,roomNo,roomType, status, duty, rtime);
             list.add(floor);
            
            
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
       return list;
    }
    
    
    
    
       // Floor3
    public ArrayList<Floor> getFloor3Status(){
        
        ArrayList<Floor> list=new ArrayList<>();
        
        
         String q="select * from floorcleaning where FloorNo = ?";
        try {
              PreparedStatement ps=con.prepareStatement(q);
        ps.setInt(1, 3);
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            int floorNo=rs.getInt("FloorNo");
           String roomNo=rs.getString("RoomNo");
            String roomType=rs.getString("RoomType");
            String status=rs.getString("Status");
            String duty=rs.getString("Attendent");
             Timestamp rtime=rs.getTimestamp("RTime");
             Floor floor=new Floor(floorNo,roomNo,roomType, status, duty, rtime);
             list.add(floor);
            
            
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
       return list;
    }
    
    */
    
    //all floor
        public ArrayList<Floor> getAllFloorStatus(){
        
        ArrayList<Floor> list=new ArrayList<>();
        
        
         String q="select * from floorcleaning order by RoomNo";
        try {
              PreparedStatement ps=con.prepareStatement(q);
        
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            int floorNo=rs.getInt("FloorNo");
           String roomNo=rs.getString("RoomNo");
            String roomType=rs.getString("RoomType");
            String status=rs.getString("Status");
            String duty=rs.getString("Attendent");
             Timestamp rtime=rs.getTimestamp("RTime");
             Floor floor=new Floor(floorNo,roomNo,roomType, status, duty, rtime);
             list.add(floor);
            
            
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
       return list;
    }
        
        
        
                  
                  //update service Attendant
            public boolean updateFloorStatus(Floor s){
        boolean f=false;
        try {
            String query="update floorcleaning set Status=? where RoomNo=?";
            PreparedStatement p=con.prepareStatement(query);
           p.setString(1, s.getStatus());
           p.setString(2, s.getRoomNo());
   
            p.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
            
            
            
            
            //fetching floor wise service records
           //all floor
        public ArrayList<Floor_service> getAllFloorServiceStatus(){
        
        ArrayList<Floor_service> list=new ArrayList<>();
        
        
         String q="select * from floorservice order by S_Date DESC";
        try {
              PreparedStatement ps=con.prepareStatement(q);
        
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            int floorNo=rs.getInt("Floor_No");
           String roomNo=rs.getString("Room_No");
           String status=rs.getString("Status");
           String name=rs.getString("Name");
           String sService=rs.getString("Service");
           
         //  Date sDate=rs.getDate("S_Date");
         Timestamp sDate=rs.getTimestamp("S_Date");
           
             Floor_service floor_service=new Floor_service(floorNo, roomNo, status, name, sService , sDate);
             list.add(floor_service);
            
            
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
       return list;
    }
        
           
        //insert date wise service records
        public boolean insertDatewiseServiceRecords(Floor_service s){
        boolean f=false;
        try {
            String q="insert into floorservice(Floor_No,Room_No,Status,Name,Service) values(?,?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(q);
            pstmt.setInt(1, s.getsFloorNo());
            pstmt.setString(2, s.getsRoomNo());
            pstmt.setString(3, s.getsStatus());
            pstmt.setString(4, s.getSname());
        
            pstmt.setString(5,s.getsService());
          // java.util.Date utilDate = new java.util.Date();
         //   java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());     
    
            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
        
        
        
           //insert date wise cleaner records
        public boolean insertDatewiseCleanerRecords(Floor s){
        boolean f=false;
        try {
            String q="insert into floorcleaning(FloorNo,RoomNo,Attendent,Status) values(?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(q);
            pstmt.setInt(1, s.getFloorNo());
            pstmt.setString(2, s.getRoomNo());
            pstmt.setString(3, s.getDutyName());
            pstmt.setString(4, s.getStatus());
          //  pstmt.setTimestamp(5, s.getDateTime());
          
  
            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
        
        
    
}
