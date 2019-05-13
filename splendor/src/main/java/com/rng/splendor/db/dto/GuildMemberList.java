package com.rng.splendor.db.dto;


public class GuildMemberList {

	private String guildName;
	private String guildMember;
	private boolean guildIsMaster;
	public String getGuildName() {
		return guildName;
	}
	public void setGuildName(String guildName) {
		this.guildName = guildName;
	}
	public String getGuildMember() {
		return guildMember;
	}
	public void setGuildMember(String guildMember) {
		this.guildMember = guildMember;
	}
	public boolean isGuildIsMaster() {
		return guildIsMaster;
	}
	public void setGuildIsMaster(boolean guildIsMaster) {
		this.guildIsMaster = guildIsMaster;
	}
	@Override
	public String toString() {
		return "GuildMemberList [guildName=" + guildName + ", guildMember=" + guildMember + ", guildIsMaster="
				+ guildIsMaster + "]";
	}
	
	
}
