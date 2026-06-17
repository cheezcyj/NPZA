package com.pcwk.ehr.share;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShareController {
	
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	ShareService shareService;

	@RequestMapping(value = "/ELCARO/shareDesiredURL.do")
	public String shareDesiredURL(ShareVO search, Model model, HttpServletRequest request) throws SQLException{

		LOG.debug("┌───────────────────────┐");
	    LOG.debug("│ search: "+search);
	    

		List<ShareVO> list = shareService.shareDesiredURL(search, request);
		model.addAttribute("list", list);
		
		LOG.debug("│ list: "+list);
		LOG.debug("└───────────────────────┘");


		return "user/Ne11_SharePage";
	}

}
