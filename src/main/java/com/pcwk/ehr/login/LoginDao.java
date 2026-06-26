 package com.pcwk.ehr.login;

import java.sql.SQLException;
import java.util.List;


public interface LoginDao {
	
	/**
	 * 비번 체크
	 * @param user
	 * @return 1(id있음)/0(id없음)
	 * @throws SQLException
	 */
	public int passCheck(LoginVO user)throws SQLException;
	
	/**
	 * 아이디 체크
	 * @param user
	 * @return 1(id있음)/0(id없음)
	 * @throws SQLException
	 */
	public int idCheck(LoginVO user)throws SQLException;
	
	
	LoginVO get(LoginVO user) throws ClassNotFoundException, SQLException;

	public int deleteUserData(String userId) throws SQLException;

}
