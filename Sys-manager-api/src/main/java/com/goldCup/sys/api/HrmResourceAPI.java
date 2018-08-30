package com.goldCup.sys.api;

import com.goldCup.common.utils.JsonData;
import com.goldCup.sys.pojo.HrmResource;

public interface HrmResourceAPI extends Sys_BaseAPI<HrmResource> {

	public JsonData loadUserPage(String dataType,int pg,HrmResource res);
}
