package com.rng.splendor.db.mapper;

import java.util.List;

import com.rng.splendor.db.dto.MessageLog;

public interface MessageMapper {
	
	public void insertMessage(MessageLog mess);
	public List<MessageLog> selectAll();
	
}
