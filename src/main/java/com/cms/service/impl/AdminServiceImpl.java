package com.cms.service.impl;

import com.cms.dao.AdminDao;
import com.cms.model.Admin;
import com.cms.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("/adminService")
public class AdminServiceImpl implements AdminService {

    @Resource
    private AdminDao adminDao;


    @Override
    public Admin login(Admin admin) {
        return adminDao.selectByAnoPwd(admin);
    }
}
