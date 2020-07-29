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
public class Service_attendant {
    private int s_id;
    private String s_name;
    private String s_contNo;
    private String s_usernme;
    private String s_password;
    private String s_duty;
    private String s_shift;
    private String s_sal;

    public Service_attendant() {
    }

    public Service_attendant(int s_id) {
        this.s_id = s_id;
    }

    public Service_attendant(int s_id, String s_name, String s_contNo, String s_usernme, String s_password, String s_duty, String s_shift) {
        this.s_id = s_id;
        this.s_name = s_name;
        this.s_contNo = s_contNo;
        this.s_usernme = s_usernme;
        this.s_password = s_password;
        this.s_duty = s_duty;
        this.s_shift = s_shift;
    }

    
    
    public Service_attendant(int s_id, String s_name, String s_contNo, String s_usernme, String s_password, String s_duty, String s_shift,String s_sal) {
        this.s_id = s_id;
        this.s_name = s_name;
        this.s_contNo = s_contNo;
        this.s_usernme = s_usernme;
        this.s_password = s_password;
        this.s_duty = s_duty;
        this.s_shift = s_shift;
        this.s_sal=s_sal;
    }

    public Service_attendant(String s_name, String s_contNo, String s_usernme, String s_password, String s_duty, String s_shift,String s_sal) {
        this.s_name = s_name;
        this.s_contNo = s_contNo;
        this.s_usernme = s_usernme;
        this.s_password = s_password;
        this.s_duty = s_duty;
        this.s_shift = s_shift;
        this.s_sal=s_sal;
    }

    public Service_attendant(int s_id, String s_name, String s_sal, String s_shift) {
        this.s_id = s_id;
        this.s_name = s_name;
        this.s_sal = s_sal;
        this.s_shift = s_shift;
    }
    
    

    public int getS_id() {
        return s_id;
    }

    public void setS_id(int s_id) {
        this.s_id = s_id;
    }

    public String getS_name() {
        return s_name;
    }

    public void setS_name(String s_name) {
        this.s_name = s_name;
    }

    public String getS_contNo() {
        return s_contNo;
    }

    public void setS_contNo(String s_contNo) {
        this.s_contNo = s_contNo;
    }

    public String getS_usernme() {
        return s_usernme;
    }

    public void setS_usernme(String s_usernme) {
        this.s_usernme = s_usernme;
    }

    public String getS_password() {
        return s_password;
    }

    public void setS_password(String s_password) {
        this.s_password = s_password;
    }

    public String getS_duty() {
        return s_duty;
    }

    public void setS_duty(String s_duty) {
        this.s_duty = s_duty;
    }

    public String getS_shift() {
        return s_shift;
    }

    public void setS_shift(String s_shift) {
        this.s_shift = s_shift;
    }

    public String getS_sal() {
        return s_sal;
    }

    public void setS_sal(String s_sal) {
        this.s_sal = s_sal;
    }
    
    
}
