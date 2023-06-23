package com.pcwk.ehr.MainPage;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainPageDAOImpl implements MainPageDAO {
    private static final String NAMESPACE = "com.example.myapplication.mapper.MainPageMapper";

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    // TODO: Implement methods for data access
}
