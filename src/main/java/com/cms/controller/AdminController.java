package com.cms.controller;

import com.cms.model.Admin;
import com.cms.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {


    @Resource
    private AdminService adminService;

    @RequestMapping(method = RequestMethod.POST, value = "/login")
    @ResponseBody
    public Map<String, Object> login(@RequestBody  Admin login, HttpSession session) throws IOException {
        System.out.println(login);
        Admin admin = adminService.login(login);
        System.out.println(admin);
        Map<String, Object> map = new HashMap<>();
        if (admin == null) {
            map.put("code",400);
            map.put("msg", "账号或密码错误，请重试!");
        } else {
            map.put("code",200);
            map.put("msg", "登录成功!");
            session.setAttribute("admin",admin);
        }
        return map;
    }
}
