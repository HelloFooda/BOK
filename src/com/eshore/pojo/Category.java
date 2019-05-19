package com.eshore.pojo;

public class Category {
	
	private Integer sid;
	private String arsort;
	
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getArsort() {
		return arsort;
	}
	public void setArsort(String arsort) {
		this.arsort = arsort;
	}
	
	@Override
	public String toString() {
		return "Category [sid=" + sid + ", arsort=" + arsort + "]";
	}
}
