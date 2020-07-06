package com.cms.controller;

import com.cms.model.Attend;
import com.cms.model.Leave;
import com.cms.service.AttendService;
import com.cms.service.LeaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HomeController {


    @Autowired
    private AttendService attendService;

    @Autowired
    private LeaveService leaveService;

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/quit")
    public String absent() {
        return "quit";
    }

    @RequestMapping("/attend")
    public String attend(HttpServletRequest request) {
        List<Attend> attends = attendService.showAllAttend();
        request.setAttribute("attendList",attends);
        return "attendance";
    }

    @RequestMapping("/department")
    public String department() {
        return "department";
    }

    @RequestMapping("/staff")
    public String staff() {
        return "staff";
    }

    @RequestMapping("/edit_password")
    public String edit_password() {
        return "edit_password";
    }

    @RequestMapping("/join")
    public String join() {
        return "join";
    }

    @RequestMapping("/leave")
    public String leave(HttpServletRequest request) {
        List<Leave> leaves = leaveService.showAllLeave();
        request.setAttribute("leaveList",leaves);
        return "quit";
    }

    @RequestMapping("/move")
    public String move() {
        return "move";
    }

    @RequestMapping("/retire")
    public String retire() {
        return "retire";
    }

    @RequestMapping("/reward")
    public String reward() {
        return "reward";
    }

    @RequestMapping("/sallary")
    public String sallary() {
        return "sallary";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("user");
        return "/login";
    }
}
