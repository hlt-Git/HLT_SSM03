package com.hlt.controller;

import com.hlt.entity.Product;
import com.hlt.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;


@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;


    @RequestMapping("/add")
    public String add(Product product){
        productService.addProduct(product);
        return "redirect:/product/productlist";
    }

    @RequestMapping("/productlist")
    public String productlist(Model model){

        List<Product> products = productService.queryAll();

        model.addAttribute("products",products);

        return "JSP/product";
    }

    @RequestMapping("/delete")
    public String delete(Integer id){
        productService.deleteProduct(id);
        return "redirect:/product/productlist";
    }

    @RequestMapping("/toUpdate")
    public String toUpdate(Integer id,Model model){

        Product product = productService.queryProductById(id);
        model.addAttribute("product",product);
        return "JSP/update";
    }

    @RequestMapping("/update")
    public String update(Product product){
        productService.updateProduct(product);

        System.out.println(product);
        return "redirect:/product/productlist";
    }

}
