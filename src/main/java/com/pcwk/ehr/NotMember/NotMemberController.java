package com.pcwk.ehr.NotMember;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.cmn.MessageVO;
import com.pcwk.ehr.user.domain.UserVO;

@Controller
public class NotMemberController {

	@Autowired
	
	@RequestMapping("/")
    public String showForm() {
        return "input-form";
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
	
}
