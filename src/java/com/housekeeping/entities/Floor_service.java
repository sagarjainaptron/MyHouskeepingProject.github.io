/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.entities;


import java.sql.Timestamp;
//import java.util.Date;

/**
 *
 * @author hp world
 */
public class Floor_service {
    private int sFloorNo;
    private String sRoomNo;
    private String sStatus;
    private String sname;
    private String sService;
    
 //   private String sDuty;
  //  private Date sDate;
 //   private int sId;
    
    private Timestamp sDate;

    public Floor_service() {
    }

    public Floor_service(int sFloorNo, String sRoomNo, String sStatus, String sname, String sService, Timestamp sDate) {
        this.sFloorNo = sFloorNo;
        this.sRoomNo = sRoomNo;
        this.sStatus = sStatus;
        this.sname = sname;
        this.sService = sService;
        
        this.sDate = sDate;
      
    }

    public Floor_service(int sFloorNo, String sRoomNo, String sStatus, String sname, String sService) {
        this.sFloorNo = sFloorNo;
        this.sRoomNo = sRoomNo;
        this.sStatus = sStatus;
        this.sname = sname;
        this.sService = sService;
    }

    
    

    public int getsFloorNo() {
        return sFloorNo;
    }

    public void setsFloorNo(int sFloorNo) {
        this.sFloorNo = sFloorNo;
    }

    public String getsRoomNo() {
        return sRoomNo;
    }

    public void setsRoomNo(String sRoomNo) {
        this.sRoomNo = sRoomNo;
    }

    public String getsStatus() {
        return sStatus;
    }

    public void setsStatus(String sStatus) {
        this.sStatus = sStatus;
    }

    public String getsService() {
        return sService;
    }

    public void setsService(String sService) {
        this.sService = sService;
    }

 

   

    public Timestamp getsDate() {
        return sDate;
    }

    public void setsDate(Timestamp sDate) {
        this.sDate = sDate;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }



   
    
    
}
