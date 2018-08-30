package com.goldCup.srm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goldCup.common.utils.JsonData;
import com.goldCup.sys.api.HrmSubCompanyAPI;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HrmSubCompanyController {
	@Autowired
	private HrmSubCompanyAPI hrmCompAPI;
	@RequestMapping("/loadCompanayInfo")
	@ResponseBody
	public JsonData loadCompanayInfo(){
//		DataSourceContextHolder.setDbType("oadb");
		return hrmCompAPI.getListInfo("oa",null);
	}

}
