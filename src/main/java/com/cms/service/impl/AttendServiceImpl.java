package com.cms.service.impl;

import com.cms.dao.AttendDao;
import com.cms.model.Attend;
import com.cms.service.AttendService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("/attendService")
public class AttendServiceImpl implements AttendService {
    @Resource
    private AttendDao attendDao;

    @Override
    public List<Attend> showAllAttend() {
        return attendDao.selectAll();
    }

    @Override
    public List<Attend> showAttendById(String sno) {
        return attendDao.selectById(sno);
    }

    @Override
    public int deleteById(String ano) {
        return attendDao.deleteById(ano);
    }

    @Override
    public int updateAttend(Attend attend) {
        return attendDao.update(attend);
    }
}
