package com.pcwk.ehr.signUp;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pcwk.ehr.signUp.SignUpDao;
import com.pcwk.ehr.signUp.SignUpVO;

@Service
public interface SignUpService {
	
	
	/**
	 * 신규회원가입
	 * @param inVO
	 * @return 
	 * @throws SQLException
	 */
	public int add(SignUpVO signUpVO)throws ClassNotFoundException, SQLException;
		
	
	
	
	// 아이디 중복 검사
	public int idCheck(String userID) throws Exception;
		
		
		
}

