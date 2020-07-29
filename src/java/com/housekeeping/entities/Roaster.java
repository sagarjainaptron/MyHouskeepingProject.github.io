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
public class Roaster {
    private int sNo;
    private String job;
    private int nOfEmp;
    private String workingHours;
    private String shift;
    private String sal;
    private String workingDays;
    private int available;
    private int required;

    public Roaster() {
    }

    public Roaster( String job, int nOfEmp, String workingHours, String shift, String sal, String workingDays,int available,int required) {
        this.job = job;
        this.nOfEmp = nOfEmp;
        this.workingHours = workingHours;
        this.shift = shift;
        this.sal = sal;
        this.workingDays = workingDays;
        this.available=available;
        this.required=required;
    }

    public Roaster(int sNo, String job, int nOfEmp, String workingHours, String shift, String sal, String workingDays) {
        this.sNo = sNo;
        this.job = job;
        this.nOfEmp = nOfEmp;
        this.workingHours = workingHours;
        this.shift = shift;
        this.sal = sal;
        this.workingDays = workingDays;
    }

    public Roaster( int nOfEmp, String workingHours, String shift, String sal, String workingDays,int sNo) {
      
        this.nOfEmp = nOfEmp;
        this.workingHours = workingHours;
        this.shift = shift;
        this.sal = sal;
        this.workingDays = workingDays;
        this.sNo=sNo;
    }

    public Roaster(int sNo, String job, int nOfEmp, String workingHours, String shift, String sal, String workingDays, int available, int required) {
        this.sNo = sNo;
        this.job = job;
        this.nOfEmp = nOfEmp;
        this.workingHours = workingHours;
        this.shift = shift;
        this.sal = sal;
        this.workingDays = workingDays;
        this.available = available;
        this.required = required;
    }
    
    

    public int getsNo() {
        return sNo;
    }

    public void setsNo(int sNo) {
        this.sNo = sNo;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public int getnOfEmp() {
        return nOfEmp;
    }

    public void setnOfEmp(int nOfEmp) {
        this.nOfEmp = nOfEmp;
    }

    public String getWorkingHours() {
        return workingHours;
    }

    public void setWorkingHours(String workingHours) {
        this.workingHours = workingHours;
    }

    public String getShift() {
        return shift;
    }

    public void setShift(String shift) {
        this.shift = shift;
    }

    public String getSal() {
        return sal;
    }

    public void setSal(String sal) {
        this.sal = sal;
    }

    public String getWorkingDays() {
        return workingDays;
    }

    public void setWorkingDays(String workingDays) {
        this.workingDays = workingDays;
    }

    public int getAvailable() {
        return available;
    }

    public void setAvailable(int available) {
        this.available = available;
    }

    public int getRequired() {
        return required;
    }

    public void setRequired(int required) {
        this.required = required;
    }
    
    
}
