package com.pcwk.ehr.result;

import java.sql.SQLException;
import java.util.List;


public interface ResultDao {

	public ResultVO getId(ResultVO id) throws SQLException;

	public List<ResultVO> getLuck(ResultVO luck) throws SQLException;

	public List<ResultVO> getNick(ResultVO nmAni) throws SQLException;

	public int add(ResultVO resultVO) throws SQLException, ClassNotFoundException;
}