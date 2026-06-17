package com.pcwk.ehr.login;

public class LoginVO {
	private String userId;// 회원id
	private String passwd;// 비번
	private String nickName;// 닉네임
	private String mbti;// 닉네임
	private String ani;// 닉네임	
	

	public String getMbti() {
		return mbti;
	}

	public void setMbti(String mbti) {
		this.mbti = mbti;
	}

	public String getAni() {
		return ani;
	}

	public void setAni(String ani) {
		this.ani = ani;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public LoginVO() {
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	@Override
	public String toString() {
		return "LoginVO [userId=" + userId + ", passwd=" + passwd + ", nickName=" + nickName + ", mbti=" + mbti
				+ ", ani=" + ani + "]";
	}


}
