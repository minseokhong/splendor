package com.rng.splendor.db.dto;

import java.util.Date;

public class GuildJoin {

	private String guildName;
	private String guildMember;
	private boolean guildIsMaster;
	private Date guildDate;
	private String guildLogo;
	private String guildComm;
	private int guildScore;
	private int guildPlay;
	private int guildWinrate;
	private int conScore;
	private int conPlay;
	private int conWinRate;
	
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
	public Date getGuildDate() {
		return guildDate;
	}
	public void setGuildDate(Date guildDate) {
		this.guildDate = guildDate;
	}
	public String getGuildLogo() {
		return guildLogo;
	}
	public void setGuildLogo(String guildLogo) {
		this.guildLogo = guildLogo;
	}
	public String getGuildComm() {
		return guildComm;
	}
	public void setGuildComm(String guildComm) {
		this.guildComm = guildComm;
	}
	public int getGuildScore() {
		return guildScore;
	}
	public void setGuildScore(int guildScore) {
		this.guildScore = guildScore;
	}
	public int getGuildPlay() {
		return guildPlay;
	}
	public void setGuildPlay(int guildPlay) {
		this.guildPlay = guildPlay;
	}
	public int getGuildWinrate() {
		return guildWinrate;
	}
	public void setGuildWinrate(int guildWinrate) {
		this.guildWinrate = guildWinrate;
	}
	public int getConScore() {
		return conScore;
	}
	public void setConScore(int conScore) {
		this.conScore = conScore;
	}
	public int getConPlay() {
		return conPlay;
	}
	public void setConPlay(int conPlay) {
		this.conPlay = conPlay;
	}
	public int getConWinRate() {
		return conWinRate;
	}
	public void setConWinRate(int conWinRate) {
		this.conWinRate = conWinRate;
	}
	@Override
	public String toString() {
		return "GuildJoin [guildName=" + guildName + ", guildMember=" + guildMember + ", guildIsMaster=" + guildIsMaster
				+ ", guildDate=" + guildDate + ", guildLogo=" + guildLogo + ", guildComm=" + guildComm + ", guildScore="
				+ guildScore + ", guildPlay=" + guildPlay + ", guildWinrate=" + guildWinrate + ", conScore=" + conScore
				+ ", conPlay=" + conPlay + ", conWinRate=" + conWinRate + "]";
	}
	
	
}
