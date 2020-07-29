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
public class ComplaintBox {
    private String room_no;
    private String req_items;
    private String complaints;
    private Timestamp com_date;

    public ComplaintBox() {
    }

    public ComplaintBox(String room_no, String req_items, String complaints, Timestamp com_date) {
        this.room_no = room_no;
        this.req_items = req_items;
        this.complaints = complaints;
        this.com_date = com_date;
    }

    public ComplaintBox(String room_no, String req_items, String complaints) {
        this.room_no = room_no;
        this.req_items = req_items;
        this.complaints = complaints;
    }
    
    

    public String getRoom_no() {
        return room_no;
    }

    public void setRoom_no(String room_no) {
        this.room_no = room_no;
    }

    public String getReq_items() {
        return req_items;
    }

    public void setReq_items(String req_items) {
        this.req_items = req_items;
    }

    public String getComplaints() {
        return complaints;
    }

    public void setComplaints(String complaints) {
        this.complaints = complaints;
    }

    public Timestamp getCom_date() {
        return com_date;
    }

    public void setCom_date(Timestamp com_date) {
        this.com_date = com_date;
    }
    
    
}
