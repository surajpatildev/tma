/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.testmyaptitude.pojo;

import java.sql.Date;

/**
 *
 * @author Suraj
 */
public class user {
	public user(){
		
	}
    public user(int id, String email, String password, String fname, String lname, String gender, Date dateob, String mobileno) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.fname = fname;
		this.lname = lname;
		this.gender = gender;
		this.dateob = dateob;
		this.mobileno = mobileno;
	}
	public Date getDateob() {
		return dateob;
	}
	public void setDateob(Date dateob) {
		this.dateob = dateob;
	}
	private int id;
    private String email;
    private String password;
    private String fname;
    private String lname;
    private String gender;
    private String dob;
    private String date;
    private String month;
    private String year;
    private String mobileno;
    private Date dateob;
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return year+"-"+month+"-"+date;
    }
    public String getMobileno() {
        return mobileno;
    }

    public void setMobileno(String mobileno) {
        this.mobileno = mobileno;
    }
    @Override
    public String toString() {
        return "user{" + "id=" + id + ", email=" + email + ", password=" + password + ", fname=" + fname + ", lname=" + lname + ", gender=" + gender + ", dob=" + dob + ", date=" + date + ", month=" + month + ", year=" + year + ", mobileno=" + mobileno + '}';
    }

}
