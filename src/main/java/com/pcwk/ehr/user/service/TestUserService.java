package com.pcwk.ehr.user.service;

import java.sql.SQLException;

import com.pcwk.ehr.user.domain.UserVO;

public class TestUserService extends UserServiceImpl {
	private String id;//user_id

	public TestUserService(String id) {
		this.id = id; //예외를 발생 시킬 사용자(4번째 사용자 list(3) )
	}
	
	
	protected void upgradeLevel(UserVO user) throws Exception { 
		if(user.getUserId().equals(id)) {
			throw new TestUserServiceException("TestUserService.upgradeLevel:"+user.getUserId());
		}
		
		//UserServiceImpl에 있는 
		super.upgradeLevel(user);
	}
	
}
