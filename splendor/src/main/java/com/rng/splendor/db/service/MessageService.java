package com.rng.splendor.db.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.rng.splendor.db.dto.MessageLog;
import com.rng.splendor.db.mapper.MessageMapper;

public class MessageService {
	
	@Autowired
	MessageMapper messMapper;
	
	public void sendMessage() {
		
	}

}
