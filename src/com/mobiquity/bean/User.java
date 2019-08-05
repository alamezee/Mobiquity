package com.mobiquity.bean;


/**
 * Bean Class for User
 */


public class User {
	//Field Names
	private String name, email, mobile, adminlevel, newpassword;
	private boolean approval;
	
	//All Getters and Setters
	public boolean isApproval() {
		return approval;
	}
	public void setApproval(boolean approval) {
		this.approval = approval;
	}
	public void setUserName( String name) {
		this.name=name;
		
	}
	public String getUserName() {
		return name;
	}
	
	public void setEmail( String email) {
		this.email=email;
		
	}
	public String getEmail() {
		return email;
	}
	
	public void setMobile( String mobile) {
		this.mobile=mobile;
		
	}
	public String getMobile() {
		return mobile;
	}
	
	public void setLevel( String lvl) {
		this.adminlevel=lvl;
		
	}
	public String getLevel() {
		return adminlevel;
	}
	
	public void setPassword( String pass) {
		this.newpassword=pass;
		
	}
	public String getPassword() {
		return newpassword;
	}

}
