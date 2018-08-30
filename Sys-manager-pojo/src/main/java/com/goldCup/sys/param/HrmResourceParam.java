package com.goldCup.sys.param;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import lombok.Getter;
import lombok.Setter;



@Getter
@Setter
public class HrmResourceParam {
	@NotBlank(message="用户帐号不能为空！")
	@Length(min=2,message="用户帐号最小长度必须为2个字符")
	private String loginid;
	@NotBlank(message="用户密码不能为空！")
	private String password;

}
