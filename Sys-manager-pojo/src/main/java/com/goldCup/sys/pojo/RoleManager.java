package com.goldCup.sys.pojo;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class RoleManager implements Serializable {
	private static final long serialVersionUID = -532280089564911054L;
	private int id;
	private String roleCode;
	private String roleName;
	private String dDate;
	private String roleRemark;
	private String createUser;
	private HrmResource hrmResource;
	private int count;
	private boolean isDel;
//	public int getId() {
//		return id;
//	}
//	public void setId(int id) {
//		this.id = id;
//	}
//	public String getRoleCode() {
//		return roleCode;
//	}
//	public void setRoleCode(String roleCode) {
//		this.roleCode = roleCode;
//	}
//	public String getRoleName() {
//		return roleName;
//	}
//	public void setRoleName(String roleName) {
//		this.roleName = roleName;
//	}
//	public String getdDate() {
//		return dDate;
//	}
//	public void setdDate(String dDate) {
//		this.dDate = dDate;
//	}
//	public String getRoleRemark() {
//		return roleRemark;
//	}
//	public void setRoleRemark(String roleRemark) {
//		this.roleRemark = roleRemark;
//	}
//	public String getCreateUser() {
//		return createUser;
//	}
//	public void setCreateUser(String createUser) {
//		this.createUser = createUser;
//	}
//	public HrmResource getHrmResource() {
//		return hrmResource;
//	}
//	public void setHrmResource(HrmResource hrmResource) {
//		this.hrmResource = hrmResource;
//	}

}
