package com.goldCup.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goldCup.common.utils.JsonData;
import com.goldCup.sys.api.UserRoleAPI;
import com.goldCup.sys.dao.UserRoleMapper;
import com.goldCup.sys.pojo.UserRole;

import lombok.extern.slf4j.Slf4j;
@Service
@Slf4j
public class UserRoleService implements UserRoleAPI {

	@Autowired
	UserRoleMapper userMapper;
	@Override
	public JsonData insertInfo(String dataType, UserRole t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JsonData updateInfo(String dataType, UserRole t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JsonData deleteInfo(String dataType, UserRole t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JsonData getInfo(String dataType, UserRole t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JsonData getListInfo(String dataType, UserRole t) {
		try {
			List<UserRole> list = userMapper.getListInfo(t);
			return JsonData.success().add("list", list);
		} catch (Exception e) {
            return JsonData.fail();
		}
	}

}
