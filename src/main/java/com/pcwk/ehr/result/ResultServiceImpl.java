package com.pcwk.ehr.result;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.signUp.SignUpVO;

@Service
public class ResultServiceImpl implements ResultService {
	final Logger LOG = LogManager.getLogger(getClass());
	
    private ResultDao resultDao;
    
    @Autowired
    ResultDaoImpl resultDaoImpl;

    @Autowired
    public ResultServiceImpl(ResultDao resultDao) {
        this.resultDao = resultDao;
	
    }
       
	@Override
	public ResultVO getId(ResultVO search) throws SQLException {

		return resultDao.getId(search);
	}

	@Override
	public List<ResultVO> getLuck(ResultVO search) throws SQLException {
		search.setLuck("");
		return resultDao.getLuck(search);
	}

	@Override
	public List<ResultVO> getNick(ResultVO search) throws SQLException {
		search.setNick("");
		return resultDao.getNick(search);
	}
	

	@Override
	public int add(ResultVO resultVO) throws ClassNotFoundException, SQLException {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│ServiceImpl 구역!!!!            │" + resultVO.toString());
		LOG.debug("└──────────────────────────────┘");

		int flag = 0;

		flag = this.resultDaoImpl.add(resultVO);

		// return flag = this.signUpDaoImpl.add(signUpVO);

		return flag;
	}

}
