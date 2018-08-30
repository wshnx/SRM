package com.goldCup.common.utils;

public enum LoginState {
	NonName,//用户名不存在
	BadPassword,//密码错误
	Success,//成功
	NonAuthority,//无操作权
	ServerFail,//服务器处理异常
	ConnectFail//网络连接失败
}

