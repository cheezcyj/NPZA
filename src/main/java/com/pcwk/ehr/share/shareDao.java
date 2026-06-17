package com.pcwk.ehr.share;

import java.sql.SQLException;
import java.util.List;


public interface ShareDao {

	public List<ShareVO> shareDesiredURL(ShareVO search) throws SQLException;

}