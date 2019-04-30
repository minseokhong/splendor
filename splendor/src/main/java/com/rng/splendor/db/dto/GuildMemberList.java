package com.rng.splendor.db.dto;


public class GuildMemberList {

	private String guild_name;
	private String guild_member;
	private boolean guild_is_master;
	
	public String getGuild_name() {
		return guild_name;
	}
	public void setGuild_name(String guild_name) {
		this.guild_name = guild_name;
	}
	public String getGuild_member() {
		return guild_member;
	}
	public void setGuild_member(String guild_member) {
		this.guild_member = guild_member;
	}
	public boolean isGuild_is_master() {
		return guild_is_master;
	}
	public void setGuild_is_master(boolean guild_is_master) {
		this.guild_is_master = guild_is_master;
	}
	
	@Override
	public String toString() {
		return "guild_member_list [guild_name=" + guild_name + ", guild_member=" + guild_member + ", guild_is_master="
				+ guild_is_master + "]";
	}
	
}
