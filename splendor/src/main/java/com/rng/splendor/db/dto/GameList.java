package com.rng.splendor.db.dto;

import java.util.Date;

public class GameList {

	private int game_num;
	private String game_type;
	private  Date game_start_date;
	private Date game_end_date;
	
	public int getGame_num() {
		return game_num;
	}
	public void setGame_num(int game_num) {
		this.game_num = game_num;
	}
	public String getGame_type() {
		return game_type;
	}
	public void setGame_type(String game_type) {
		this.game_type = game_type;
	}
	public Date getGame_start_date() {
		return game_start_date;
	}
	public void setGame_start_date(Date game_start_date) {
		this.game_start_date = game_start_date;
	}
	public Date getGame_end_date() {
		return game_end_date;
	}
	public void setGame_end_date(Date game_end_date) {
		this.game_end_date = game_end_date;
	}
	
	@Override
	public String toString() {
		return "game_list [game_num=" + game_num + ", game_type=" + game_type + ", game_start_date=" + game_start_date
				+ ", game_end_date=" + game_end_date + "]";
	}
	
	
}
