package com.tyinf.cicts.service;

import com.tyinf.cicts.vo.User;

public interface ILoginService {
    /**
     * 用户注册方法
     * @param user  用户注册的手机号与密码
     * @return 返回注册结果 （）
     */
    public int register(User user)throws Exception;

    /**
     * 用户登陆验证，根据用户手机号查询用户信息
     * @param phone   用户手机
     * @return  查询到的用户信息
     */
    User checkLogin(String phone)throws Exception;
}
