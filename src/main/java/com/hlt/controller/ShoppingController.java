package com.hlt.controller;

import com.hlt.entity.Shopping;
import com.hlt.service.ShoppingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/shopping")
public class ShoppingController {

    @Autowired
    private ShoppingService shoppingService;

    @RequestMapping("/productlist")
    public String productlist(Model model){

        List<Shopping> products = shoppingService.queryAll();

        model.addAttribute("products",products);

        return "JSP/cart";
    }


}
