package com.pcwk.ehr.signUp;

import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;

import com.pcwk.ehr.signUp.SignUpVO;

public interface SignUpDao {

	// 회원가입
	public int add(SignUpVO signUpVO) throws ClassNotFoundException, SQLException;
		
	
	//중복검사
	public int idCheck(String userId) throws Exception;
	
}


