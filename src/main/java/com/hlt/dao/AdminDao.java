package com.hlt.dao;

import com.hlt.entity.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminDao {

    public Admin queryUserByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

}
