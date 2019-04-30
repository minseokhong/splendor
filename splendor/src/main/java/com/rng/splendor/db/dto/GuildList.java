package com.rng.splendor.db.dto;

import java.util.Date;

public class GuildList {

	private String guild_name;
	private Date guild_date;
	private String guild_logo;
	private String guild_comm;
	private int guild_l_score;
	private int guild_l_play;
	private int guild_l_winrate;
	
	public String getGuild_name() {
		return guild_name;
	}
	public void setGuild_name(String guild_name) {
		this.guild_name = guild_name;
	}
	public Date getGuild_date() {
		return guild_date;
	}
	public void setGuild_date(Date guild_date) {
		this.guild_date = guild_date;
	}
	public String getGuild_logo() {
		return guild_logo;
	}
	public void setGuild_logo(String guild_logo) {
		this.guild_logo = guild_logo;
	}
	public String getGuild_comm() {
		return guild_comm;
	}
	public void setGuild_comm(String guild_comm) {
		this.guild_comm = guild_comm;
	}
	public int getGuild_l_score() {
		return guild_l_score;
	}
	public void setGuild_l_score(int guild_l_score) {
		this.guild_l_score = guild_l_score;
	}
	public int getGuild_l_play() {
		return guild_l_play;
	}
	public void setGuild_l_play(int guild_l_play) {
		this.guild_l_play = guild_l_play;
	}
	public int getGuild_l_winrate() {
		return guild_l_winrate;
	}
	public void setGuild_l_winrate(int guild_l_winrate) {
		this.guild_l_winrate = guild_l_winrate;
	}
	
	@Override
	public String toString() {
		return "guild_list [guild_name=" + guild_name + ", guild_date=" + guild_date + ", guild_logo=" + guild_logo
				+ ", guild_comm=" + guild_comm + ", guild_l_score=" + guild_l_score + ", guild_l_play=" + guild_l_play
				+ ", guild_l_winrate=" + guild_l_winrate + "]";
	}
}
