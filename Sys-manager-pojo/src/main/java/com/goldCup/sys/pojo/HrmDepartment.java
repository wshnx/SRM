package com.goldCup.sys.pojo;

import java.io.Serializable;

public class HrmDepartment implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
	private String departmentmark;
	private HrmSubCompany hrmSubCompany;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDepartmentmark() {
		return departmentmark;
	}
	public void setDepartmentmark(String departmentmark) {
		this.departmentmark = departmentmark;
	}
	public HrmSubCompany getHrmSubCompany() {
		return hrmSubCompany;
	}
	public void setHrmSubCompany(HrmSubCompany hrmSubCompany) {
		this.hrmSubCompany = hrmSubCompany;
	}
}
