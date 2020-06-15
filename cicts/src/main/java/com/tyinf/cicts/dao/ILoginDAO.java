package com.tyinf.cicts.dao;

import com.tyinf.cicts.vo.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Mapper
@Repository
public interface ILoginDAO {
    /**
     * 查询出所有用户的手机号，用于验证操作
     * @return 所有的用户手机号
     */
    public List<String> findAllPhone()throws SQLException;

    /**
     * 注册用户
     * @param user  注册用户的信息
     */
    public void createUser(User user)throws SQLException;

    /**
     * 用户登陆验证 根据用户手机号查询用户信息
     * @param phone 用户手机
     * @return  查询到的信息
     * @throws SQLException 数据库异常
     */
    User checkLogin(String phone)throws SQLException;
}
