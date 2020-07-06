package com.cms.dao;

import com.cms.model.Leave;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LeaveDao {
    List<Leave> selectAll();

    List<Leave> selectBylno(String lno);

    int deleteBylno(String lno);

    int add(Leave leave);

    int update(Leave leave);
}
