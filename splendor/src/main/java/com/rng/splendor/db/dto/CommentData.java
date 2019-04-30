package com.rng.splendor.db.dto;

import java.util.Date;

public class CommentData {

	private int comm_b_num;
	private String comm_writer;
	private Date comm_date;
	private boolean comm_is_show;
	private int comm_like;
	private int comm_dislike;
	private String comm_content;
	
	public int getComm_b_num() {
		return comm_b_num;
	}
	public void setComm_b_num(int comm_b_num) {
		this.comm_b_num = comm_b_num;
	}
	public String getComm_writer() {
		return comm_writer;
	}
	public void setComm_writer(String comm_writer) {
		this.comm_writer = comm_writer;
	}
	public Date getComm_date() {
		return comm_date;
	}
	public void setComm_date(Date comm_date) {
		this.comm_date = comm_date;
	}
	public boolean isComm_is_show() {
		return comm_is_show;
	}
	public void setComm_is_show(boolean comm_is_show) {
		this.comm_is_show = comm_is_show;
	}
	public int getComm_like() {
		return comm_like;
	}
	public void setComm_like(int comm_like) {
		this.comm_like = comm_like;
	}
	public int getComm_dislike() {
		return comm_dislike;
	}
	public void setComm_dislike(int comm_dislike) {
		this.comm_dislike = comm_dislike;
	}
	public String getComm_content() {
		return comm_content;
	}
	public void setComm_content(String comm_content) {
		this.comm_content = comm_content;
	}
	
	@Override
	public String toString() {
		return "comment_data [comm_b_num=" + comm_b_num + ", comm_writer=" + comm_writer + ", comm_date=" + comm_date
				+ ", comm_is_show=" + comm_is_show + ", comm_like=" + comm_like + ", comm_dislike=" + comm_dislike
				+ ", comm_content=" + comm_content + "]";
	}
	
}
