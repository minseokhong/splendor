package com.rng.splendor.db.dto;

import java.util.Date;

public class ChatLog {
	
	private int chat_num;
	private String chat_sender;
	private Date chat_send_date;
	private String chat_content;
	
	public int getChat_num() {
		return chat_num;
	}
	public void setChat_num(int chat_num) {
		this.chat_num = chat_num;
	}
	public String getChat_sender() {
		return chat_sender;
	}
	public void setChat_sender(String chat_sender) {
		this.chat_sender = chat_sender;
	}
	public Date getChat_send_date() {
		return chat_send_date;
	}
	public void setChat_send_date(Date chat_send_date) {
		this.chat_send_date = chat_send_date;
	}
	public String getChat_content() {
		return chat_content;
	}
	public void setChat_content(String chat_content) {
		this.chat_content = chat_content;
	}
	
	@Override
	public String toString() {
		return "chat_log [chat_num=" + chat_num + ", chat_sender=" + chat_sender + ", chat_send_date=" + chat_send_date
				+ ", chat_content=" + chat_content + "]";
	}
	
}
