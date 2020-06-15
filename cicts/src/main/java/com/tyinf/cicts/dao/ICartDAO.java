package com.tyinf.cicts.dao;

import com.tyinf.cicts.vo.Cart;
import com.tyinf.cicts.vo.Goods;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
import java.util.Set;

@Mapper
@Repository
public interface ICartDAO {
    /**
     * 添加商品到购物策划
     * @param cart  购物车信息
     */
    void addCart(Cart cart);

    /**
     * 查寻用户的购物车条数
     * @param uid
     * @return
     */
    Integer count(Integer uid);

    /**
     * 查询一个用户的所有购物车信息
     * @param uid
     * @return
     */
    List<Goods> list(Integer uid);

    /**
     * 删除一条信息
     * @param map
     */
    void delete(Map<String, Object> map);

    /**
     * 删除用户所有购物车信息
     * @param uid 用户id
     */
    void deleteAll(Integer uid);

    /**
     * 查询出购物车金额总和
     * @param uid
     * @return
     */
    Double allprice(Integer uid);

    Goods flag(Cart cart);

    /**
     * 查询购物车中所有的商品ID
     * @param uid 用户ID
     * @return  所有商品ID
     */
    Set<Integer> selectGid(Integer uid);
}
