package com.tyinf.cicts.service.impl;

import com.tyinf.cicts.dao.ICartDAO;
import com.tyinf.cicts.dao.IOrderDAO;
import com.tyinf.cicts.service.IOrderService;
import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.Order;
import com.tyinf.cicts.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class OrderServiceImpl implements IOrderService {
    @Autowired
    private IOrderDAO orderDAO;
    @Autowired
    private ICartDAO cartDAO;
    @Override
    public boolean add(User user) {
        Order order=new Order();
        order.setUid(user.getUid());
        order.setTotal(cartDAO.allprice(user.getUid()));
        order.setSum(cartDAO.count(user.getUid()));
        if(cartDAO.allprice(user.getUid())!=null) {
            this.orderDAO.add(order);
            Set<Integer> gidAll = cartDAO.selectGid(user.getUid());
            if (order.getOid() != 0) {
                Map<String, Object> map = new HashMap<>();
                map.put("oid", order.getOid());
                map.put("gids", gidAll);
                this.orderDAO.addGods(map);
                this.cartDAO.deleteAll(user.getUid());
                return true;
            }
            return false;
        }
        return false;
    }

    @Override
    public Map<String,Object> list(Integer uid) {
        Map<String,Object> map =new HashMap<>();
        map.put("list",this.orderDAO.list(uid));
        map.put("buyList",this.orderDAO.buyList(uid));
        return map;

    }

    @Override
    public void pay(Integer oid) {
        this.orderDAO.pay(oid);
    }

    @Override
    public void cancel(Integer oid) {
        this.orderDAO.cancel(oid);
    }

    @Override
    public Map<String, Object> orderGoods(Integer oid) {
        Map<String,Object> map=new HashMap<>();
        Order order=this.orderDAO.findByID(oid);
        User user=this.orderDAO.orderUser(oid);
        List<Goods> list=this.orderDAO.orderGoods(oid);
        System.out.println(order);
        map.put("order",order);
        map.put("user",user);
        map.put("list",list);
        return map;
    }

}
