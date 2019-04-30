package com.my.dto;

public class UserVO {
	private String member_id;
	private String member_pw;
	private String user_name;
	private int user_age;
	private String user_birthday;
	private String user_img;
	private int mentor;
	private String join_day;
	private String login_data;
	private int login;
	private String job;
	private String career;
	private String school;
	private int grade;
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getUser_age() {
		return user_age;
	}
	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}
	public String getUser_birthday() {
		return user_birthday;
	}
	public void setUser_birthday(String user_birthday) {
		this.user_birthday = user_birthday;
	}
	public String getUser_img() {
		return user_img;
	}
	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}
	public int getMentor() {
		return mentor;
	}
	public void setMentor(int mentor) {
		this.mentor = mentor;
	}
	public String getJoin_day() {
		return join_day;
	}
	public void setJoin_day(String join_day) {
		this.join_day = join_day;
	}
	public String getLogin_data() {
		return login_data;
	}
	public void setLogin_data(String login_data) {
		this.login_data = login_data;
	}
	public int getLogin() {
		return login;
	}
	public void setLogin(int login) {
		this.login = login;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "Member [member_id=" + member_id + ", member_pw=" + member_pw + ", user_name=" + user_name
				+ ", user_age=" + user_age + ", user_birthday=" + user_birthday + ", user_img=" + user_img + ", mentor="
				+ mentor + ", join_day=" + join_day + ", login_data=" + login_data + ", login=" + login + ", job=" + job
				+ ", career=" + career + ", school=" + school + ", grade=" + grade + "]";
	}
	
}

