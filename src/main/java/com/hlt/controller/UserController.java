package com.hlt.controller;

import com.hlt.entity.User;
import com.hlt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userServce;

    @RequestMapping("/login")
    public ModelAndView login(ModelAndView model, String username, String password, HttpSession session,String code){

        boolean flag = userServce.login(username,password);
        String serverCode = (String) session.getAttribute("serverCode");
        session.setAttribute("User",username);

        if(serverCode.equalsIgnoreCase(code)){              //如果验证码正确
            if(flag){
                session.setAttribute("success","success");
                model.setViewName("redirect:/shopping/productlist");
            }else {
                model.addObject("loginMessage","您输入的用户名或密码错误！");
                model.setViewName("JSP/login");
            }
        }else {
            model.addObject("loginMessage","您输入的验证码错误！");
            model.setViewName("JSP/login");
        }
        return model;
    }

    @RequestMapping("/regist")
    public String regist(Model model, User user){

        System.out.println("Controller接收的数据：  "+user);

        try{
            userServce.regist(user);
            return "JSP/login";
        }catch (Exception e){
            model.addAttribute("registMessage",e.getMessage());
            e.printStackTrace();
            return "JSP/regist";
        }
    }

    @RequestMapping("/checkUsername")
    protected void checkUsername(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        //获取要校验的用户名
        String username = request.getParameter("username");


        System.out.println("Ajax测试："+username);

        boolean check = userServce.checkUsername(username);

        response.getWriter().write("{\"check\":"+check+"}");
    }

    @RequestMapping("/remove")
    public String remove(HttpSession session){

        session.removeAttribute("success");
        return "index";
    }


}
