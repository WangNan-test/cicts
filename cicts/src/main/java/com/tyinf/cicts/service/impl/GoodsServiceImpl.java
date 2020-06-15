package com.tyinf.cicts.service.impl;

import com.tyinf.cicts.dao.IGoodsDAO;
import com.tyinf.cicts.service.IGoodsService;
import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class GoodsServiceImpl implements IGoodsService {
    @Autowired
    private IGoodsDAO goodsDAO;

    @Override
    public List<Type> addPro()throws Exception {

        return this.goodsDAO.findAllType();
    }

    @Override
    public Goods upload(Goods goods) {
        this.goodsDAO.upload(goods);
        return goods;
    }

    @Override
    public void add(Goods goods)throws Exception {

        Map<String,Object> map=new HashMap<>();
        map.put("gname",goods.getGname());
        map.put("desc",goods.getDesc());
        map.put("price",goods.getPrice());
        map.put("putday",goods.getPutday());
        map.put("gimg",goods.getGimg());
        map.put("tid",goods.getType().getTid());
        map.put("uid",goods.getUser().getUid());
        System.out.println(goods);
        this.goodsDAO.add(goods);
    }

    @Override
    public Map<String,Object> list(Map<String, Object> map)throws Exception {
        Map<String,Object> map1=new HashMap<>();
        map1.put("allRecorders",this.goodsDAO.count(map));
        map1.put("allGoods",this.goodsDAO.findSplit(map));
        return map1;
    }

    @Override
    public Goods editPro(int gid)throws Exception {

        return this.goodsDAO.findByID(gid);
    }

    @Override
    public void edit(Goods goods)throws Exception {
        goods.setPutday(new Date());
         this.goodsDAO.edit(goods);
    }

    @Override
    public void delete(String[] ids) {
        this.goodsDAO.delete(ids);
    }
}
