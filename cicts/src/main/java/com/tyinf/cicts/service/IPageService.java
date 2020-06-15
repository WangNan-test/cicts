package com.tyinf.cicts.service;

import com.tyinf.cicts.vo.Comment;
import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.Type;

import java.util.List;
import java.util.Map;

public interface IPageService {
    /**
     * 获取所有的类型对象
     * @return 所有的类型
     */
    public List<Type> findTypeAll()throws Exception;

    /**
     * 查询出所有的商品
     * @return
     */
    Map<String, Object> list(Map<String,Object> map);

    /**
     * 根据类型查询出所有类型
     * @param map
     * @return
     */
    Map<String, Object> listid(Map<String, Object> map);

    /**
     * 根据商品ID查询出单个商品
     * @param gid   商品ID
     * @return 商品信息
     */
    Goods byID(Integer gid)throws Exception;

    /**
     * 查询出一件商品所有得评论信息
     * @param gid   商品信息
     * @return  商品的所有评论信息
     */
    List<Comment> selectComment(Integer gid);

    /**
     * 查询出该商品得所有评论数
     * @param gid 商品ID
     * @return
     */
    Integer commentCount(Integer gid);
}
