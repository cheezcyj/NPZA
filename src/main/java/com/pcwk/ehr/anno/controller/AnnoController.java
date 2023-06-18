package com.pcwk.ehr.anno.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pcwk.ehr.anno.domain.AnnoVO;
import com.pcwk.ehr.anno.service.AnnoService;

@Controller  //controller bean등록
public class AnnoController {

	@Autowired
	AnnoService  annoService;
	
	public AnnoController() {
		System.out.println("default AnnoController()");
	}
	
	@RequestMapping(value="/anno/do_select_one.do", method = RequestMethod.POST)
	public String doSelectOne(Model model, HttpServletRequest req, AnnoVO vo) throws SQLException {
		
		System.out.println("============================");
		System.out.println("==doSelectOne()=");
		System.out.println("==vo="+vo);
		System.out.println("============================");
		AnnoVO inVO=vo;
		
		//String userId = req.getParameter("userId");
		//String passwd = req.getParameter("passwd");
		
		//inVO.setUserId(userId);
		//inVO.setPasswd(passwd);
		
		AnnoVO outVO = annoService.doSelectOne(inVO);
		System.out.println("============================");
		System.out.println("==outVO="+outVO);
		System.out.println("============================");		
		
		
		model.addAttribute("userId", outVO.getUserId());
		model.addAttribute("passwd", outVO.getPasswd());
		model.addAttribute("message", "쉬는 시간 입니다.");
		return "anno/anno";
	}
	
	/**
	 * 화면 보여 주기
	 * @return
	 */
	@RequestMapping(value="/anno/view.do")
	public String annoView() {
		System.out.println("annoView()");
		
		//prefix : /WEB-INF/views/
		//         anno/anno   -> /WEB-INF/views/anno/anno.jsp
		//suffix : .jsp
		
		return "anno/anno";
	}
}
