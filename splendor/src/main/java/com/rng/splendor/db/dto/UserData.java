package com.rng.splendor.db.dto;

import java.util.Date;

public class UserData {

	private String user_name;
	private String user_mail;
	private String user_password;
	private String user_image;
	private String user_introduce;
	private String API_token;
	private boolean is_admin;
	private boolean is_banned;
	private Date ban_period;
	private int ban_count; 
	private String ban_reason;
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_mail() {
		return user_mail;
	}
	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_image() {
		return user_image;
	}
	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}
	public String getUser_introduce() {
		return user_introduce;
	}
	public void setUser_introduce(String user_introduce) {
		this.user_introduce = user_introduce;
	}
	public String getAPI_token() {
		return API_token;
	}
	public void setAPI_token(String aPI_token) {
		API_token = aPI_token;
	}
	public boolean isIs_admin() {
		return is_admin;
	}
	public void setIs_admin(boolean is_admin) {
		this.is_admin = is_admin;
	}
	public boolean isIs_banned() {
		return is_banned;
	}
	public void setIs_banned(boolean is_banned) {
		this.is_banned = is_banned;
	}
	public Date getBan_period() {
		return ban_period;
	}
	public void setBan_period(Date ban_period) {
		this.ban_period = ban_period;
	}
	public int getBan_count() {
		return ban_count;
	}
	public void setBan_count(int ban_count) {
		this.ban_count = ban_count;
	}
	public String getBan_reason() {
		return ban_reason;
	}
	public void setBan_reason(String ban_reason) {
		this.ban_reason = ban_reason;
	}
	
	@Override
	public String toString() {
		return "UserData [user_name=" + user_name + ", user_mail=" + user_mail + ", user_password=" + user_password
				+ ", user_image=" + user_image + ", user_introduce=" + user_introduce + ", API_token=" + API_token
				+ ", is_admin=" + is_admin + ", is_banned=" + is_banned + ", ban_period=" + ban_period + ", ban_count="
				+ ban_count + ", ban_reason=" + ban_reason + "]";
	}
}
