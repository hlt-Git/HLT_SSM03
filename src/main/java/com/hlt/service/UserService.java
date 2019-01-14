package com.hlt.service;

import com.hlt.entity.User;

public interface UserService {

    public boolean login(String username, String password);

    public void regist(User user);

    public boolean checkUsername(String username);

}
