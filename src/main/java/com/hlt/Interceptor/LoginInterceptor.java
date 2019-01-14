package com.hlt.Interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


//设置登录拦截器

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        HttpSession session = request.getSession();

        Object obj = session.getAttribute("success");
        System.out.println("测试监听收到的值："+obj);
        if(obj!=null){
            return true;
        }else {
            response.sendRedirect(request.getContextPath()+"/index.jsp");
            return false;
        }
    }
}
