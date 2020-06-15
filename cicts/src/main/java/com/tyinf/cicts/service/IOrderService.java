package com.tyinf.cicts.service;

import com.tyinf.cicts.vo.Order;
import com.tyinf.cicts.vo.User;

import java.util.List;
import java.util.Map;

public interface IOrderService {
    /**
     * 增加订单操作
     * @param user 增加的用户
     */
    boolean add(User user);

    /**
     * 根据用户ID查询出该用户所有的订单信息
     * @param uid
     * @return
     */
    Map<String,Object> list(Integer uid);

    /**
     * 用户支付操作
     * @param oid   支付的订单ID
     */
    void pay(Integer oid);

    /**
     * 取消订单
     * @param oid
     */
    void cancel(Integer oid);

    /**
     * 根据订单ID查询到订单的详细信息
     * @param oid 订单ID
     * @return 订单详细信息 key orderUser value 订单的用户信息
     *      key ordergoods value 订单的商品信息
     */
    Map<String, Object> orderGoods(Integer oid);
}
