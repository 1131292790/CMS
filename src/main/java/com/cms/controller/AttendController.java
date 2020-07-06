package com.cms.controller;

import com.cms.model.Attend;
import com.cms.service.AttendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/attend")
public class AttendController {

    @Autowired
    private AttendService attendService;


    @PostMapping("/update")
    public String updateAttend(Attend attend) {
        int i = attendService.updateAttend(attend);
        return "redirect:/attend";
    }


    @PostMapping("/del")
    public String delAttend(HttpServletRequest request) {
        String attend_id = request.getParameter("attend_id");
        int i = attendService.deleteById(attend_id);
        return "redirect:/attend";
    }

}
