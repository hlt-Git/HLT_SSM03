package com.hlt.controller;

import com.hlt.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/login")
    public ModelAndView login(ModelAndView model, String username, String password,HttpSession session){

        boolean flag = adminService.login(username,password);
        session.setAttribute("Admin",username);

        if(flag){
             session.setAttribute("success","success");
             model.setViewName("redirect:/product/productlist");
        }else {
             //model.addObject("loginerMessage","您输入的用户名或密码错误！");
             model.setViewName("JSP/loginer");
        }
        return model;
    }

    @RequestMapping("/remove")
    public String remove(HttpSession session){
        session.removeAttribute("success");
        return "index";
    }
}
