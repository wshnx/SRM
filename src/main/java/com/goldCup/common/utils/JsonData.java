package com.goldCup.common.utils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class JsonData implements Serializable{
	private static final long serialVersionUID = 7123757798295844100L;
	private int code;//状态码
	private String msg;//提示信息；
	private Map<String,Object> umap = new HashMap<String,Object>();
	public static JsonData success()
	{
		JsonData info = new JsonData();
		info.setCode(100);
		info.setMsg("ok");
		return info;
	}
	public static JsonData fail()
	{
		JsonData info = new JsonData();
		info.setCode(200);
		info.setMsg("fail");
		return info;
	}
	public JsonData add(String key,Object obj){
		this.umap.put(key, obj);
		return this;
	}
}
