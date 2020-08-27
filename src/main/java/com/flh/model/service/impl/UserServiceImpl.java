package com.flh.model.service.impl;

import com.flh.model.dao.UserMapper;
import com.flh.model.entity.Askhosquestion;
import com.flh.model.entity.User;
import com.flh.model.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    /**
     * 用户登录
     * @param user

     * @return
     */
    @Override
    public User loginService(User user) {
        return userMapper.selectByPrimaryKey(user);
    }

    /**
     * 用户注册
     * @param user
     */
    @Override
    public void registeredService(User user) {
userMapper.insert(user);
    }

    /**
     * 重置密码
     * @param user
     */
    @Override
    public void updatePwdService(User user) {
        userMapper.updateByPrimaryKeySelective(user);
    }

    /**
     * 查询用户
     * @param useremail
     * @return
     */
    @Override
    public User selectUser(String useremail) {
        return userMapper.selectUser(useremail);
    }

}
