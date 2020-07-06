package com.cms.dao;


import com.cms.model.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface AdminDao {
        Admin selectByAnoPwd(Admin admin);
}
