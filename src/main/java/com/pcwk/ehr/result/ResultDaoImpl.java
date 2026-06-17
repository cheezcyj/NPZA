package com.pcwk.ehr.result;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.signUp.SignUpVO;


@Repository
public class ResultDaoImpl implements ResultDao {
	
	final String NAMESPACE = "com.pcwk.ehr.result";
	final String DOT = ".";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;//DB연결객체

	private final Logger LOG = LogManager.getLogger(getClass());
	
	
	//**** default 생성
	public ResultDaoImpl() {}


	@Override
	public ResultVO getId(ResultVO resultVO) throws SQLException{
		ResultVO outVO = new ResultVO();

		String statement = NAMESPACE+DOT+"getId";
		LOG.debug("┌─────────┐");
		LOG.debug("│statement│"+statement);
		LOG.debug("└─────────┘");
		LOG.debug("2. param " + resultVO);
		
		outVO = sqlSessionTemplate.selectOne(statement, resultVO);
		
			LOG.debug("3. outVO="+outVO);
	

		return outVO;
	}

	public List<ResultVO> getLuck(ResultVO resultVO) throws SQLException{
		List<ResultVO> list = new ArrayList<ResultVO>();

		String statement = NAMESPACE+DOT+"getLuck";
		LOG.debug("┌─────────┐");
		LOG.debug("│statement│"+statement);
		LOG.debug("└─────────┘");
		LOG.debug("2. param " + resultVO);
		
		list = sqlSessionTemplate.selectList(statement, resultVO);
		for (ResultVO vo : list) {
			LOG.debug("3. vo="+vo);
		}

		return list;

		}
	
	public List<ResultVO> getNick(ResultVO resultVO) throws SQLException{
		List<ResultVO> listnm = new ArrayList<ResultVO>();

		String statement = NAMESPACE+DOT+"getNick";
		LOG.debug("┌─────────┐");
		LOG.debug("│statement│"+statement);
		LOG.debug("└─────────┘");
		LOG.debug("2. param " + resultVO);
		
		listnm = sqlSessionTemplate.selectList(statement, resultVO);
		for (ResultVO vo : listnm) {
			LOG.debug("3. vo="+vo);
		}

		return listnm;

		}
	
	@Override
	public int add(ResultVO resultVO) throws SQLException, ClassNotFoundException {
		
		int flag = 0;

		String statement = this.NAMESPACE+DOT+"add";
		
		LOG.debug("┌───────────────┐");
		LOG.debug("│DaoImpl구역!!!!!│"+statement);
		LOG.debug("└───────────────┘");
		LOG.debug("SignUpVO 값 ==" + resultVO.toString());
		
		flag = this.sqlSessionTemplate.insert(statement, resultVO); 
		
		LOG.debug("DaoImple flag 값 = " + flag);
		
		return flag;

	}
	
}
