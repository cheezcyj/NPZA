package com.pcwk.ehr.NotMember;
import java.sql.SQLException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

	@Repository
	public class NotMemberDAOImpl implements NotMemberDAO {

	    private final SqlSessionTemplate sqlSessionTemplate;

	    @Autowired
	    public NotMemberDAOImpl(SqlSessionTemplate sqlSessionTemplate) {
	        this.sqlSessionTemplate = sqlSessionTemplate;
	    }

	    @Override
	    public String insert(NotMemberVO notMember) throws SQLException {
	        String namespace = "com.pcwk.ehr.NotMember.NotMemberMapper";
	        String queryId = "insertNotMember";
	        sqlSessionTemplate.insert(namespace + "." + queryId, notMember);
	        return null;
	    }
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
   // public NotMemberDAOImpl(JdbcTemplate jdbcTemplate) {
   //     this.jdbcTemplate = jdbcTemplate;
  //  }

    //@Override
   // public void save(NotMemberVO notMember) {
    //    String sql = "INSERT INTO not_member (mbti, nickname, gender, ani) VALUES (?, ?, ?, ?)";
    //    jdbcTemplate.update(sql, notMember.getMbti(), notMember.getNickname(), notMember.getGender(), notMember.getAni());
    //}
