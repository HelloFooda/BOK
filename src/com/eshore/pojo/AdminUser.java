package com.eshore.pojo;

import java.util.Date;

public class AdminUser {

	private String aid ;
	private String aname;
	private String password;
	private Date regitmie;
	
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegitmie() {
		return regitmie;
	}
	public void setRegitmie(Date regitmie) {
		this.regitmie = regitmie;
	}
	//toString����
	@Override
	public String toString() {
		return "AdminUser [aid=" + aid + ", aname=" + aname + ", password=" + password + ", regitmie=" + regitmie + "]";
	}
	
}
