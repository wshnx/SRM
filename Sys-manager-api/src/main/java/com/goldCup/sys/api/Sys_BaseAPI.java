package com.goldCup.sys.api;

import com.goldCup.common.utils.JsonData;

public interface Sys_BaseAPI<T> {
	public JsonData insertInfo(String dataType,T t);
	public JsonData updateInfo(String dataType,T t);
	public JsonData deleteInfo(String dataType,T t);
	public JsonData getInfo(String dataType,T t);
	public JsonData getListInfo(String dataType,T t);
}
