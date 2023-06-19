package com.pcwk.ehr.NotMember;

public class NotMemberVO {

    private String mbti;
    private String nickname;
    private String gender;
    private String ani;

    // 생성자, getter 및 setter 생략

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

    public String getZodiac() {
        return ani;
    }

    public void setZodiac(String zodiac) {
        this.ani = zodiac;
    }

	@Override
	public String toString() {
		return "NotMemberVO [mbti=" + mbti + ", nickname=" + nickname + ", gender=" + gender + ", ani=" + ani
				+ ", toString()=" + super.toString() + "]";
	}
    
    
}
