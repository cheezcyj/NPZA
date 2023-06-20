package com.pcwk.ehr.NotMember;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.anno.dao.AnnoDao;
import com.pcwk.ehr.anno.domain.AnnoVO;
import com.pcwk.ehr.anno.service.AnnoService;

@Service
public class NotMemberServiceImpl implements NotMemberService {

    private final NotMemberDao notMemberDao;

    @Autowired
    public NotMemberServiceImpl(NotMemberDao notMemberDao) {
        this.notMemberDao = notMemberDao;
    }

    @Override
    public NotMemberVO doSelectOne(AnnoVO inVO) throws SQLException {
        System.out.println("---------------------------");
        System.out.println("-AnnoServiceImpl-------");
        System.out.println("---------------------------");
        return notMemberDao.doSelectOne(inVO);
    }

}







