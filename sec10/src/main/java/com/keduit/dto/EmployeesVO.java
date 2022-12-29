package com.keduit.dto;

import java.sql.Timestamp;

public class EmployeesVO {

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLev() {
		return lev;
	}
	public void setLev(String lev) {
		this.lev = lev;
	}
	public Timestamp getEnter() {
		return enter;
	}
	public void setEnter(Timestamp enter) {
		this.enter = enter;
	}
	public boolean getGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	
	
	
	@Override
	public String toString() {
		return "EmployeesVO [id=" + id + ", pass=" + pass + ", name=" + name + ", lev=" + lev + ", enter=" + enter
				+ ", gender=" + gender + ", phone=" + phone + "]";
	}



	private String id;
	private String pass;
	private String name;
	private String lev;
	private Timestamp enter;
	private boolean gender;
	private int phone;
}
