package com.pcwk.ehr.share;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface ShareService {

	/**
	 * 운세 url 조회
	 * @param search
	 * @return
	 * @throws SQLException
	 */
	public List<ShareVO> shareDesiredURL(ShareVO search, HttpServletRequest request) throws SQLException;

}
