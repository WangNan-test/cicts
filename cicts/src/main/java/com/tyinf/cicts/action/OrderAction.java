package com.tyinf.cicts.action;

import com.tyinf.cicts.service.IOrderService;
import com.tyinf.cicts.util.action.AbstractAction;
import com.tyinf.cicts.vo.Buy;
import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.Order;
import com.tyinf.cicts.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * 订单控制层
 */
@Controller
@RequestMapping(value = "/order")
public class OrderAction extends AbstractAction {
    @Autowired
    private IOrderService orderService;

    /**
     * 增加订单
     */
    @ResponseBody
    @RequestMapping(value = "/add")
    private int add(){
        User user=(User)super.getSession().getAttribute("user");
        if(this.orderService.add(user)){
            return 1;
        }else{
            return 0;
        }
    }
    /**
     * 展示所有订单
     */
    @ResponseBody
    @RequestMapping(value = "/list")
    public ModelAndView list(){
        ModelAndView mav=new ModelAndView("member/member_order");
        User user=(User)super.getSession().getAttribute("user");
        Map<String,Object> map=this.orderService.list(user.getUid());
        List<Order> list=(List<Order>)map.get("list");
        List<Buy> buyList=(List<Buy>)map.get("buyList");
         mav.addObject("list",list);
         mav.addObject("buyList",buyList);
        return mav;
    }

    /**
     * 支付功能
     * @param oid 订单编号
     */
    @ResponseBody
    @RequestMapping(value = "/pay")
    public String pay( Integer oid){
        this.orderService.pay(oid);
        return "支付成功";
    }

    /**
     * 取消订单
     * @param oid   订单编号
     */
    @ResponseBody
    @RequestMapping(value = "/cancel")
    public String cancel(Integer oid){
        this.orderService.cancel(oid);
         return "取消成功";
    }

    /**
     * 查询该订单所有商品
     * @param oid 订单编号
     */
    @RequestMapping(value = "/allGoods")
    public ModelAndView orderGoods(Integer oid){
        ModelAndView mav=new ModelAndView("member/member_order_detail");
        Map<String,Object> map=this.orderService.orderGoods(oid);
        Order order=(Order)map.get("order");
        User user=(User)map.get("user");
        List<Goods> list=(List<Goods>)map.get("list");

        mav.addObject("order",order);
        mav.addObject("user",user);
        mav.addObject("list",list);
        return mav;
    }
}
