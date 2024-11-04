package com.estore.model;

public class User {

	// Field Declaration
	public int uid;
	public String email;
	public String password;
	public String name;

	// Generate Default Constructor
	public User() {

	}

	 //Generate parameterised constructor
	public User(int uid, String email, String password, String name) {
		
		this.uid = uid;
		this.email = email;
		this.password = password;
		this.name = name;
	}
	
	//Generate getter and setter

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	//Generate toString
	@Override
	public String toString() {
		return "User [uid=" + uid + ", email=" + email + ", password=" + password + ", name=" + name + "]";
	}
	
	


	

}
