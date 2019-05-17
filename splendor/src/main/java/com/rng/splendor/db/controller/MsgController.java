package com.rng.splendor.db.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.messaging.simp.annotation.SendToUser;
import org.springframework.stereotype.Controller;

import com.rng.splendor.db.dto.MessageLog;
import com.rng.splendor.db.service.MessageService;

@Controller
public class MsgController {
	
	// @MessageMapping, @SubscribeMapping은 클라이언트로부터 수신 시 메시지를 전송하는 반면
	// SimpMessagingTemplate은 서버가 아무때나 메시지를 전송 가능하다.
	@Autowired
	private SimpMessagingTemplate msgTemplate;
	
	@Autowired
	private MessageService msgService;
	
	@MessageMapping("/test")// 클라이언트가 해당 경로로 요청 보내면 받는 mapping 기능
	@SendTo("/alert")// 해당 경로를 수신(구독)하고있는 모든 유저에게 전송
	public MessageLog test(MessageLog message) throws Exception {
		return message;
	}
	
	@MessageMapping("/sendMessage")
	@SendToUser
	public void sendMessage(MessageLog message) throws Exception {
		System.out.println(message);
		msgService.sendMessage(message);
		msgTemplate.convertAndSend("/alert/" + message.getMess_receiver(), message);
	}
	
	
	
}
