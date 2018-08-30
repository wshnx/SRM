package com.goldCup.sys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goldCup.common.utils.JsonData;
import com.goldCup.sys.api.HrmSubCompanyAPI;
import com.goldCup.sys.dao.HrmSubCompanyMapper;
import com.goldCup.sys.pojo.HrmSubCompany;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class HrmSubCompanyService implements HrmSubCompanyAPI {
	@Autowired
	private HrmSubCompanyMapper hrmCompMapper;

	@Override
	public JsonData insertInfo(String dataType,HrmSubCompany t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JsonData updateInfo(String dataType,HrmSubCompany t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JsonData deleteInfo(String dataType,HrmSubCompany t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JsonData getInfo(String dataType,HrmSubCompany t) {
		return null;
	}

	@Override
	public JsonData getListInfo(String dataType,HrmSubCompany t) {
		// TODO Auto-generated method stub
		try {
			List<HrmSubCompany> list = hrmCompMapper.getListInfo(t);
			return JsonData.success().add("list", list);
		} catch (Exception e) {
			return JsonData.fail();
		}
	}

}
