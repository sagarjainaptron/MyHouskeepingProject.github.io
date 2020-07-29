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
public class Inspect_attendant {
    private int id;
    private String name;
    private String doj;
    private String cont_no;
    private String shift;
    private String username;
    private String password;
    private String duty;
    private String sal;

    public Inspect_attendant() {
    }

    public Inspect_attendant(int id) {
        this.id = id;
    }

    public Inspect_attendant(int id, String name, String doj, String cont_no, String shift, String username, String password) {
        this.id = id;
        this.name = name;
        this.doj = doj;
        this.cont_no = cont_no;
        this.shift = shift;
        this.username = username;
        this.password = password;
    }
    
    

    public Inspect_attendant(int id, String name, String doj, String cont_no, String shift, String username, String password,String duty,String sal) {
        this.id = id;
        this.name = name;
        this.doj = doj;
        this.cont_no = cont_no;
        this.shift = shift;
        this.username = username;
        this.password = password;
        this.duty=duty;
        this.sal=sal;
    }

    public Inspect_attendant(String name, String doj, String cont_no, String shift, String username, String password,String sal) {
        this.name = name;
        this.doj = doj;
        this.cont_no = cont_no;
        this.shift = shift;
        this.username = username;
        this.password = password;
        this.sal=sal;
    }

    public Inspect_attendant(String name, String cont_no,String sal,int id) {
        this.id = id;
        this.name = name;
        this.cont_no = cont_no;
        this.sal=sal;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDoj() {
        return doj;
    }

    public void setDoj(String doj) {
        this.doj = doj;
    }

    public String getCont_no() {
        return cont_no;
    }

    public void setCont_no(String cont_no) {
        this.cont_no = cont_no;
    }

    public String getShift() {
        return shift;
    }

    public void setShift(String shift) {
        this.shift = shift;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public String getSal() {
        return sal;
    }

    public void setSal(String sal) {
        this.sal = sal;
    }
    
    
}
