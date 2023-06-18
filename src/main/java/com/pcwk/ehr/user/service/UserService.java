package com.pcwk.ehr.user.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.user.domain.UserVO;

public interface UserService {


	/**
	 * 로그인
	 * @param user
	 * @return 10(id없음),20(비번오류),30(성공)
	 * @throws SQLException
	 */
	public int doLogin(UserVO user)throws SQLException;
	
	/**
	 * 회원상세 조회
	 * @param user
	 * @return UserVO
	 * @throws SQLException
	 */
	public UserVO get(UserVO user) throws  SQLException;
	
	/**
	 * 회원정보 삭제
	 * @param user
	 * @return 1(1건 반영)/0(반영된  row가 없다.)
	 * @throws SQLException
	 */
	public int deleteOne(UserVO user) throws SQLException;
	
	/**
	 * 건수 조회
	 * @param user
	 * @return 조회건수
	 * @throws SQLException
	 */
	public int getCount(UserVO user) throws SQLException;
	
	/**
	 * 회원 정보 수정
	 * @param user
	 * @return 1(1건 반영)/0(반영된  row가 없다.)
	 * @throws SQLException
	 */
	public int update(UserVO user) throws SQLException;
	
	/**
	 * 목록조회
	 * @param search
	 * @return
	 * @throws SQLException
	 */
	public List<UserVO>  doRetrieve(UserVO search)throws SQLException;
		
	
	/**
	 * 등업
	 * @param inVO
	 * @throws SQLException
	 */
	public void upgradeLevels(UserVO inVO)throws Exception;
	
	/**
	 * 신규회원 등록 : Level.BASIC
	 * @param inVO
	 * @throws SQLException
	 */
	public int add(UserVO inVO )throws ClassNotFoundException, SQLException;
}
