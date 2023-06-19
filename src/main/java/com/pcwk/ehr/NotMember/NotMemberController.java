package com.pcwk.ehr.NotMember;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NotMemberController {

	@RequestMapping("/")
    public String showForm() {
        return "input-form";
    }
	
}
