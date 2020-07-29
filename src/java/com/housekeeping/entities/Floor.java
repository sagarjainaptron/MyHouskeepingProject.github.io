/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.entities;

import java.sql.Timestamp;

/**
 *
 * @author hp world
 */
public class Floor {
    private int floorNo;
       private String roomNo;
    private String roomType;
     private String status;
      private String dutyName;
        private Timestamp dateTime;

    public Floor() {
    }

    public Floor(int floorNo,String roomNo, String roomType, String status, String dutyName, Timestamp dateTime) {
        this.floorNo=floorNo;
        this.roomNo = roomNo;
        this.roomType = roomType;
        this.status = status;
        this.dutyName = dutyName;
        this.dateTime = dateTime;
    }
    public Floor(int floorNo,String roomNo , String status, String dutyName, Timestamp dateTime) {
        this.floorNo=floorNo;
        this.roomNo = roomNo;
        this.status = status;
        this.dutyName = dutyName;
        this.dateTime = dateTime;
    }
    public Floor(int floorNo,String roomNo,String dutyName , String status) {
        this.floorNo=floorNo;
        this.roomNo = roomNo;
        this.status = status;
        this.dutyName = dutyName;
        
    }
    
    
    

    public Floor(String status) {
        this.status = status;
    }

    public int getFloorNo() {
        return floorNo;
    }

    public void setFloorNo(int floorNo) {
        this.floorNo = floorNo;
    }

    public String getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(String roomNo) {
        this.roomNo = roomNo;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDutyName() {
        return dutyName;
    }

    public void setDutyName(String dutyName) {
        this.dutyName = dutyName;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

 

        
        
    
}
