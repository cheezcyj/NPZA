package com.pcwk.ehr.share;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShareServiceImpl implements ShareService {

	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	ShareDao shareDao;

	@Override
	public List<ShareVO> shareDesiredURL(ShareVO search, HttpServletRequest request) throws  SQLException{
		
		HttpSession session = request.getSession();
		
		//session.setAttribute("user", "mj");
		
        String userId = (String) session.getAttribute("user");

        LOG.debug("┌───────────────────────┐");
	    LOG.debug("│ session userId: "+userId);
	    
        search.setId(userId);
        
        LOG.debug("│ search: "+search);
		LOG.debug("└───────────────────────┘");
		
		return shareDao.shareDesiredURL(search);
	}
}
