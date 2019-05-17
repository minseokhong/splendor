package com.rng.splendor.db.dto;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class BoardData {

	private int board_num; //게시물 번호
	private String board_type; //게시물타입
	private String board_writer; //게시물 작성자
	private Date board_date; //게시물 작성일자
	private boolean board_is_show; // 게시물 공개여부
	private String board_title; //게시물 제목
	private int board_count; // 게시물 조회수
	private int board_like; // 게시물 좋아요 수
	private int board_dislike; // 게시물 싫어요 수
	private String board_content; // 게시물 내용
	
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
