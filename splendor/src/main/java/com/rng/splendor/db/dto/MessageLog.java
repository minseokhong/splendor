package com.rng.splendor.db.dto;

import java.util.Date;

public class MessageLog {

	private int mess_num;
	private String mess_sender;
	private String mess_sender_image;
	private String mess_receiver;
	private Date mess_send_date;
	private boolean mess_is_show;
	private boolean mess_is_sender_delete;
	private boolean mess_is_receiver_delete;
	private String mess_content;
	
	public int getMess_num() {
		return mess_num;
	}
	public void setMess_num(int mess_num) {
		this.mess_num = mess_num;
	}
	public String getMess_sender() {
		return mess_sender;
	}
	public void setMess_sender(String mess_sender) {
		this.mess_sender = mess_sender;
	}
	public String getMess_sender_image() {
		return mess_sender_image;
	}
	public void setMess_sender_image(String mess_sender_image) {
		this.mess_sender_image = mess_sender_image;
	}
	public String getMess_receiver() {
		return mess_receiver;
	}
	public void setMess_receiver(String mess_receiver) {
		this.mess_receiver = mess_receiver;
	}
	public Date getMess_send_date() {
		return mess_send_date;
	}
	public void setMess_send_date(Date mess_send_date) {
		this.mess_send_date = mess_send_date;
	}
	public boolean isMess_is_show() {
		return mess_is_show;
	}
	public void setMess_is_show(boolean mess_is_show) {
		this.mess_is_show = mess_is_show;
	}
	public boolean isMess_is_sender_delete() {
		return mess_is_sender_delete;
	}
	public void setMess_is_sender_delete(boolean mess_is_sender_delete) {
		this.mess_is_sender_delete = mess_is_sender_delete;
	}
	public boolean isMess_is_receiver_delete() {
		return mess_is_receiver_delete;
	}
	public void setMess_is_receiver_delete(boolean mess_is_receiver_delete) {
		this.mess_is_receiver_delete = mess_is_receiver_delete;
	}
	public String getMess_content() {
		return mess_content;
	}
	public void setMess_content(String mess_content) {
		this.mess_content = mess_content;
	}
	
	@Override
	public String toString() {
		return "MessageLog [mess_num=" + mess_num + ", mess_sender=" + mess_sender + ", mess_sender_image="
				+ mess_sender_image + ", mess_receiver=" + mess_receiver + ", mess_send_date=" + mess_send_date
				+ ", mess_is_show=" + mess_is_show + ", mess_is_sender_delete=" + mess_is_sender_delete
				+ ", mess_is_receiver_delete=" + mess_is_receiver_delete + ", mess_content=" + mess_content + "]";
	}
}
