package com.hlt.dao;

import com.hlt.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {

    public void addUser(User user);

    public User queryUserByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    public User queryUserByUsername(String username);
}
