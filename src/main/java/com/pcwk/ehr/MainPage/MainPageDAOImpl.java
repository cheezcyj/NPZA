package com.pcwk.ehr.MainPage;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainPageDAOImpl implements MainPageDAO {
    private static final String NAMESPACE = "com.pcwk.ehr.MainPage.MainPageMapper";

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

}
