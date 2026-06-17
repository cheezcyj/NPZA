package com.pcwk.ehr.result;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.signUp.SignUpVO;


public interface ResultService {

	public ResultVO getId(ResultVO id) throws SQLException;

	public List<ResultVO> getLuck(ResultVO luck) throws SQLException;
	
	public List<ResultVO> getNick(ResultVO nmAni) throws SQLException;

	public int add(ResultVO ResultVO)throws ClassNotFoundException, SQLException;

}