package com.tyinf.cicts.dao;

import com.tyinf.cicts.vo.Goods;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface IAdminDAO {
    /**
     * 查询所有商品的总数量
     * @param map
     * @return
     */
    Integer count(Map<String, Object> map);

    /**
     * 查询错所有商品
     * @param map
     * @return
     */
    List<Goods> findSplit(Map<String, Object> map);
}
