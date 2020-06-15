package com.tyinf.cicts.dao;

import com.tyinf.cicts.vo.Comment;
import com.tyinf.cicts.vo.Goods;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Mapper
@Repository
public interface ICommentDAO {
    /**
     * 增加商品评论信息
     * @param comment 评论信息
     */
    void add(Comment comment);

    /**
     * 查询用户所有的评论
     * @param uid 用户id
     * @return
     */
    List<Goods> byUid(Integer uid);

    void delete(Integer cid);
}
