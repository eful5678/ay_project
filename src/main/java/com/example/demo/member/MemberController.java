package com.example.demo.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	
	@RequestMapping(value="/member/joinForm")
	public void joinForm() {
	}
	
	
	
	
	
}
