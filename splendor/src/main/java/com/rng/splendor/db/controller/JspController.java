package com.rng.splendor.db.controller;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.rng.splendor.db.dto.BoardData;
import com.rng.splendor.db.dto.GuildList;
import com.rng.splendor.db.dto.UserData;
import com.rng.splendor.db.service.BoardService;
import com.rng.splendor.db.service.GuildListService;
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
	
	@Autowired
	GuildListService guildListService;
	
	@RequestMapping("/index")
	public String index(HttpServletResponse response) throws Exception{
		response.addCookie(new Cookie("location", "index"));
		return "index";
	}
	
	@RequestMapping(value="/about-us")
	public String about_us(HttpServletResponse response) throws Exception{
		response.addCookie(new Cookie("location", "about-us"));
		return "about-us";
	}
	
	@RequestMapping(value="/나문의")
	public String 나문의(HttpServletResponse response) throws Exception{
		response.addCookie(new Cookie("location", "response"));
		return "나문의";
	}

	@RequestMapping(value="/자유게시판")
	public String 자유게시판(HttpServletResponse response) throws Exception{
		response.addCookie(new Cookie("location", "자유게시판"));
		return "자유게시판";
	}

	@RequestMapping(value="/BBS")
	public String BBS(HttpServletResponse response) throws Exception{
		response.addCookie(new Cookie("location", "BBS"));
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

//	@RequestMapping(value="/freeboard")
//	public String freeboard() throws Exception{
//		return "freeboard";
//	}

	@RequestMapping(value="/games")
	public String games() throws Exception{
		return "games";
	}

//	@RequestMapping(value="/guild")
//	public String guild(HttpServletResponse response) throws Exception{
//		response.addCookie(new Cookie("location", "guild"));
////		for(GuildList data : guildListService.selectAll()) {
////			System.out.println(data.getGuildName());
////		}
//		System.out.println(guildListService.selectAll());
////		System.out.println(guildListService.selectAll().toString());
//		return "guild";
//	}
	
	@RequestMapping(value="/guild")
	public ModelAndView guild(HttpServletResponse response) throws Exception{
		response.addCookie(new Cookie("location", "guild"));
		ModelAndView mav = new ModelAndView();
		mav.addObject("guildList", guildListService.selectAll());
		mav.setViewName("guild");
		return mav;
	}
	
	@RequestMapping(value="/single-guild")
	public ModelAndView single_guild(HttpServletResponse response, String guildName) throws Exception{
		response.addCookie(new Cookie("location", "single-guild?guildName=" + URLEncoder.encode(guildName, "UTF-8")));
		ModelAndView mav = new ModelAndView();
		System.out.println(guildListService.selectOne(guildName));
		mav.addObject("guildInfo", guildListService.selectOne(guildName));
		mav.setViewName("single-guild");
		return mav;
	}
	
	@RequestMapping
	public void guildJoinForm(Model model) throws Exception {
		model.g
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
	public String screenshot(HttpServletResponse response) throws Exception{
		response.addCookie(new Cookie("location", "screenshot"));
		return "screenshot";
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
			return "true";
		} else {
			return "false";
		}
		
	}
	
	@RequestMapping(value="/createGuildForm")
	@ResponseBody
	public String createGuildForm(String guildName, String guildComm, String guildLogo, 
		int conScore, int conPlay, int conWinRate) {
		GuildList guildList = new  GuildList();
		guildList.setGuildName(guildName);
		guildList.setGuildDate(new Date());
		guildList.setGuildComm(guildComm);
		guildList.setGuildLogo(guildLogo);
		guildList.setConScore(conScore);
		guildList.setConPlay(conPlay);
		guildList.setConWinRate(conWinRate);
		guildListService.insertGuild(guildList);
		System.out.println("들어갔ㄴ지?");
		return "true";
		
	}
	
	@RequestMapping(value="/logoutForm")
	public String logout(SessionStatus session, 
			@CookieValue(value="location", required=false) Cookie location) {
		session.setComplete();
		if(location != null) {
//			return location.getValue();
			return "redirect:/" + location.getValue();
		}
		return "redirect:/index";
	}
	
	@RequestMapping(value="/testView")
	public String testView(@CookieValue(value="location", required=false) Cookie location) throws Exception {
		if(location != null) {
			System.out.println();
			return "redirect:/" + location.getValue();
		}
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
	public String writeform(String boardTitle, String boardContent) throws Exception{
		
		BoardData boardData = new BoardData();
		boardData.setBoard_title(boardTitle);
		boardData.setBoard_content(boardContent);
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

	@RequestMapping(value="/naver-callback")
	public String naver_callback() throws Exception{
		return "naver-callback";
	}
}
