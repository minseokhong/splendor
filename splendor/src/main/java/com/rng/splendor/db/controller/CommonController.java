package com.rng.splendor.db.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rng.splendor.db.dto.MessageLog;
import com.rng.splendor.db.dto.UserData;
import com.rng.splendor.db.service.MessageService;
import com.rng.splendor.db.service.UserService;

import net.minidev.json.JSONArray;
import net.minidev.json.JSONObject;

@RestController
@SessionAttributes("user")
public class CommonController {

	@Autowired
	UserService userService;
	
	@Autowired
	MessageService msgService;
	
//	@RequestMapping("/")
//	public String root_test() throws Exception {
//		return "Hello Root(/)";
//	}
	
	@RequestMapping("/emailCheck")
	public String emailCheck(String email) {
		if(userService.idCheck(email) != null) {
			return "true"; //이메일이 이미 db에 존재
		}
		return "false"; //이메일 존재 X
	}
	
	@RequestMapping("/nicknameCheck")
	public String nicknameCheck(String nickname) {
		if(userService.selectOneUser(nickname) != null) {
			return "true"; //닉네임이 중복
		}
		return "false"; //닉네임 중복 X
	}
	
	@RequestMapping("/apiJoin")
	public void apiJoin(String id, String email, String nickname, Model model) { //api 고유 id값을 이메일에 api에서 가져온 이메일을 비밀번호로 사용하여 저장, 닉네임은 닉네임으로 저장한다.
		UserData userData = new UserData();
		userData.setUser_mail(id);
		userData.setUser_password(email);
		userData.setUser_name(nickname);
		userService.insertUser(userData);
		model.addAttribute("user", userData);
	}
	
	@RequestMapping("/sendMessage")
	public void sendMessage(String mess_sender, String mess_receiver, String mess_content) {
		MessageLog msg = new MessageLog();
		msg.setMess_sender(mess_sender);
		msg.setMess_receiver(mess_receiver);
		msg.setMess_send_date(new Date());
		msg.setMess_content(mess_content);
		msgService.sendMessage(msg);
	}
	
	@RequestMapping("/getSenderList")
	public JSONArray getSenderList(String receiver) {
		return msgService.getSenderJSON(receiver);
	}
	
	@RequestMapping("/readMessage")
	public JSONObject readMessage(String mess_num) {
		return msgService.readMessage(mess_num);
	}
	
}