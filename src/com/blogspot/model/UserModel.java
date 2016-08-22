package com.blogspot.model;

public class UserModel {
	private int userId;
	private String password;
	
	public UserModel() {
		this(0000,"");
	}

	public UserModel(int userId, String password) {
		this.userId = userId;
		this.password = password;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
