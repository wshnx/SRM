package com.goldCup.sys.pojo;
import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class HrmResource implements Serializable {

	private static final long serialVersionUID = 2378473738950596931L;
	private int id;
	private String loginid;
	private String password;
	private String lastname;
	private String sex;
	private String telephone;
	private String mobile;
	private HrmSubCompany hrmSubCompany;
	private HrmDepartment hrmDepartment;
	private HrmJobTitles hrmJobTitles;
	private boolean issrm;
	private int subcompanyid1;
	private RoleManager roleManager;
	private String columns;
//	public int getId() {
//		return id;
//	}
//	public void setId(int id) {
//		this.id = id;
//	}
//	public String getLoginid() {
//		return loginid;
//	}
//	public void setLoginid(String loginid) {
//		this.loginid = loginid;
//	}
//	public String getPassword() {
//		return password;
//	}
//	public void setPassword(String password) {
//		this.password = password;
//	}
//	public String getLastname() {
//		return lastname;
//	}
//	public void setLastname(String lastname) {
//		this.lastname = lastname;
//	}
//	public String getSex() {
//		return sex;
//	}
//	public void setSex(String sex) {
//		this.sex = sex;
//	}
//	public String getTelephone() {
//		return telephone;
//	}
//	public void setTelephone(String telephone) {
//		this.telephone = telephone;
//	}
//	public String getMobile() {
//		return mobile;
//	}
//	public void setMobile(String mobile) {
//		this.mobile = mobile;
//	}
//	public HrmSubCompany getHrmSubCompany() {
//		return hrmSubCompany;
//	}
//	public void setHrmSubCompany(HrmSubCompany hrmSubCompany) {
//		this.hrmSubCompany = hrmSubCompany;
//	}
//	public HrmDepartment getHrmDepartment() {
//		return hrmDepartment;
//	}
//	public void setHrmDepartment(HrmDepartment hrmDepartment) {
//		this.hrmDepartment = hrmDepartment;
//	}
//	public HrmJobTitles getHrmJobTitles() {
//		return hrmJobTitles;
//	}
//	public void setHrmJobTitles(HrmJobTitles hrmJobTitles) {
//		this.hrmJobTitles = hrmJobTitles;
//	}
//	public boolean isIsbaojiauser() {
//		return isbaojiauser;
//	}
//	public void setIsbaojiauser(boolean isbaojiauser) {
//		this.isbaojiauser = isbaojiauser;
//	}
//	public int getSubcompanyid1() {
//		return subcompanyid1;
//	}
//	public void setSubcompanyid1(int subcompanyid1) {
//		this.subcompanyid1 = subcompanyid1;
//	}
//	public RoleManager getRoleManager() {
//		return roleManager;
//	}
//	public void setRoleManager(RoleManager roleManager) {
//		this.roleManager = roleManager;
//	}
//	public String getColumns() {
//		return columns;
//	}
//	public void setColumns(String columns) {
//		this.columns = columns;
//	}

}
