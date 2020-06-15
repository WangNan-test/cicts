package com.tyinf.cicts.service;

import com.tyinf.cicts.vo.Comment;
import com.tyinf.cicts.vo.Goods;

import java.util.List;

public interface ICommentService {
    /**
     * 增加评论操作
     * @param comment 要增加得评论得信息
     */
    void add(Comment comment);

    /**
     *查询用户所有评论的信息
     * @param uid   用户ID
     * @return
     */
    List<Goods> byUid(Integer uid);

    /**
     * 删除评论信息
     * @param cid   评论信息
     */
    void delete(Integer cid);
}
