package com.pcwk.ehr.NotMember;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface NotMemberMapper {

    @Insert("INSERT INTO not_member (mbti, nickname, gender, ani) " +
            "VALUES (#{mbti}, #{nickname}, #{gender}, #{ani})")
    void saveNotMemberInfo(NotMemberVO notMemberVO);
    
    @Select("SELECT * FROM not_member WHERE nickname = #{nickname}")
    NotMemberVO getNotMemberInfoByNickname(String nickname);

}