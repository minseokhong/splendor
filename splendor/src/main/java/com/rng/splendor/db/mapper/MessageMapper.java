package com.rng.splendor.db.mapper;

import java.util.HashMap;
import java.util.List;

import com.rng.splendor.db.dto.MessageLog;

public interface MessageMapper {
	
	public void insertMessage(MessageLog messageLog);
	public void readMessage(String mess_num);
	public MessageLog selectOneMessage(String mess_num);
	public List<MessageLog> messageList(String receiver);
	public List<HashMap<String, String>> senderList(String receiver);
	public List<MessageLog> selectAll();
}
