package com.pcwk.ehr.myPage;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class MyPageController {

	final Logger LOG = LogManager.getLogger(getClass());


	@RequestMapping(value = "/ELCARO/myPage.do")
	public String resultSelect(MyPageVO search, Model model) throws SQLException {

		

		return "user/Ne09_MyPage";

	}

	@RequestMapping(value = "/ELCARO/accountPage.do")
	public String accountPage() {
		return "user/Ne12_AccountPage";
	}

}
