package com.hlt.service;

import com.hlt.dao.ShoppingDao;
import com.hlt.entity.Shopping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("shoppingService")
@Transactional
public class ShoppingServiceImpl implements ShoppingService{

    @Autowired
    private ShoppingDao dao;

    @Override
    public List<Shopping> queryAll() {
        List<Shopping> products = dao.queryAll();
        return products;
    }
}
