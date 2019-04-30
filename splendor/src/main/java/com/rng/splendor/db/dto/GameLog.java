package com.rng.splendor.db.dto;

public class GameLog {

	private int game_num;
	private String game_player;
	private int game_score;
	
	public int getGame_num() {
		return game_num;
	}
	public void setGame_num(int game_num) {
		this.game_num = game_num;
	}
	public String getGame_player() {
		return game_player;
	}
	public void setGame_player(String game_player) {
		this.game_player = game_player;
	}
	public int getGame_score() {
		return game_score;
	}
	public void setGame_score(int game_score) {
		this.game_score = game_score;
	}
	
	@Override
	public String toString() {
		return "game_log [game_num=" + game_num + ", game_player=" + game_player + ", game_score=" + game_score + "]";
	}
}
