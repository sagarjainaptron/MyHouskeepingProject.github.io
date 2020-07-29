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
public class Staff_update {
    private int staff_id;
    private String stff_name;
    private int stff_age;
    private String stff_doj;
    private String stff_duty;
    private String stff_shift;
    private String staff_username;
    private String staff_password;
    private String staff_cont;
    private String staff_sal;

    public Staff_update() {
    }

    public Staff_update(int staff_id) {
        this.staff_id = staff_id;
    }
    
    

    public Staff_update(int staff_id, String stff_name, int stff_age, String stff_doj, String stff_duty, String stff_shift, String staff_username, String staff_password,String staff_cont,String staff_sal) {
        this.staff_id = staff_id;
        this.stff_name = stff_name;
        this.stff_age = stff_age;
        this.stff_doj = stff_doj;
        this.stff_duty = stff_duty;
        this.stff_shift = stff_shift;
        this.staff_username=staff_username;
        this.staff_password=staff_password;
        this.staff_cont=staff_cont;
        this.staff_sal=staff_sal;
    }

    public Staff_update(String stff_name, int stff_age, String stff_doj, String staff_sal, String stff_shift, String staff_username, String staff_password,String staff_cont) {
        this.stff_name = stff_name;
        this.stff_age = stff_age;
        this.stff_doj = stff_doj;
        this.staff_sal = staff_sal;
        this.stff_shift = stff_shift;
         this.staff_username=staff_username;
        this.staff_password=staff_password;
        this.staff_cont=staff_cont;
    }

    public Staff_update(int staff_id, String stff_name, String stff_duty, String stff_shift , String staff_username, String staff_password) {
        this.staff_id = staff_id;
        this.stff_name = stff_name;
        this.stff_duty = stff_duty;
        this.stff_shift = stff_shift;
          this.staff_username=staff_username;
        this.staff_password=staff_password;
    }

    public Staff_update(int staff_id, String stff_name, String staff_sal, String stff_shift) {
        this.staff_id = staff_id;
        this.stff_name = stff_name;
        this.staff_sal = staff_sal;
        this.stff_shift = stff_shift;
    }
    

 

    public int getStaff_id() {
        return staff_id;
    }

    public void setStaff_id(int staff_id) {
        this.staff_id = staff_id;
    }

    public String getStff_name() {
        return stff_name;
    }

    public void setStff_name(String stff_name) {
        this.stff_name = stff_name;
    }

    public int getStff_age() {
        return stff_age;
    }

    public void setStff_age(int stff_age) {
        this.stff_age = stff_age;
    }

    public String getStff_doj() {
        return stff_doj;
    }

    public void setStff_doj(String stff_doj) {
        this.stff_doj = stff_doj;
    }

    public String getStff_duty() {
        return stff_duty;
    }

    public void setStff_duty(String stff_duty) {
        this.stff_duty = stff_duty;
    }

    public String getStff_shift() {
        return stff_shift;
    }

    public void setStff_shift(String stff_shift) {
        this.stff_shift = stff_shift;
    }

    public String getStaff_username() {
        return staff_username;
    }

    public void setStaff_username(String staff_username) {
        this.staff_username = staff_username;
    }

    public String getStaff_password() {
        return staff_password;
    }

    public void setStaff_password(String staff_password) {
        this.staff_password = staff_password;
    }

    public String getStaff_cont() {
        return staff_cont;
    }

    public void setStaff_cont(String staff_cont) {
        this.staff_cont = staff_cont;
    }

    public String getStaff_sal() {
        return staff_sal;
    }

    public void setStaff_sal(String staff_sal) {
        this.staff_sal = staff_sal;
    }
    
    
}
