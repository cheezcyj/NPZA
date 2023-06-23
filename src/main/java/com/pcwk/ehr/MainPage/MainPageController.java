package com.pcwk.ehr.MainPage;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPageController {

	@Autowired
	MainPageService mainPageService;
	
	@RequestMapping(value = "/user/mainPage.do")
	public String mainPage(MainPageVO mainPage, Model model) throws SQLException{
		
		mainPageService.page(mainPage);
		
		return "user/Ne02_QuestionMemeber";
	}

}