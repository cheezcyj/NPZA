package com.pcwk.ehr.login;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.cmn.MessageVO;
import com.pcwk.ehr.user.domain.UserVO;
import com.pcwk.ehr.user.service.UserService;

@Controller("loginController")
@RequestMapping("login")
public class LoginController {

	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	UserService userService;
	
	
	public LoginController() {
		LOG.debug("=====================");
		LOG.debug("=LoginController()=");
		LOG.debug("=====================");
	}
	
	@RequestMapping(value="/loginView.do")
	public String loginView() {

		LOG.debug("=====================");
		LOG.debug("=loginView()=");
		LOG.debug("=====================");
		/// prefix /WEB-INF/views
		//  suffix .jsp
		
		// -->/WEB-INF/views/login/login.jsp
		///sw_hr14/src/main/webapp/WEB-INF/views/login/login.jsp
		return "login/login";
	}
	
	@RequestMapping(value = "/doLogin.do", method = RequestMethod.POST
			,produces = "application/json;charset=UTF-8"
			)
	@ResponseBody 
	public String doLogin(UserVO user, HttpSession httpSession)throws SQLException{
		String jsonString = "";
		LOG.debug("┌──────────────────────────────┐");		
		LOG.debug("│user:"+user);			
		MessageVO  message=new MessageVO();
		
		//1 : id미입력
		if(null == user.getUserId() || "".equals(user.getUserId())) {
			message.setMsgId("1");
			message.setMsgContents("아이디를 입력 하세요.");
			jsonString = new Gson().toJson(message);
			
			LOG.debug("│jsonString:"+jsonString);	
			return jsonString;
		}
		         
		//2 : pass미입력
		if(null == user.getPasswd() || "".equals(user.getPasswd())) {
			message.setMsgId("2");
			message.setMsgContents("비번을 입력 하세요.");
			
			return new Gson().toJson(message);
		}
		
		//10 :id오류
		//20 :비번오류
		//30 :성공
		int status = userService.doLogin(user);
		if(10 == status) {
			message.setMsgId("10");
			message.setMsgContents("아이디를 확인 하세요.");			
		}else if(20 == status) {
			message.setMsgId("20");
			message.setMsgContents("비번을 확인 하세요.");			
		}else if(30 == status) {
			message.setMsgId("30");
			message.setMsgContents(user.getUserId()+"가 로그인 되었습니다.");
			
			//-----------------------------------------------------------
			// 사용자 정보 조회: session처리
			//-----------------------------------------------------------
			UserVO userInfo = userService.get(user);
			if(null !=userInfo) {
				//session설정
				httpSession.setAttribute("user", userInfo);
			}
		}else {
			message.setMsgId("99");
			message.setMsgContents("알수 없는 오류");			
		}
		
		jsonString = new Gson().toJson(message);
		
		LOG.debug("│jsonString:"+jsonString);
		LOG.debug("└──────────────────────────────┘");			
		return jsonString;
	}
	
	
	
}
