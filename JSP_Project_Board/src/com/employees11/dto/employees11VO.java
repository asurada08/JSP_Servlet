package com.employees11.dto;

import java.sql.Timestamp;

public class employees11VO {
	private String id;
	private String pass;
	private String name;
	private char lev;
	private Timestamp enter;
	private char gender;
	private String phone;
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
	public char getLev() {
		return lev;
	}
	public void setLev(char lev) {
		this.lev = lev;
	}
	public Timestamp getEnter() {
		return enter;
	}
	public void setEnter(Timestamp enter) {
		this.enter = enter;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "employees11VO [id=" + id + ", pass=" + pass + ", name=" + name + ", lev=" + lev + ", enter=" + enter
				+ ", gender=" + gender + ", phone=" + phone + "]";
	}
	
	
}
