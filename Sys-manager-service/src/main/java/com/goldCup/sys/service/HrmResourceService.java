package com.goldCup.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.goldCup.common.utils.JsonData;
import com.goldCup.common.utils.LoginState;
import com.goldCup.common.utils.MD5Util;
import com.goldCup.sys.api.HrmResourceAPI;
import com.goldCup.sys.dao.HrmResourceMapper;
import com.goldCup.sys.pojo.HrmResource;

import lombok.extern.slf4j.Slf4j;
@Service
@Slf4j
public class HrmResourceService implements HrmResourceAPI {
	@Autowired
	private HrmResourceMapper hrmMaper;
	
	@Override
	public JsonData insertInfo(String dataType,HrmResource t) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	@Transactional(propagation = Propagation.NESTED, timeout = 1000, isolation = Isolation.READ_COMMITTED, rollbackFor = Exception.class)

	public JsonData updateInfo(String dataType,HrmResource t) {
		try {
			int result = hrmMaper.updateInfo(t);
			return JsonData.success().add("num", result);
		} catch (Exception e) {
			return JsonData.fail();
		}
	}
	@Override
	public JsonData deleteInfo(String dataType,HrmResource t) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public JsonData getInfo(String dataType,HrmResource t) {
		HrmResource res;
		try {
			res =  hrmMaper.getInfo(t);
			
		} catch (Exception e) {
			return JsonData.fail().add("res", e.getMessage());
		}
		LoginState state = getLoginState(res,t.getPassword().trim());
		if(state == LoginState.Success) {
			return JsonData.success().add("hrmresource", res).add("login", state);
		}
		else {
			return JsonData.fail().add("login", state);
		}
		
	}
	public LoginState getLoginState(HrmResource res,String password) {
		if(res == null) {
			return LoginState.NonName;
		}
		if(!res.isIssrm()) {
			return LoginState.NonAuthority;
		}
		String pass = MD5Util.encodeByMD5(password.trim(),true);
		if (pass.equals(res.getPassword().trim())) {
			return LoginState.Success;
		}
		else {
			return LoginState.BadPassword;
		}
	}
	@Override
	public JsonData getListInfo(String dataType,HrmResource t) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public JsonData loadUserPage(String dataType,int pg, HrmResource res) {
		try {
			PageHelper.startPage(pg, 8);
			List<HrmResource> list = hrmMaper.getListInfo(res);
			PageInfo info = new PageInfo(list,3);
			return JsonData.success().add("list", info);
		} catch (Exception e) {
			return JsonData.fail();
		}
	}

}
