package com.jpg.hebei.vo;

import org.springframework.stereotype.Component;

@Component("userLoginInfo")
public class UserLoginInfo {
  private String username;
  private String password;
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
}
