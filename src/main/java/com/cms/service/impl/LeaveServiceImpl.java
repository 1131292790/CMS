package com.cms.service.impl;

import com.cms.dao.LeaveDao;
import com.cms.model.Leave;
import com.cms.service.LeaveService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("/leaveService")
public class LeaveServiceImpl implements LeaveService {
    @Resource
    private LeaveDao leaveDao;


    @Override
    public List<Leave> showAllLeave() {
        return leaveDao.selectAll();
    }

    @Override
    public List<Leave> showLeaveBylno(String lno) {
        return leaveDao.selectBylno(lno);
    }

    @Override
    public int deleteLeaveBylno(String lno) {
        return leaveDao.deleteBylno(lno);
    }

    @Override
    public int updateLeave(Leave leave) {
        return leaveDao.update(leave);
    }

    @Override
    public int addLeave(Leave leave) {
        return leaveDao.add(leave);
    }
}
