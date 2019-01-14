package com.hlt.service;

import com.hlt.dao.UserDao;
import com.hlt.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao;

    @Override
    public boolean login(String username, String password) {
        User user = dao.queryUserByUsernameAndPassword(username, password);
        if(user == null){
            return false;
        }
        return true;
    }

    @Override
    public void regist(User user) {

        System.out.println("Service接收的数据：  "+user);

        //先查询注册的用户是否存在
        User queryUser = dao.queryUserByUsername(user.getUsername());

        if(queryUser == null){
            dao.addUser(user);
        }else {
            throw new RuntimeException("您输入的用户名已经存在！");
        }
    }

    @Override
    public boolean checkUsername(String username) {

        User checkUsername = dao.queryUserByUsername(username);

        if(checkUsername == null){
            return false;
        }
        return true;
    }
}
