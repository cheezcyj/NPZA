package com.pcwk.ehr.NotMember;

import java.sql.SQLException;
/**
 * 
 * @author user
 *
 * @param <T>
 */
public interface NotMemberDiv<T> {
	//CRUD : doSave(),doDelete(),doUpdate(),doSelectOne(),doRetrieve()
	
	/**
	 * 등록
	 * @param inVO 
	 * @return T
	 * @throws SQLException
	 */
	public abstract int doSave(T inVO)throws SQLException;

}
