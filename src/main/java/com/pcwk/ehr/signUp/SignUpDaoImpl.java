package com.pcwk.ehr.signUp;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.pcwk.ehr.signUp.SignUpVO;

@Repository
public class SignUpDaoImpl implements SignUpDao {

	private static final String NAMESPACE = "com.pcwk.ehr.signup";
	private static final String DOT       = ".";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; //DB연결 객체
	
	private final Logger LOG = LogManager.getLogger(SignUpDaoImpl.class);
	
	// **** default 생성
	public SignUpDaoImpl () {}
	
	
	// NEPALZZAYA 사이트 회원가입
	@Override
	public int add(SignUpVO signUpVO) throws SQLException, ClassNotFoundException {
		
		int flag = 0;

		String statement = this.NAMESPACE+DOT+"add";
		
		LOG.debug("┌───────────────┐");
		LOG.debug("│DaoImpl구역!!!!!│"+statement);
		LOG.debug("└───────────────┘");
		LOG.debug("SignUpVO 값 ==" + signUpVO.toString());
		
		flag = this.sqlSessionTemplate.insert(statement, signUpVO); 
		
		LOG.debug("DaoImple flag 값 = " + flag);
		
		return flag;

	}
	
	
	
	// 아이디 중복 검사
	public int idCheck(String userId) throws Exception {
		
		String statementtwo = this.NAMESPACE+DOT+"idCheck";
		
		int cnt = sqlSessionTemplate.selectOne(statementtwo, userId);
		
		return cnt;
		
	}
	
	
	
}