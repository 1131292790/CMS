package com.cms.controller;

import com.cms.model.Attend;
import com.cms.service.AttendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/leave")
public class LeaveController {

    @Autowired
    private AttendService attendService;


    @PostMapping("/update")
    public String updateAttend(Attend attend) {
        int i = attendService.updateAttend(attend);
        return "quit";
    }


    @PostMapping("/del")
    public String delAttend(HttpServletRequest request) {
        String attend_id = request.getParameter("attend_id");
        int i = attendService.deleteById(attend_id);
        return "quit";
    }

    @PostMapping("/add")
    public String addAttend(HttpServletRequest request) {
        String attend_id = request.getParameter("attend_id");
        int i = attendService.deleteById(attend_id);
        return "quit";
    }

}
