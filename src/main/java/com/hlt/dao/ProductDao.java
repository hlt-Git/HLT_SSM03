package com.hlt.dao;

import com.hlt.entity.Product;

import java.util.List;

public interface ProductDao {

    public void addProduct(Product product);

    public List<Product> queryProductByProductname(String productname);//模糊查询

    public List<Product> queryAll();

    public Product queryProductById(Integer id);

    public void updateProduct(Product product);

    public void deleteProduct(Integer id);


}
