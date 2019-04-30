package com.rng.splendor.db.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rng.splendor.db.dto.Test;
import com.rng.splendor.db.service.TestService;
import com.rng.splendor.db.service.UserService;

@Controller
public class JspController {
	
	@Autowired
	TestService service;
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/index")
	public String index() throws Exception{
		return "index";
	}
	
	@RequestMapping(value="/about-us")
	public String about_us() throws Exception{
		return "about-us";
	}
	
	@RequestMapping(value="/나문의")
	public String 나문의() throws Exception{
		return "나문의";
	}

	@RequestMapping(value="/자유게시판")
	public String 자유게시판() throws Exception{
		return "자유게시판";
	}

	@RequestMapping(value="/BBS")
	public String BBS() throws Exception{
		return "BBS";
	}

	@RequestMapping(value="/contact")
	public String contact() throws Exception{
		return "contact";
	}

	@RequestMapping(value="/elements")
	public String elements() throws Exception{
		return "elements";
	}

	@RequestMapping(value="/freeboard")
	public String freeboard() throws Exception{
		return "freeboard";
	}

	@RequestMapping(value="/games")
	public String games() throws Exception{
		return "games";
	}

	@RequestMapping(value="/guild")
	public String guild() throws Exception{
		return "guild";
	}

	@RequestMapping(value="/join")
	public String join() throws Exception{
		return "join";
	}
	
	@RequestMapping("/joinTest")
	public String joinTest(@RequestParam String id, 
			@RequestParam String pw) {
		System.out.println("여기 옴");
		Test user = new Test();
		user.setId(id);
		user.setPw(pw);
		System.out.println(id);
		System.out.println(pw);
		service.joinTest(user);
		return "join";
	}

	@RequestMapping(value="/login")
	public String login() throws Exception{
		return "login";
	}

	@RequestMapping(value="/profile")
	public String profile() throws Exception{
		return "profile";
	}

	@RequestMapping(value="/screenshot")
	public String screenshot() throws Exception{
		return "screenshot";
	}

	@RequestMapping(value="/single-guild")
	public String single_guild() throws Exception{
		return "single-guild";
	}

	@RequestMapping(value="/test")
	@ResponseBody
	public String test(String userId, String userPw) throws Exception{
		System.out.println(userService.selectAllUser()); 
		
		return "true";
	}
	
	@RequestMapping(value="/testView")
	public String testView() {
		return "test";
	}

	@RequestMapping(value="/writeform")
	public String writeform() throws Exception{
		return "writeform";
	}
	
	
	
	@RequestMapping("/mav")
	public ModelAndView mav() throws Exception{
		ModelAndView mav = new ModelAndView("mavSample");
		
		mav.addObject("key", "fruits");
		
		List<String> fruitList = new ArrayList<String>();

		fruitList.add("apple");
		fruitList.add("orange");
		fruitList.add("banana");
		
		mav.addObject("value", fruitList);
		mav.setViewName("test.jsp");
		
		return mav;
	}
}
