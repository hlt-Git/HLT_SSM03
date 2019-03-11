package com.hlt.service;

import com.hlt.dao.AdminDao;
import com.hlt.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("AdminService")
@Transactional
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao dao;

    @Override
    public boolean login(String username, String password) {

        Admin admin = dao.queryUserByUsernameAndPassword(username, password);

        if(admin == null){
            return false;
        }
        return true;
    }
}