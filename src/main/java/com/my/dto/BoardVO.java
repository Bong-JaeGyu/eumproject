package com.my.dto;

public class BoardVO {

	private int board_num;
	private String board_writer;
	private String board_type;
	private String board_own;
	private int board_hit;
	private String board_content;
	private String board_title;
	private String board_pw;
	private String board_date;
	private String board_cate;
	private String board_tag;
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public String getBoard_type() {
		return board_type;
	}
	public void setBoard_type(String board_type) {
		this.board_type = board_type;
	}
	public String getBoard_own() {
		return board_own;
	}
	public void setBoard_own(String board_own) {
		this.board_own = board_own;
	}
	public int getBoard_hit() {
		return board_hit;
	}
	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_pw() {
		return board_pw;
	}
	public void setBoard_pw(String board_pw) {
		this.board_pw = board_pw;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public String getBoard_cate() {
		return board_cate;
	}
	public void setBoard_cate(String board_cate) {
		this.board_cate = board_cate;
	}
	public String getBoard_tag() {
		return board_tag;
	}
	public void setBoard_tag(String board_tag) {
		this.board_tag = board_tag;
	}
	@Override
	public String toString() {
		return "BoardVO [board_num=" + board_num + ", board_writer=" + board_writer + ", board_type=" + board_type
				+ ", board_own=" + board_own + ", board_hit=" + board_hit + ", board_content=" + board_content
				+ ", board_title=" + board_title + ", board_pw=" + board_pw + ", board_date=" + board_date
				+ ", board_cate=" + board_cate + ", board_tag=" + board_tag + "]";
	}
	
}
