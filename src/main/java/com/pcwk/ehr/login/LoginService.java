package com.pcwk.ehr.login;

import java.sql.SQLException;
import java.util.List;



public interface LoginService {

	/**
	 * 로그인
	 * 
	 * @param user
	 * @return 10(id없음)/20(비번오류)/30(성공)
	 * @throws SQLException
	 */
	public int doLogin(LoginVO user) throws SQLException;

	/**
	 * 
	 * @param user
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	LoginVO get(LoginVO user) throws SQLException, ClassNotFoundException;

	public int deleteUserData(String userId) throws SQLException;
	

}
