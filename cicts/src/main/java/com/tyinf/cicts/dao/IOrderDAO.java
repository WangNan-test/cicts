package com.tyinf.cicts.dao;

import com.tyinf.cicts.vo.Buy;
import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.Order;
import com.tyinf.cicts.vo.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface IOrderDAO {
    /**
     * 增加订单操作
     * @param order 订单信息
     */
    void add(Order order);

    /**
     * 添加顶典与商品关系表
     * @param map   订单编号与商品ID
     */
    void addGods(Map<String, Object> map);

    /**
     * 查询出用户的所有订单信息
     * @param uid   用户ID
     * @return  所有订单信息
     */
    List<Order> list(Integer uid);

    /**
     * 根据用户ID查询出所有用户商品被购买信息
     * @param uid
     * @return
     */
    List<Buy>  buyList(Integer uid);
    /**
     * 修改订单状态
     * @param oid   要修改的订单
     */
    void pay(Integer oid);

    /**
     * 取消订单
     * @param oid
     */
    void cancel(Integer oid);

    /**
     *根据订单编号查询订单信息
     * @param oid   订单编号
     * @return  订单信息
     */
    Order findByID(Integer oid);

    /**
     * 根据订单编号查询出该订单的用户信息
     * @param oid   订单ID
     * @return
     */
    User orderUser(Integer oid);

    /**
     * 根据订单ID查询出订单的所有商品信息
     * @param oid 订单iD
     * @return
     */
    List<Goods> orderGoods(Integer oid);
}
