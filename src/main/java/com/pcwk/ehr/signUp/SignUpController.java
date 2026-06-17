package com.pcwk.ehr.signUp;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pcwk.ehr.signUp.SignUpVO;
import com.pcwk.ehr.signUp.SignUpService;

@Controller()
@RequestMapping("")
public class SignUpController {

	final Logger LOG = LogManager.getLogger(getClass());

	/**
	 * 회원가입 페이지 접속 주소
	 */
	@Autowired
	SignUpService signUpService;

	// 회원가입 창
	@RequestMapping(value = "/ELCARO/SignUp.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public String goLogin(Model model) throws SQLException, ClassNotFoundException { // SignUpVO signUpVO 있었는데 없애놓음 일단

		LOG.debug("----------------");
		LOG.debug("/user/SignUp.do 화면이 켜졌습니다!!!!!");
		LOG.debug("----------------");
		LOG.debug("현재 값은 :" + model);

		
		return "user/Ne08_SignUp";

	}

	/**
	 * 회원가입 버튼 누를 시 DB입력 되는 주소 (회원 가입 노란버튼)
	 * 
	 * @throws ClassNotFoundException
	 */ // 아래 링크로 들어가면 null값이 들어감.. "/user/Login.do"
	@RequestMapping(value = "/ELCARO/save.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String SaveUserInfo(SignUpVO signUpVO, RedirectAttributes redirectAttributes) throws SQLException, ClassNotFoundException {

		if (signUpVO.getId() == null || signUpVO.getPassword() == null || signUpVO.getNickname() == null
				|| signUpVO.getGender() == null) {
			return ""; // 입력값이 null인 경우 빈 문자열 반환
		}

		int flag = this.signUpService.add(signUpVO);
		System.out.println(flag);
		if (flag == 1) {
			System.out.println("***flag***"+flag);
			return "1";
		} else {
			return "0";
		}

	}

	// 아이디 중복체크
	@RequestMapping(value = "/ELCARO/idCheck.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public int idCheck(@RequestParam("id") String userId) throws Exception {

		LOG.debug("############################## 회원가입 누르셨습니다. 아래에는 들어온 데이터 ! ");
		LOG.debug("userId:" + userId);
		LOG.debug("############################## 회원가입 누르셨습니다. 위에는 들어온 데이터 ! ");

		int cnt = this.signUpService.idCheck(userId);

		return cnt;

	}

}
