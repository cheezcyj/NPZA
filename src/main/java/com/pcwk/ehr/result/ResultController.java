package com.pcwk.ehr.result;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class ResultController {

	@Autowired
	ResultService resultService;
	
	
	@RequestMapping(value = "/ELCARO/result.do" , method = RequestMethod.GET)
	public String getId(HttpServletRequest request, ResultVO search, Model model, HttpSession session) throws SQLException{
		
		System.out.println("Client request received: " + search.toString());

		String userId = (String) session.getAttribute("user");
		search.setId(userId);
		
		
		ResultVO outVO = resultService.getId(search);
		model.addAttribute("outVO", outVO);
		System.out.println(outVO);
		
		List<ResultVO> list = resultService.getLuck(search);
		model.addAttribute("list", list);
		System.out.println(list);
		


		

		return "user/Ne05_MemberResultPage";
			
	}
	
	@RequestMapping(value = "/ELCARO/getLuck.do")
	public String getLuck(ResultVO search, Model model) throws SQLException{
		
		System.out.println("Client request received: " + search.toString());

		List<ResultVO> list = resultService.getLuck(search);
		model.addAttribute("list", list);

		return "user/Ne05_MemberResultPage";
	}
	

	@RequestMapping(value = "/ELCARO/getNick.do")
	public String getNick(ResultVO search, Model model) throws SQLException{
		
		System.out.println("Client request received: " + search.toString());

		List<ResultVO> listnm = resultService.getNick(search);
		model.addAttribute("listnm", listnm);
		
		List<ResultVO> list = resultService.getLuck(search);
		model.addAttribute("list", list);

		return "user/Ne06_NotMemberResultPage";
			
	}
	
	
	@RequestMapping(value = "/ELCARO/pushData.do")
	@ResponseBody
	public String idUrlData(ResultVO addData, RedirectAttributes redirectAttributes) throws SQLException, ClassNotFoundException{
		
		if (addData.getId() == null || addData.getUrl() == null) {
			return ""; // 입력값이 null인 경우 빈 문자열 반환
		}
		
		int flag = this.resultService.add(addData);
		System.out.println(flag);
		if (flag == 1) {
			System.out.println("***flag***"+flag);
			return "1";
		} else {
			return "0";
		}
			
	}
	
}
