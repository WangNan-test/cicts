package com.tyinf.cicts.dao;

import com.tyinf.cicts.vo.Comment;
import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.Type;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface IPageDAO {
    /**
     * 查询所有的商品类型
     * @return 所有的商品类型
     */
    List<Type> findTypeAll();

    /**
     * 查询出所有商品的总条数
     * @param map
     * @return
     */
    Integer count(Map<String, Object> map);

    /**
     * 分页查询商品
     * @param map
     * @return
     */
    List<Goods> findSplit(Map<String, Object> map);

    /**
     * 根据商品类型Id查询出所有的所属类型商品的总数
     * @param map
     * @return
     */
    Integer countId(Map<String, Object> map);
    /**
     * 根据商品类型Id查询出所有的所属类型商品
     * @param map
     * @return
     */
    List<Goods> findSplitId(Map<String, Object> map);

    /**
     * 根据商品ID查询出单个商品ID
     * @param gid   商品ID
     * @return  商品信息
     * @throws SQLException JDBC异常
     */
    Goods byId(Integer gid)throws SQLException;
    /**
     * 查询出一件商品所有得评论信息
     * @param gid   商品信息
     * @return  商品的所有评论信息
     */
    List<Comment> selectComment(Integer gid);

    /**
     * 查询该商品所有得品论数
     * @param gid
     * @return
     */
    Integer commentCount(Integer gid);
}
