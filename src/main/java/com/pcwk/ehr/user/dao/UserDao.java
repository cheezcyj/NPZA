package com.pcwk.ehr.user.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.user.domain.UserVO;

public interface UserDao {

	/**
	 * 비번체크
	 * @param user
	 * @return 1(id있음)/0(id없음)
	 * @throws SQLException
	 */
	public int passCheck(UserVO user)throws SQLException;
	
	/**
	 * 아이디 체크
	 * @param user
	 * @return 1(id있음)/0(id없음)
	 * @throws SQLException
	 */
	public int idCheck(UserVO user)throws SQLException;
	
	//O
	public List<UserVO>  doRetrieve(UserVO search)throws SQLException;
	//O
	int update(UserVO user) throws SQLException;

	//건수 조회:OK O
	int getCount(UserVO user) throws SQLException;

	//삭제:OK O
	int deleteOne(UserVO user) throws SQLException;

	//OK:X
	List<UserVO> getAll(UserVO user) throws SQLException;

	//O
	UserVO get(UserVO user) throws  SQLException;

	
	//데이터 추가 O
	int add(UserVO user) throws  SQLException;

}