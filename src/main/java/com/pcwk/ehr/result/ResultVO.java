package com.pcwk.ehr.result;

public class ResultVO {
	
	private String id;
	private String nick;
	private String mbtiSrc;
	private String aniSrc;
	private String mbti;
	private String ani;
	private String gender;
	private int luck_ty;
	private String luck;
	private String nmAni;
	private String nmMbti;
	private String url;
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public ResultVO () {}

	public ResultVO(String id, String nick, String mbtiSrc, String aniSrc, String mbti, String ani, int luck_ty,
			String luck, String nmAni, String nmMbti, String url) {
		super();
		this.id = id;
		this.nick = nick;
		this.mbtiSrc = mbtiSrc;
		this.aniSrc = aniSrc;
		this.mbti = mbti;
		this.ani = ani;
		this.luck_ty = luck_ty;
		this.luck = luck;
		this.nmAni = nmAni;
		this.nmMbti = nmMbti;
		this.url = url;
	}

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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getMbtiSrc() {
		return mbtiSrc;
	}

	public void setMbtiSrc(String mbtiSrc) {
		this.mbtiSrc = mbtiSrc;
	}

	public String getAniSrc() {
		return aniSrc;
	}

	public void setAniSrc(String aniSrc) {
		this.aniSrc = aniSrc;
	}

	public int getLuck_ty() {
		return luck_ty;
	}

	public void setLuck_ty(int luck_ty) {
		this.luck_ty = luck_ty;
	}

	public String getLuck() {
		return luck;
	}

	public void setLuck(String luck) {
		this.luck = luck;
	}

	public String getNmAni() {
		return nmAni;
	}

	public void setNmAni(String nmAni) {
		this.nmAni = nmAni;
	}

	public String getNmMbti() {
		return nmMbti;
	}

	public void setNmMbti(String nmMbti) {
		this.nmMbti = nmMbti;
	}

	@Override
	public String toString() {
		return "ResultVO [id=" + id + ", nick=" + nick + ", mbtiSrc=" + mbtiSrc + ", aniSrc=" + aniSrc + ", mbti="
				+ mbti + ", ani=" + ani + ", gender=" + gender + ", luck_ty=" + luck_ty + ", luck=" + luck + ", nmAni="
				+ nmAni + ", nmMbti=" + nmMbti + ", url=" + url + "]";
	}



}
