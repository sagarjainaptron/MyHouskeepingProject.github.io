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
public class Desk_attendant {
    private int d_id;
    private String d_name;
    private String d_contNo;
    private String d_duty;
    private String d_shift;
    private String d_sal;
    private String d_usernme;
    private String d_password;

    public Desk_attendant() {
    }

    public Desk_attendant(int d_id) {
        this.d_id = d_id;
    }
    
    

    public Desk_attendant(int d_id, String d_name, String d_contNo, String d_duty, String d_shift, String d_sal, String d_usernme, String d_password) {
        this.d_id = d_id;
        this.d_name = d_name;
        this.d_contNo = d_contNo;
        this.d_duty = d_duty;
        this.d_shift = d_shift;
        this.d_sal = d_sal;
        this.d_usernme = d_usernme;
        this.d_password = d_password;
    }

    public Desk_attendant(String d_name, String d_contNo, String d_duty, String d_shift, String d_sal, String d_usernme, String d_password) {
        this.d_name = d_name;
        this.d_contNo = d_contNo;
        this.d_duty = d_duty;
        this.d_shift = d_shift;
        this.d_sal = d_sal;
        this.d_usernme = d_usernme;
        this.d_password = d_password;
    }

    public Desk_attendant(int d_id, String d_name, String d_contNo, String d_shift, String d_sal) {
        this.d_id = d_id;
        this.d_name = d_name;
        this.d_contNo = d_contNo;
        this.d_shift = d_shift;
        this.d_sal = d_sal;
    }
    
    
    

    public int getD_id() {
        return d_id;
    }

    public void setD_id(int d_id) {
        this.d_id = d_id;
    }

    public String getD_name() {
        return d_name;
    }

    public void setD_name(String d_name) {
        this.d_name = d_name;
    }

    public String getD_contNo() {
        return d_contNo;
    }

    public void setD_contNo(String d_contNo) {
        this.d_contNo = d_contNo;
    }

    public String getD_duty() {
        return d_duty;
    }

    public void setD_duty(String d_duty) {
        this.d_duty = d_duty;
    }

    public String getD_shift() {
        return d_shift;
    }

    public void setD_shift(String d_shift) {
        this.d_shift = d_shift;
    }

   

    public String getD_usernme() {
        return d_usernme;
    }

    public void setD_usernme(String d_usernme) {
        this.d_usernme = d_usernme;
    }

    public String getD_password() {
        return d_password;
    }

    public void setD_password(String d_password) {
        this.d_password = d_password;
    }

    public String getD_sal() {
        return d_sal;
    }

    public void setD_sal(String d_sal) {
        this.d_sal = d_sal;
    }
    
    
    
}
