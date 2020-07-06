package com.test;

import com.cms.model.Admin;
import com.cms.service.AdminService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mvc.xml",
        "classpath:spring-mybatis.xml"})
public class AdminServiceTest {

    @Autowired
    private AdminService adminService;



}
