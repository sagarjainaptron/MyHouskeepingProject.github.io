/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.dao;

import com.housekeeping.entities.Roaster;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author hp world
 */
public class RoasterDao {
     private Connection con;

    public RoasterDao(Connection con) {
        this.con = con;
    }

   

   
     
         //insert roaster fields
        public boolean insertRoasterFields(Roaster r){
        boolean f=false;
        try {
            String q="insert into roaster(Job,NoOfEmp,WorkingHours,Shift,Sal,WorkingDays,Available,Required) values(?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(q);
            pstmt.setString(1, r.getJob());
            pstmt.setInt(2, r.getnOfEmp());
            pstmt.setString(3, r.getWorkingHours());
            pstmt.setString(4, r.getShift());
            pstmt.setString(5, r.getSal());
            pstmt.setString(6, r.getWorkingDays());
            pstmt.setInt(7,r.getAvailable());
            pstmt.setInt(8,r.getRequired());
    
            pstmt.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
        
        
        
         //displaying roaster fileds
        public ArrayList<Roaster> displayRoasterFields(){
        
        ArrayList<Roaster> list=new ArrayList<>();
        
        
         String q="select * from roaster";
        try {
              PreparedStatement ps=con.prepareStatement(q);
        
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            int sNo=rs.getInt("SNo");
            String Job=rs.getString("Job");
            int NoOfEmp=rs.getInt("NoOfEmp");
            String WorkingHours=rs.getString("WorkingHours");
             String Shift=rs.getString("Shift");
             String Sal=rs.getString("Sal");
             String WorkingDays=rs.getString("WorkingDays");
             int available=rs.getInt("Available");
             int required=rs.getInt("Required");
             Roaster roaster=new Roaster(sNo, Job, NoOfEmp, WorkingHours, Shift, Sal, WorkingDays,available,required);
             list.add(roaster);
            
            
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
       return list;
    }
        
        
        
        
           //getRoasterBySno
               public Roaster getRoasterBySno(int sno){
         Roaster roaster=null;
              String q="select * from roaster where SNo=? ";
                   try {
                        PreparedStatement p=this.con.prepareStatement(q);
                          p.setInt(1,sno);
                          ResultSet set=p.executeQuery();
                          if (set.next()) {
                            int sId=set.getInt("SNo");
                String Job=set.getString("Job");
                int NoOfEmp=set.getInt("NoOfEmp");
                String WorkingHours=set.getString("WorkingHours");
                String Shift=set.getString("Shift");
                String Sal=set.getString("Sal");
                String WorkingDays=set.getString("WorkingDays");
                 int available=set.getInt("Available");
                   int required=set.getInt("Required");
                roaster=new Roaster(sno, Job, NoOfEmp, WorkingHours, Shift, Sal, WorkingDays,available,required);
                       }
                       
                   } catch (Exception e) {
                       e.printStackTrace();
                   }
              
              
              
         return roaster;
     }
    
               
                  //updateRoasterField
            public boolean updateRoasterField(Roaster s){
        boolean f=false;
        try {
            String query="update roaster set NoOfEmp=?, WorkingHours=?, Shift=?, Sal=?, WorkingDays=? where SNo=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setInt(1, s.getnOfEmp());
            p.setString(2, s.getWorkingHours());
            p.setString(3, s.getShift());
            p.setString(4,s.getSal());
            p.setString(5,s.getWorkingDays());
            p.setInt(6,s.getsNo());
            p.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
