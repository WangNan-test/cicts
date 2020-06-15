package com.tyinf.cicts.service.impl;

import com.tyinf.cicts.dao.IPageDAO;
import com.tyinf.cicts.service.IPageService;
import com.tyinf.cicts.vo.Comment;
import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class PageServiceImpl implements IPageService {
    @Autowired
    private IPageDAO pageDAO;
    @Override
    public List<Type> findTypeAll() throws Exception {

        return this.pageDAO.findTypeAll();
    }

    @Override
    public Map<String, Object> list(Map<String, Object> map) {
        Map<String,Object> map1=new HashMap<>();
        map1.put("allRecorders",this.pageDAO.count(map));
        map1.put("allGoods",this.pageDAO.findSplit(map));
        return map1;
    }

    @Override
    public Map<String, Object> listid(Map<String, Object> map) {
        Map<String,Object> map1=new HashMap<>();
        map1.put("allRecorders",this.pageDAO.countId(map));
        map1.put("allGoods",this.pageDAO.findSplitId(map));
        return map1;
    }

    @Override
    public Goods byID(Integer gid) throws Exception {
        return this.pageDAO.byId(gid);
    }

    @Override
    public List<Comment> selectComment(Integer gid) {

        return this.pageDAO.selectComment(gid);
    }

    @Override
    public Integer commentCount(Integer gid) {
        return this.pageDAO.commentCount(gid);
    }
}
