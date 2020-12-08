package com.Dr_Link.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Dr_Link.service.PatientService;

@Controller
public class MainController {
	

	@RequestMapping(value = "{step}")
	public String name(@PathVariable String step) {
		System.out.println("main 컨트롤러 요청");
		return step;
	}
	@RequestMapping(value="login")
	public String login() {
		System.out.println("로그인페이지이동");
		return "login";
	}
	
	@RequestMapping(value = "pharmacy-details")
	public String name() {
		System.out.println("페이지이동");
		return "doctor/appointments"; 
	}
	
	
}
