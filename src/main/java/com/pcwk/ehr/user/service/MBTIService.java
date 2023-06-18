package com.pcwk.ehr.user.service;

import com.pcwk.ehr.user.dao.MBTIDaoImpl;
import com.pcwk.ehr.user.dao.UserDaoImpl;
import com.pcwk.ehr.user.domain.MBTIVO;
import com.pcwk.ehr.user.domain.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class MBTIService {
    @Autowired
    MBTIDaoImpl mbtiDao;

    public List<MBTIVO> getMBTI() throws SQLException {
        return mbtiDao.getMBTI();
    }
}
