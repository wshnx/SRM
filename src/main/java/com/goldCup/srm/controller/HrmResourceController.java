package com.goldCup.srm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goldCup.common.utils.JsonData;
import com.goldCup.sys.api.HrmResourceAPI;
import com.goldCup.sys.pojo.HrmDepartment;
import com.goldCup.sys.pojo.HrmResource;
import com.goldCup.sys.pojo.HrmSubCompany;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HrmResourceController {
	@Autowired
	private HrmResourceAPI hrmapi;

	@RequestMapping("/login")
	@ResponseBody
	public JsonData login(@RequestBody HrmResource hrmresource) {
		return hrmapi.getInfo("oa",hrmresource);
	}
	@RequestMapping("/loadUserPage")
	@ResponseBody
	public JsonData loadUserManagerInfo(@RequestParam("pg")Integer pg,@RequestParam("condition")String condition,@RequestParam("type")int type){
		String[] arr = condition.split(",");
		HrmResource res = new HrmResource();
	    HrmDepartment dept = new HrmDepartment();	    
	    HrmSubCompany com = new HrmSubCompany();
	    int comp = Integer.parseInt(arr[0]);
	    if(comp != 0 ){
	    	com.setId(comp);
	    	res.setHrmSubCompany(com);
	    }
	    int deptId = Integer.parseInt(arr[1]);
	    if(deptId != 0){
	    	dept.setId(deptId);
	    	res.setHrmDepartment(dept);
	    }
	    String lastname = arr[2].trim();
	    if(lastname !="0"){
	    	res.setLastname(lastname);
	    }
	    res.setColumns(" ID,loginid,lastname,departmentname,departmentid,subcompanyid1,issrm ");
		return hrmapi.loadUserPage("oa",pg, res);
	}
	@RequestMapping("/userChangeInfo")
	@ResponseBody
	public JsonData userChangeInfo(@RequestBody HrmResource res){
		return hrmapi.updateInfo("oa",res);
	}

}
