/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.housekeeping.entities;

import java.sql.Timestamp;
import java.util.Date;

/**
 *
 * @author hp world
 */
public class LostAndFound {
    private int sNo;
    private Date date;
    private String timeFound;
    private String areaFound;
    private String item;
    private String desc;
    private String foundedBy;
    private String collectedBy;
    private String address;
    private Date dateCollected;
    private String mark;

    public LostAndFound() {
    }

    public LostAndFound(int sNo, Date date, String timeFound, String areaFound, String item, String desc, String foundedBy, String collectedBy, String address, Date dateCollected, String mark) {
        this.sNo = sNo;
        this.date = date;
        this.timeFound = timeFound;
        this.areaFound = areaFound;
        this.item = item;
        this.desc = desc;
        this.foundedBy = foundedBy;
        this.collectedBy = collectedBy;
        this.address = address;
        this.dateCollected = dateCollected;
        this.mark = mark;
    }

    public LostAndFound( String timeFound,String areaFound, String item, String desc, String foundedBy) {
        this.timeFound=timeFound;
        this.areaFound = areaFound;
        this.item = item;
        this.desc = desc;
        this.foundedBy = foundedBy;
    }

    public LostAndFound(Date date, String timeFound, String areaFound, String item, String desc, String foundedBy) {
        this.date = date;
        this.timeFound = timeFound;
        this.areaFound = areaFound;
        this.item = item;
        this.desc = desc;
        this.foundedBy = foundedBy;
    }

    public LostAndFound(int sNo,Date date ,String timeFound, String areaFound, String item, String desc, String foundedBy) {
        this.sNo = sNo;
        this.date = date;
        this.timeFound = timeFound;
        this.areaFound = areaFound;
        this.item = item;
        this.desc = desc;
        this.foundedBy = foundedBy;
    }

    public LostAndFound(String collectedBy, String address, Date dateCollected,int sNo,String mark) {
        this.sNo = sNo;
        this.collectedBy = collectedBy;
        this.address = address;
        this.dateCollected = dateCollected;
        this.mark=mark;
    }

   
    
    
    
    

    public int getsNo() {
        return sNo;
    }

    public void setsNo(int sNo) {
        this.sNo = sNo;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTimeFound() {
        return timeFound;
    }

    public void setTimeFound(String timeFound) {
        this.timeFound = timeFound;
    }

    public String getAreaFound() {
        return areaFound;
    }

    public void setAreaFound(String areaFound) {
        this.areaFound = areaFound;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getFoundedBy() {
        return foundedBy;
    }

    public void setFoundedBy(String foundedBy) {
        this.foundedBy = foundedBy;
    }

    public String getCollectedBy() {
        return collectedBy;
    }

    public void setCollectedBy(String collectedBy) {
        this.collectedBy = collectedBy;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDateCollected() {
        return dateCollected;
    }

    public void setDateCollected(Date dateCollected) {
        this.dateCollected = dateCollected;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }
    
    
}
