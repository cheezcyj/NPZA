/**
 *<pre>
 * com.pcwk.ehr.anno.service
 * Class Name : AnnoServiceImp.java
 * Description : MVC service 구현채
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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.anno.dao.AnnoDao;
import com.pcwk.ehr.anno.domain.AnnoVO;

/**
 * @author user
 *
 */
@Service
public class AnnoServiceImp implements AnnoService {

	@Autowired
	AnnoDao annoDao;
	
	@Override
	public AnnoVO doSelectOne(AnnoVO inVO) throws SQLException {
		System.out.println("---------------------------");
		System.out.println("-AnnoServiceImp-------");
		System.out.println("---------------------------");
		return annoDao.doSelectOne(inVO);
	}

}


