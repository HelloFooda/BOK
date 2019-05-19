package com.eshore.pojo;

import java.util.Date;

public class AdminArticle {
	
	private Integer arid;
	private String arsort;
	private String artitle;
	private String arcontent;
	private String arbackground;
	private Date  artime;
	
	public Integer getArid() {
		return arid;
	}
	public void setArid(Integer arid) {
		this.arid = arid;
	}
	public String getArsort() {
		return arsort;
	}
	public void setArsort(String arsort) {
		this.arsort = arsort;
	}
	public String getArtitle() {
		return artitle;
	}
	public void setArtitle(String artitle) {
		this.artitle = artitle;
	}
	public String getArcontent() {
		return arcontent;
	}
	public void setArcontent(String arcontent) {
		this.arcontent = arcontent;
	}
	public String getArbackground() {
		return arbackground;
	}
	public void setArbackground(String arbackground) {
		this.arbackground = arbackground;
	}
	public Date getArtime() {
		return artime;
	}
	public void setArtime(Date artime) {
		this.artime = artime;
	}
	
	@Override
	public String toString() {
		return "AdminArticle [arid=" + arid + ", arsort=" + arsort + ", artitle=" + artitle + ", arcontent=" + arcontent
				+ ", arbackground=" + arbackground + ", artime=" + artime + "]";
	}
	
}
