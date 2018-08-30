package com.goldCup.sys.pojo;

import java.io.Serializable;

public class RolePermission implements Serializable {
	private static final long serialVersionUID = -8512386816506625423L;
	private int id;
	private String roleCode;
	private String permission;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoleCode() {
		return roleCode;
	}
	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}

}
