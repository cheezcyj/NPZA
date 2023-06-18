package com.pcwk.ehr.user.domain;

public enum Level {
//사용자 레벨은 : BASIC,SILVER,GOLD
	
	GOLD(3,null),SILVER(2,GOLD),BASIC(1,SILVER); //3개 Enum Object
	
	private final int value;
	private final Level next;//다음 Level
	
	
	Level(int value,Level next){ //생성자
		this.value = value;
		this.next  = next;
	}
	
	public Level nextLevel() {
		return this.next;
	}
	
	
	//값을 자져 오는 메서드
	public int intValue() {
		return value;
	}
	
	
	//값으로 부터 Level 오브젝트를 가져오는 static 메서드
	public static Level valueOf(int value) {
		switch(value){
		case 1: return BASIC;
		case 2: return SILVER;
		case 3: return GOLD;
		default:
			throw new AssertionError("Unknown value:"+value);
		}
	}
	
}
