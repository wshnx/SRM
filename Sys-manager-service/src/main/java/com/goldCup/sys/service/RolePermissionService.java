package com.goldCup.sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goldCup.common.utils.JsonData;
import com.goldCup.sys.api.RolePermissionAPI;
import com.goldCup.sys.dao.RolePermissionMapper;
import com.goldCup.sys.pojo.RolePermission;

import lombok.extern.slf4j.Slf4j;
@Service
@Slf4j
public class RolePermissionService implements RolePermissionAPI {

	@Autowired
	private RolePermissionMapper permisMapper;
	@Override
	public JsonData insertInfo(String dataType, RolePermission t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JsonData updateInfo(String dataType, RolePermission t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JsonData deleteInfo(String dataType, RolePermission t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JsonData getInfo(String dataType, RolePermission t) {
		try {
			RolePermission list = permisMapper.getInfo(t);
			return JsonData.success().add("list", list);
		} catch (Exception e) {
			return JsonData.fail();
		}
	}

	@Override
	public JsonData getListInfo(String dataType, RolePermission t) {
		// TODO Auto-generated method stub
		return null;
	}

}
