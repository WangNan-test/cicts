package com.tyinf.cicts.dao;

import com.tyinf.cicts.vo.Favorite;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface IFavoriteDAO {
    /**
     * 添加收藏
     * @param favorite
     */
    void add(Favorite favorite);

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
