/**
 *<pre>
 * com.pcwk.ehr.anno.service
 * Class Name : AnnoService.java
 * Description : MVC 테스트
 * Modification Information
 * 
 *   수정일      수정자              수정내용
 *  ---------   ---------   -------------------------------
 *  2023-06-07           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2023-06-07 
 * @version 1.0
 * 
 *
 *  Copyright (C) by H.R. KIM All right reserved.
 * </pre>
 */
package com.pcwk.ehr.anno.service;

import java.sql.SQLException;

import com.pcwk.ehr.anno.domain.AnnoVO;

/**
 * @author user
 *
 */
public interface AnnoService {
	
	public AnnoVO doSelectOne(AnnoVO inVO) throws SQLException;
	
}
