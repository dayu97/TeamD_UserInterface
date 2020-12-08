package com.Dr_Link.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/patients")
public class PatientController {

	@RequestMapping(value = "{step}")
	public String name(@PathVariable String step) {
		System.out.println("patients 컨트롤러 요청");
		return "/patients/" + step;
	}
	
}
