package com.cms.service;

import com.cms.model.Leave;

import java.util.List;

public interface LeaveService {
    List<Leave> showAllLeave();

    List<Leave> showLeaveBylno(String lno);

    int deleteLeaveBylno(String lno);

    int updateLeave(Leave leave);

    int addLeave(Leave leave);
}
