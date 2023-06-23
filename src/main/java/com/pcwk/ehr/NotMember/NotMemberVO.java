package com.pcwk.ehr.NotMember;

public class NotMemberVO {

    private String mbti;
    private String nickname;
    private String gender;
    private String ani;

    public NotMemberVO(){}

	public NotMemberVO(String mbti, String nickname, String gender, String ani) {
		super();
		this.mbti = mbti;
		this.nickname = nickname;
		this.gender = gender;
		this.ani = ani;
	}

	// 각 필드의 getter 및 setter
    public String getMbti() {
        return mbti;
    }

    public void setMbti(String mbti) {
        this.mbti = mbti;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getani() {
        return ani;
    }

    public void setani(String ani) {
        this.ani = ani;
    }

	@Override
	public String toString() {
		return "NotMemberVO [mbti=" + mbti + ", nickname=" + nickname + ", gender=" + gender + ", ani=" + ani + "]";
	}
    
    
}
