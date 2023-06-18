package com.pcwk.ehr.user.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.cmn.MessageVO;
import com.pcwk.ehr.user.domain.UserVO;
import com.pcwk.ehr.user.service.UserService;

@Controller
@RequestMapping("user") //공통적인 URI
public class UserController {
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	UserService userService;
	
	
	
	/**
	 * 단건 수정
	 * @param user
	 * @return json(MessageVO)
	 * @throws SQLException
	 */
	@RequestMapping(value="/update.do",method = RequestMethod.POST			
			,produces = "application/json;charset=UTF-8"
			)
	@ResponseBody
	public String update(UserVO user) throws SQLException{
		String jsonString = "";
		LOG.debug("┌──────────────────────────────┐");		
		LOG.debug("│user:"+user);		
		
		int flag = this.userService.update(user);
		
		String message = "";
		
		if(1==flag) {
			message = user.getUserId()+"가 수정 되었습니다.";
		}else {
			message = user.getUserId()+" 수정 실패";
		}
		
		MessageVO messageVO=new MessageVO(String.valueOf(flag), message);
		jsonString = new Gson().toJson(messageVO);
		LOG.debug("│jsonString:"+jsonString);
		LOG.debug("└──────────────────────────────┘");		
		return jsonString;
	}
	/**
	 * 단건 조회
	 * @param user
	 * @return UserVO
	 * @throws SQLException
	 */	
	@RequestMapping(value="/get.do",method = RequestMethod.POST
			,produces = "application/json; charset=UTF-8")
	@ResponseBody // HTTP 요청 부분의 body부분이 그대로 브라우저에 전달된다.
	public String get(UserVO user,HttpServletRequest req) throws  SQLException{
		String jsonString = "";
		LOG.debug("┌──────────────────────────────┐");		
		LOG.debug("│inVO:"+user);		
		String userId = req.getParameter("userId");
		LOG.debug("│userId:"+userId);
		UserVO outVO = this.userService.get(user);
		
		jsonString = new Gson().toJson(outVO);
		LOG.debug("│jsonString:"+jsonString);
		LOG.debug("└──────────────────────────────┘");		
		
		return jsonString;
	}
	
	/**
	 * 추가
	 * @param inVO
	 * @return json String
	 * @throws SQLException
	 * @throws ClassNotFoundException 
	 */
	@RequestMapping(value = "/add.do",method = RequestMethod.POST
			,produces = "application/json;charset=UTF-8"
			)
	@ResponseBody //비동기 처리를 하는 경우, HTTP 요청 부분의 body부분이 그대로 브라우저에 전달된다.
	public String add(UserVO inVO , HttpServletRequest req)throws  SQLException, ClassNotFoundException{
		String jsonString = "";
		LOG.debug("┌──────────────────────────────┐");		
		LOG.debug("│inVO:"+inVO);
		String userId = req.getParameter("userId");
		LOG.debug("│userId:"+userId);
		int flag=this.userService.add(inVO);
		//jsonString에 담을 메시지
		String message = "";
		if(1==flag) {
			message = inVO.getUserId()+"가 등록 되었습니다.";
		}else {
			message = inVO.getUserId()+"등록 실패";
		}
		
		MessageVO messageVO=new MessageVO(String.valueOf(flag), message);
		
		jsonString = new Gson().toJson(messageVO);
		LOG.debug("│jsonString:"+jsonString);
		LOG.debug("└──────────────────────────────┘");
		
		return jsonString;
	}
	
	@RequestMapping(value = "/deleteOne.do", method = RequestMethod.GET
			,produces = "application/json;charset=UTF-8"
			)
	@ResponseBody 
	public String deleteOne(UserVO user, HttpServletRequest req) throws SQLException{
		String jsonString = "";
		LOG.debug("┌──────────────────────────────┐");
		
		String userId = req.getParameter("userId");
		
		LOG.debug("│userId:"+userId);
		LOG.debug("│user:"+user);
		
		int flag=this.userService.deleteOne(user);
		
		String message = "";
		if(1==flag) {
			message = user.getUserId()+"가 삭제 되었습니다.";
		}else {
			message = user.getUserId()+" 삭제 실패";
		}
		
		MessageVO messageVO=new MessageVO(String.valueOf(flag),message);
		
		//{"msgId":"1","msgContents":"pt99_01가 삭제 되었습니다."}
		jsonString = new Gson().toJson(messageVO);
		LOG.debug("│jsonString:"+jsonString);
		LOG.debug("└──────────────────────────────┘");
		
		return jsonString;
	}
	
	@RequestMapping(value="/doRetrieve.do")
	public String doRetrieve(UserVO search,Model model) throws SQLException {
		
		if(search.getPageNo()==0) {//페이지 번호 초기값 1
			search.setPageNo(1);
		}
		
		if(search.getPageSize()==0) {//페이지 사이즈 초기갑 10
			search.setPageSize(10);
		}
		
		if(search.getSearchDiv()==null) {//검색조거 전체
			search.setSearchDiv("");
		}
		
		LOG.debug("│search:"+search);
		
		
		List<UserVO> list=userService.doRetrieve(search);
		model.addAttribute("list", list);
		model.addAttribute("search", search);
		
		return "user/user_mng";
	}
	
}
