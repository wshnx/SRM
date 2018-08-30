package com.goldCup.srm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.goldCup.common.utils.JsonData;
import com.goldCup.sys.api.RoleManagerAPI;
import com.goldCup.sys.pojo.RoleManager;

@RestController
public class RoleManagerController {
	@Autowired
	private RoleManagerAPI roleAPI;
	@RequestMapping("/checkRole")
	public JsonData checkRole(@RequestBody RoleManager role){
		role.setId(6);
		return roleAPI.getInfo("srm", role);
	}
	@RequestMapping("/addRoleManager")
	public JsonData addRoleManager(@RequestBody RoleManager role) {
		return roleAPI.insertInfo("srm", role);
	}
	@RequestMapping("/loadRoleInfo")
	public JsonData loadRoleInfo(@RequestParam("pg")Integer pg,@RequestParam("condition")String condition){
		RoleManager role = new RoleManager();
		role.setRoleName(condition);
		role.setCount(pg);
		role.setId(8);
		return roleAPI.getListInfo("srm", role);
	}
	@RequestMapping("/updateRole")
	public JsonData updateRole(@RequestBody RoleManager role){
		role.setId(6);
		return roleAPI.updateInfo("srm", role);
	}
	@RequestMapping("/updateRoleManager")
	public JsonData updateRoleManager(@RequestBody RoleManager role) {
		return roleAPI.updateInfo("srm", role);
	}

}
