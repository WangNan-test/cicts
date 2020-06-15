package com.tyinf.cicts.service;

import com.tyinf.cicts.vo.Cart;
import com.tyinf.cicts.vo.Goods;

import java.util.List;
import java.util.Map;

public interface ICartService {
    /**
     * 添加商品到购物车
     * @param cart  购物车信息
     */
    void addCart(Cart cart);

    /**
     * 查询用户购物车中的购物条数
     * @param uid   用户id
     * @return
     */
    Integer count(Integer uid);

    /**
     * 根据用户ID查询该用户所有的购物信息
     * @param uid   用户ID
     * @return  用户购物车信息
     */
    List<Goods> list(Integer uid);

    /**
     * 删除一条用户购物车信息
     * @param map   key uid value用户id
     *                 key gid value 商品ID
     *
     */
    void delete(Map<String, Object> map);

    /**
     * 删除用户所有购物车信息
     * @param uid 用户id
     */
    void deleteAll(Integer uid);

    /**
     * 一个用户所有商品的总价
     * @param uid   用户id
     * @return 价格总数
     */
    Double allprice(Integer uid);

    /**
     * 加入购物车之前的验证操作如果查寻到数据则不能加入
     * @param cart 要查询的数据
     * @return
     */
    Goods flag(Cart cart);
}
