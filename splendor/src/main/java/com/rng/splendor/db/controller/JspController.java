package com.rng.splendor.db.controller;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.rng.splendor.db.dto.BoardData;
import com.rng.splendor.db.dto.UserData;
import com.rng.splendor.db.service.BoardService;
import com.rng.splendor.db.service.TestService;

import com.rng.splendor.db.service.UserService;

@Controller
@SessionAttributes("user")
public class JspController {
	
	@Autowired
	TestService service;
	
	@Autowired
	BoardService BoardService;
	
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

	
//	@RequestMapping("/joinTest")
//	public String joinTest(@RequestParam String id, 
//			@RequestParam String pw) {
//		System.out.println("여기 옴");
//		Test user = new Test();
//		user.setId(id);
//		user.setPw(pw);
//		System.out.println(id);
//		System.out.println(pw);
//		service.joinTest(user);
//		return "join";
//	}

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
	
	@RequestMapping(value="/join")
	public String join() throws Exception{
		return "join";
	}
	
	@RequestMapping(value="/join2")
	@ResponseBody
	public String join2(String userEmail, String userPw, String userPwC, String nickName) throws Exception {
		UserData userData = new UserData();
		System.out.println(userService.selectOneUser(nickName));
		if(userService.selectOneUser(nickName) == null) {
			if(userPw.equals(userPwC)) {
				System.out.println("성공~!ㄴ");
				userData.setUser_mail(userEmail);
				userData.setUser_password(userPw);
				userData.setUser_name(nickName);
				userService.insertUser(userData);
				System.out.println(userData);
				return "true";
			} else {
				System.out.println("패스유ㅝ드 틀림");
				return "pwFalse";
			}
		} else {
			return "nickFalse";
		}
	}

	@RequestMapping(value="/test")
	@ResponseBody
	public String test(String userId, String userPw, Model model) throws Exception{
		if(userService.idCheck(userId) == null) {
			return "false";
		} else if(userService.idCheck(userId).getUser_mail().equals(userId)
				&& userService.idCheck(userId).getUser_password().equals(userPw)) {
			model.addAttribute("user", userService.idCheck(userId));
			System.out.println("true");
			return "true";
		} else {
			return "false";
		}
		
	}
	
	@RequestMapping(value="/logoutForm")
	public String logout(SessionStatus session) {
		System.out.println("들어왔니");
		session.setComplete();
		return "redirect:/index";
	}
	
	@RequestMapping(value="/testView")
	public String testView() {
		return "test";
	}
	
	@RequestMapping(value="/joinView")
	public String joinView() {
		return "login";
	}

	@RequestMapping(value="/writeform")
	public String writeform() throws Exception{
		return "writeform";
	}
	
	@RequestMapping(value="/writeform2")
	@ResponseBody
	public String writeform(@ModelAttribute("boardData") BoardData boardData, Model model) throws Exception{
		
		BoardService.insertBoard(boardData);
		return "true";
	}
	
	@RequestMapping(value="/clicktopost")
	public String clicktopost() throws Exception{
		return "clicktopost";
	}

	@RequestMapping(value="/create-guild")
	public String create_guild() throws Exception{
		return "create-guild";
	}

	@RequestMapping(value="/modification")
	public String modification() throws Exception{
		return "modification";
	}

	@RequestMapping(value="/admin")
	public String amdin() throws Exception{
		return "admin";
	}

	@RequestMapping(value="/find_user_info")
	public String find_user_info() throws Exception{
		return "find_user_info";
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
