package com.hlt.service;

import com.hlt.dao.ProductDao;
import com.hlt.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductDao dao;

    @Override
    public void addProduct(Product product) {
        dao.addProduct(product);
    }

    @Override
    public List<Product> queryProductByProductname(String productname) {
        List<Product> productnames = dao.queryProductByProductname("%"+productname+"%");
        return productnames;
    }

    @Override
    public List<Product> queryAll() {
        List<Product> products = dao.queryAll();
        return products;
    }

    @Override
    public Product queryProductById(Integer id) {
        Product product = dao.queryProductById(id);
        return product;
    }

    @Override
    public void updateProduct(Product product) {
        dao.updateProduct(product);
    }

    @Override
    public void deleteProduct(Integer id) {
        dao.deleteProduct(id);
    }
}
