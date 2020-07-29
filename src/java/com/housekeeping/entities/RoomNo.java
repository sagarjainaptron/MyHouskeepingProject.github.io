/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.entities;

/**
 *
 * @author hp world
 */
public class RoomNo {
    private int floor_no;
    private String room_no;
    private String occupancy;

    public RoomNo() {
    }

    public RoomNo(int floor_no, String room_no) {
        this.floor_no = floor_no;
        this.room_no = room_no;
    }

    public RoomNo(int floor_no, String room_no, String occupancy) {
        this.floor_no = floor_no;
        this.room_no = room_no;
        this.occupancy = occupancy;
    }
    
    

    public int getFloor_no() {
        return floor_no;
    }

    public void setFloor_no(int floor_no) {
        this.floor_no = floor_no;
    }

    public String getRoom_no() {
        return room_no;
    }

    public void setRoom_no(String room_no) {
        this.room_no = room_no;
    }

    public String getOccupancy() {
        return occupancy;
    }

    public void setOccupancy(String occupancy) {
        this.occupancy = occupancy;
    }
    
    
    
}
