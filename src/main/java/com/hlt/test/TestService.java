package com.hlt.test;

import com.hlt.entity.Product;
import com.hlt.entity.User;
import com.hlt.service.ProductService;
import com.hlt.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:com/hlt/resources/spring.xml")
public class TestService {

    @Autowired
    private UserService userService;

    @Autowired
    private ProductService productService;

    @Test
    public void usertest1(){
        boolean flag = userService.login("上官婉儿", "123");

        System.out.println(flag);
    }

    @Test
    public void usertest2(){

        User user = new User(null, "上官婉儿", "赵永霞", 20, "123","1677@qq.com", "女");

        userService.regist(user);
        System.out.println("插入的主键ID:"+user.getId());
    }

    @Test
    public void producttest1(){

        Product product = new Product(null, "杭州", 88, 30,"阿里巴巴");

        productService.addProduct(product);
        System.out.println("插入的主键ID:"+product.getId());
    }

    @Test
    public void producttest2(){

        List<Product> list = productService.queryProductByProductname("酒");

        for (Product product : list) {
            System.out.println(product);
        }
    }

    @Test
    public void producttest3(){

        List<Product> products = productService.queryAll();

        for (Product product : products) {
            System.out.println(product);
        }
    }

    @Test
    public void producttest4(){
        Product product = productService.queryProductById(9);

        System.out.println(product);
    }

    @Test
    public void producttest5(){

        Product product = new Product(9, "荔枝", 7,20, "夏天很好吃的水果");
        productService.updateProduct(product);
    }

    @Test
    public void producttest6(){

        productService.deleteProduct(13);
    }

}
