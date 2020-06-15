package com.tyinf.cicts.dao;

import com.tyinf.cicts.vo.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface IUserDAO {
    /**
     * 查询出不是本用户的所有手机号
     * @param user  本用户信息
     * @return  查询出的手机号
     */
    public List<User>  findAllPhone(User user);

    /**
     * 保存用户信息
     * @param user  用户信息
     */
    public  void save(User user);

    /**
     * 根据用户ID查询出用户密码
     * @param uid   用户ID
     * @return  用户密码
     */
    String verify(Integer uid);

    /**
     * 修改用户密码
     * @param map   保存了用户ID，与用户密码
     * @throws SQLException JDBC异常
     */
    void update(Map<String, Object> map)throws SQLException;

    /**
     * 根据用户ID查询出用户所有信息
     * @param uid  用户id
     * @return
     */
    User findById(Integer uid);

    /**
     * 上传用户头像
     * @param user
     */
    void upload(User user);

    /**
     * 查询所有的用户信息
     * @return 所有的用户信息
     */
    List<User> list();
}
