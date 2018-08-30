package com.goldCup.sys.pojo;

import java.io.Serializable;

public class UserRole implements Serializable {
	private static final long serialVersionUID = -586928606658683989L;
	private int id;
	private String uid;
	private String rid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}

}
