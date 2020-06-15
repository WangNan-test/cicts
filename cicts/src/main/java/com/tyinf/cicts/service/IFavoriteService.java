package com.tyinf.cicts.service;

import com.tyinf.cicts.vo.Favorite;
import com.tyinf.cicts.vo.User;

import java.util.List;
import java.util.Map;

public interface IFavoriteService {
    /**
     * 添加收藏
     * @param favorite
     */
    void add(Favorite favorite);

    /**
     * 验证该商品是否已经增加 查询为null则为添加收藏 不为空则以添加
     * @param favorite  要验证的数据
     * @return
     */
    Favorite flag(Favorite favorite);

    /**
     * 根据用户ID查寻到所有的收藏商品
     * @param uid   用户ID
     * @return  所有收藏的商品
     */
    List<Favorite> list(Integer uid);

    /**
     * 删除单个收藏
     * @param favorite  要删除的收藏信息
     */
    void delete(Favorite favorite);
}
