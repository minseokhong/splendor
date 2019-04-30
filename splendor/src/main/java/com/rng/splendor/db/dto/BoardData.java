package com.rng.splendor.db.dto;

import java.util.Date;

public class BoardData {

	private int board_num;
	private String board_type;
	private String board_writer;
	private Date board_date;
	private boolean board_is_show;
	private String board_title;
	private int board_count;
	private int board_like;
	private int board_dislike;
	private String board_content;
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBoard_type() {
		return board_type;
	}
	public void setBoard_type(String board_type) {
		this.board_type = board_type;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public Date getBoard_date() {
		return board_date;
	}
	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}
	public boolean isBoard_is_show() {
		return board_is_show;
	}
	public void setBoard_is_show(boolean board_is_show) {
		this.board_is_show = board_is_show;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public int getBoard_count() {
		return board_count;
	}
	public void setBoard_count(int board_count) {
		this.board_count = board_count;
	}
	public int getBoard_like() {
		return board_like;
	}
	public void setBoard_like(int board_like) {
		this.board_like = board_like;
	}
	public int getBoard_dislike() {
		return board_dislike;
	}
	public void setBoard_dislike(int board_dislike) {
		this.board_dislike = board_dislike;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	
	@Override
	public String toString() {
		return "board_data [board_num=" + board_num + ", board_type=" + board_type + ", board_writer=" + board_writer
				+ ", board_date=" + board_date + ", board_is_show=" + board_is_show + ", board_title=" + board_title
				+ ", board_count=" + board_count + ", board_like=" + board_like + ", board_dislike=" + board_dislike
				+ ", board_content=" + board_content + "]";
	}
	
}
