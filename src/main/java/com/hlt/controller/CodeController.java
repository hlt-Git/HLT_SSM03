package com.hlt.controller;

import com.hlt.util.SecurityCode;
import com.hlt.util.SecurityImage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;

@Controller
@RequestMapping("/code")
public class CodeController {

    @RequestMapping("/createCode")
    public void createCode(HttpSession session, HttpServletResponse response)throws Exception{

        //获取验证码随机数
        String securityCode = SecurityCode.getSecurityCode();

        System.out.println(securityCode);

        session.setAttribute("serverCode",securityCode);

        //生成验证码图片
        BufferedImage image = SecurityImage.createImage(securityCode);

        //把图片发送到客户端
        ServletOutputStream outputStream = response.getOutputStream();

        ImageIO.write(image,"jpg",outputStream);
    }
}
