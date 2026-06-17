package com.pcwk.ehr.share;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ShareDaoImpl implements ShareDao {

	final Logger LOG = LogManager.getLogger(getClass());

	final String NAMESPACE = "com.pcwk.ehr";
	final String DOT = ".";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;//DB연결객체

	public ShareDaoImpl() {}

	public List<ShareVO> shareDesiredURL(ShareVO search) throws SQLException{
		List<ShareVO> list = new ArrayList<ShareVO>();

		String statement = NAMESPACE+DOT+"shareDesiredURL";
		
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│ 1. statement " + statement);
		LOG.debug("│ 2. search " + search);

		list = sqlSessionTemplate.selectList(statement, search);
			
		LOG.debug("│ 3. list " + list);
		
		for (ShareVO vo : list) {
			LOG.debug("│ 4. vo= "+vo);
			LOG.debug("└───────────────────────┘");
		}

		return list;
	}


	
}
