package model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Board {

	private int b_num;
	private String b_title;
	private String b_content;
	private String b_email;
	private Date b_reg_date;
	private String b_file;
	private String b_pass;
	private int b_readCount;
	private String b_index;
	private MultipartFile uploadFile;
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_email() {
		return b_email;
	}
	public void setB_email(String b_email) {
		this.b_email = b_email;
	}
	public Date getB_reg_date() {
		return b_reg_date;
	}
	public void setB_reg_date(Date b_reg_date) {
		this.b_reg_date = b_reg_date;
	}
	public String getB_file() {
		return b_file;
	}
	public void setB_file(String b_file) {
		this.b_file = b_file;
	}
	public String getB_pass() {
		return b_pass;
	}
	public void setB_pass(String b_pass) {
		this.b_pass = b_pass;
	}
	public int getB_readCount() {
		return b_readCount;
	}
	public void setB_readCount(int b_readCount) {
		this.b_readCount = b_readCount;
	}
	public String getB_index() {
		return b_index;
	}
	public void setB_index(String b_index) {
		this.b_index = b_index;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	@Override
	public String toString() {
		return "Board [b_num=" + b_num + ", b_title=" + b_title + ", b_content=" + b_content + ", b_email=" + b_email
				+ ", b_reg_date=" + b_reg_date + ", b_file=" + b_file + ", b_pass=" + b_pass + ", b_readCount="
				+ b_readCount + ", b_index=" + b_index + ", uploadFile=" + uploadFile + "]";
	}
	
	
	
	
	
	
	
}
