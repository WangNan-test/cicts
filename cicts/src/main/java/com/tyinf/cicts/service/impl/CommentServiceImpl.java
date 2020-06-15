package com.tyinf.cicts.service.impl;

import com.tyinf.cicts.dao.ICommentDAO;
import com.tyinf.cicts.service.ICommentService;
import com.tyinf.cicts.vo.Comment;
import com.tyinf.cicts.vo.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class CommentServiceImpl implements ICommentService {
    @Autowired
    private ICommentDAO commentDAO;

    @Override
    public void add(Comment comment) {
        this.commentDAO.add(comment);
    }

    @Override
    public List<Goods> byUid(Integer uid) {
        return this.commentDAO.byUid(uid);
    }

    @Override
    public void delete(Integer cid) {
        this.commentDAO.delete(cid);
    }
}
