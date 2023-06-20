package com.pcwk.ehr.NotMember;

import java.sql.SQLException;

import com.pcwk.ehr.anno.domain.AnnoVO;

public interface NotMemberService {
		
	public NotMemberVO doSelectOne(AnnoVO inVO) throws SQLException;
		
}
