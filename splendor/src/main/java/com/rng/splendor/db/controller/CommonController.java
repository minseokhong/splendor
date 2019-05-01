package com.rng.splendor.db.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.rng.splendor.db.service.UserService;

@RestController
public class CommonController {

	@Autowired
	UserService userService;
	
//	@RequestMapping("/")
//	public String root_test() throws Exception {
//		return "Hello Root(/)";
//	}
	
	@RequestMapping("/emailCheck")
	public String emailCheck(String email) {
		System.out.println(email);
		if(userService.idCheck(email) != null) {
			System.out.println("중복");
			return "true"; //이메일이 이미 db에 존재
		}
		return "false"; //이메일 존재 X
	}
	
	@RequestMapping("/nicknameCheck")
	public String nicknameCheck(String nickname){
		if(userService.selectOneUser(nickname) != null) {
			return "true"; //닉네임이 중복
		}
		return "false"; //닉네임 중복 X
	}
	
}