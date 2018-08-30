package com.goldCup.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.goldCup.common.utils.JsonData;
import com.goldCup.sys.api.RoleManagerAPI;
import com.goldCup.sys.dao.RoleManagerMapper;
import com.goldCup.sys.pojo.RoleManager;

import lombok.extern.slf4j.Slf4j;
@Service
@Slf4j
public class RoleManagerService implements RoleManagerAPI {

	@Autowired
	private RoleManagerMapper roleMapper;
	@Override
	public JsonData insertInfo(String dataType, RoleManager t) {
		try {
			int result = roleMapper.insertInfo(t);
			return JsonData.success().add("role", result);
		} catch (Exception e) {
			return JsonData.fail();
		}
	}

	@Override
	public JsonData updateInfo(String dataType, RoleManager t) {
		try {
			int result = roleMapper.updateInfo(t);
			return JsonData.success().add("role", result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return JsonData.fail();
		}

	}

	@Override
	public JsonData deleteInfo(String dataType, RoleManager t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JsonData getInfo(String dataType, RoleManager t) {
		try {
			 RoleManager info = roleMapper.getInfo(t);
			return JsonData.success().add("role", info);
		} catch (Exception e) {
			return JsonData.fail();
		}
	}

	@Override
	public JsonData getListInfo(String dataType, RoleManager t) {		
		try {
			PageHelper.startPage(t.getCount(), 6);
			List<RoleManager> list = roleMapper.getListInfo(t);
			PageInfo info = new PageInfo(list,3);
			return JsonData.success().add("list", info);
		} catch (Exception e) {
			return JsonData.fail();
		}
	}

}
