package com.goldCup.sys.pojo;

import java.io.Serializable;

public class MenuManager implements Serializable {
	private static final long serialVersionUID = -3049968516062142999L;
	private int id;
	private String m_Name;
	private int pid;
	private String divid;
	private String a_href;
	private String span_class;
	private String list_id;
	private String subClass;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getM_Name() {
		return m_Name;
	}
	public void setM_Name(String m_Name) {
		this.m_Name = m_Name;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getDivid() {
		return divid;
	}
	public void setDivid(String divid) {
		this.divid = divid;
	}
	public String getA_href() {
		return a_href;
	}
	public void setA_href(String a_href) {
		this.a_href = a_href;
	}
	public String getSpan_class() {
		return span_class;
	}
	public void setSpan_class(String span_class) {
		this.span_class = span_class;
	}
	public String getList_id() {
		return list_id;
	}
	public void setList_id(String list_id) {
		this.list_id = list_id;
	}
	public String getSubClass() {
		return subClass;
	}
	public void setSubClass(String subClass) {
		this.subClass = subClass;
	}

}
