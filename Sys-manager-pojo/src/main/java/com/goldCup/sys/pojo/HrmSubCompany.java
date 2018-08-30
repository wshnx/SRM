package com.goldCup.sys.pojo;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class HrmSubCompany implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String subcompanyname;
	private String subcompanycode;
	private int pid;
	private int tlevel;
//	public int getId() {
//		return id;
//	}
//	public void setId(int id) {
//		this.id = id;
//	}
//	public String getSubcompanyname() {
//		return subcompanyname;
//	}
//	public void setSubcompanyname(String subcompanyname) {
//		this.subcompanyname = subcompanyname;
//	}
//	public String getSubcompanycode() {
//		return subcompanycode;
//	}
//	public void setSubcompanycode(String subcompanycode) {
//		this.subcompanycode = subcompanycode;
//	}
//	public int getPid() {
//		return pid;
//	}
//	public void setPid(int pid) {
//		this.pid = pid;
//	}
//	public int getTlevel() {
//		return tlevel;
//	}
//	public void setTlevel(int tlevel) {
//		this.tlevel = tlevel;
//	}
}
