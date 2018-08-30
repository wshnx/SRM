package com.goldCup.sys.pojo;

import java.io.Serializable;

public class HrmJobTitles implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getJobtitlemark() {
		return jobtitlemark;
	}
	public void setJobtitlemark(String jobtitlemark) {
		this.jobtitlemark = jobtitlemark;
	}
	private String jobtitlemark;

}
