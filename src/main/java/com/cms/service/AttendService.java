package com.cms.service;

import com.cms.model.Attend;

import java.util.List;

public interface AttendService {
    List<Attend> showAllAttend();

    List<Attend> showAttendById(String sno);

    int deleteById(String ano);

    int updateAttend(Attend attend);
}
