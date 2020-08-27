package com.flh.model.dao;

import com.flh.model.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectUser(String useremail);

    User selectByPrimaryKey(User user);

    int updateByPrimaryKeySelective(User user);

    int updateByPrimaryKey(User record);
}