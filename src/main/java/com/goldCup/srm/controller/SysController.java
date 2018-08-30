package com.goldCup.srm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class SysController {
	@RequestMapping("/sysMain")
	public String sysMain() {
		return "sysMain";
	}

}
