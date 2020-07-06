package com.cms.dao;

import com.cms.model.Attend;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AttendDao {
    List<Attend> selectAll();

    List<Attend> selectById(String sno);

    int deleteById(String ano);

    int update(Attend attend);
}
