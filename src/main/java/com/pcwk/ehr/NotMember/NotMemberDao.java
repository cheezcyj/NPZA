package com.pcwk.ehr.NotMember;

import java.util.List;

import com.pcwk.ehr.anno.domain.AnnoVO;
import com.pcwk.ehr.cmn.WorkDiv;

public interface NotMemberDao extends NotMemberDiv<NotMemberVO> {
	
	/**
	 * @author user
	 *
	 */
	public interface AnnoDao extends WorkDiv<AnnoVO> {
		
	}

}
