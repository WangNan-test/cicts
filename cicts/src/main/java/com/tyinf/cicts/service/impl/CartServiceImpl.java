package com.tyinf.cicts.service.impl;

import com.tyinf.cicts.dao.ICartDAO;
import com.tyinf.cicts.service.ICartService;
import com.tyinf.cicts.vo.Cart;
import com.tyinf.cicts.vo.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class CartServiceImpl implements ICartService {
    @Autowired
    private ICartDAO cartDAO;
    @Override
    public void addCart(Cart cart) {
            this.cartDAO.addCart(cart);
    }

    @Override
    public Integer count(Integer uid) {
        return this.cartDAO.count(uid);
    }

    @Override
    public List<Goods> list(Integer uid) {
        return this.cartDAO.list(uid);
    }

    @Override
    public void delete(Map<String, Object> map) {
        this.cartDAO.delete(map);
    }

    @Override
    public void deleteAll(Integer uid) {
        this.cartDAO.deleteAll(uid);
    }

    @Override
    public Double allprice(Integer uid) {
        return this.cartDAO.allprice(uid);
    }

    @Override
    public Goods flag(Cart cart) {
        return this.cartDAO.flag(cart);
    }
}
