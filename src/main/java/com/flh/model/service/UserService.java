package com.flh.model.service;

import com.flh.model.entity.User;

public interface UserService {
    /**
     * 用户登录
     * @param user
     * @return
     */
    public User loginService(User user);

    /**
     * 用户注册
     * @param user
     */
    public void registeredService(User user);

    /**
     * 重置密码
     * @param user
     */
    public void updatePwdService(User user);

    /**
     * 查询用户
     * @param useremail
     * @return
     */
    public User selectUser(String useremail);


}
