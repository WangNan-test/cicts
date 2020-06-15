package com.tyinf.cicts.service;

import com.tyinf.cicts.vo.User;

import java.util.List;

public interface IUserService {
    /**
     * 保存与修改用户信息
     * @param user  用户信息
     * @return  修改的状态
     */
    public int save(User user)throws Exception;

    /**
     * 进行密码的判断
     * @param uid   要判断的用户
     * @param password  演判断的用户密码
     * @return  密码正确返回0 ，不正确返回1
     */
    int verify(Integer uid,String password);

    /**
     * 修改用户密码
     * @param uid   要修改的用户ID
     * @param newPassword   要修改的密码
     * @throws Exception    数据层异常
     */
    void update(Integer uid, String newPassword)throws Exception;

    /**
     * 进行用户的头像上传操作
     * @param user  用户信息
     * @return  上传后的用户信息
     */
    User upload(User user)throws Exception;

    /**
     * 查询所有的用户信息
     * @return 所有的用户信息
     */
    List<User> list();
}
