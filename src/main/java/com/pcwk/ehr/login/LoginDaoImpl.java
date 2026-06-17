package com.pcwk.ehr.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;



@Repository
public class LoginDaoImpl implements LoginDao {

	final String NAMESPACE = "com.pcwk.ehr";
	final String DOT = ".";
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;// DB 연결객체

	private final Logger LOG = LogManager.getLogger(getClass());

	// **** default 생성
	public LoginDaoImpl() {
	}

	@Override
	public int idCheck(LoginVO user) throws SQLException {

		int flag = 0;

		String statement = NAMESPACE + DOT + "idCheck";
		LOG.debug("┌──────────────────────────┐");
		LOG.debug("│ 1. statement-            │" + statement);
		LOG.debug("└──────────────────────────┘");
		LOG.debug("┌──────────────────────────┐");
		LOG.debug("│ 2. param=\n              │" + user.toString());
		LOG.debug("└──────────────────────────┘");
		flag = this.sqlSessionTemplate.selectOne(statement, user);
		LOG.debug("┌──────────────────────────┐");
		LOG.debug("│ 3. idCheck flag  1/0     │" + flag);
		LOG.debug("└──────────────────────────┘");

		return flag;
	}

	@Override
	public int passCheck(LoginVO user) throws SQLException {
		int cnt = 0;

		String statement = NAMESPACE + DOT + "passCheck";
		LOG.debug("┌──────────────────────────┐");
		LOG.debug("│ 1. statement-            │" + statement);
		LOG.debug("└──────────────────────────┘");
		LOG.debug("┌──────────────────────────┐");
		LOG.debug("│ 2. param=\n              │" + user.toString());
		LOG.debug("└──────────────────────────┘");
		cnt = this.sqlSessionTemplate.selectOne(statement, user);
		LOG.debug("┌──────────────────────────┐");
		LOG.debug("│ 3. passCheck cnt   1/0   │" + cnt);
		LOG.debug("└──────────────────────────┘");

		return cnt;
	}

	@Override
	@SuppressWarnings("deprecation")
	public LoginVO get(LoginVO user )throws SQLException{
		LoginVO outVO = null;
		
        String statement = this.NAMESPACE+DOT+"get";
		LOG.debug("----------------------------");
		LOG.debug("1. statement-"+statement);
		LOG.debug("----------------------------");
		LOG.debug("2. param=\n"+user.toString());
		
		outVO = this.sqlSessionTemplate.selectOne(statement,user);
		LOG.debug("3.outVO:"+outVO);
		
	
		return outVO;
	}

}
