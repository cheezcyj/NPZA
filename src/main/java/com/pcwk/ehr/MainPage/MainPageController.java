package com.pcwk.ehr.MainPage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainPageController {
	
    @Autowired
    private MainPageService mainPageService;

    @RequestMapping(value = "/user/mainPage.do", method = RequestMethod.GET)
    public String mainPage() {
        return "user/Ne01_MainPage";
    }

}