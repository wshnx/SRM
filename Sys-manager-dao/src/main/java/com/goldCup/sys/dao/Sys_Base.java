package com.goldCup.sys.dao;

import java.util.List;

public interface Sys_Base<T> {
	public int insertInfo(T t);
	public int updateInfo(T t);
	public int deleteInfo(T t);
	public T getInfo(T t);
	public List<T> getListInfo(T t);
}
