package com.tyinf.cicts.action;

import com.tyinf.cicts.service.ICartService;
import com.tyinf.cicts.util.action.AbstractAction;
import com.tyinf.cicts.vo.Cart;
import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 购物车功能控制层
 * @param <goods>
 */
@Controller
@RequestMapping(value = "/cart")
public class CartAction<goods> extends AbstractAction {
    @Autowired
    private ICartService cartService;

    /**
     * 添加商品到购物车
     * @param cart 商品ID
     * @return  添加状态
     */
    @ResponseBody
    @RequestMapping(value = "/add")
    public String add(Cart cart){

        User user=(User)super.getSession().getAttribute("user");
        cart.setUid(user.getUid());
       if( this.cartService.flag(cart)==null){
           this.cartService.addCart(cart);
           return "添加成功";
       }else{
           return "不能重复添加一件商品噢！！";
       }

    }

    /**
     * 购物车中所有商品的数量
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/count")
    public int count(){
        User user=(User)super.getSession().getAttribute("user");
        if(user==null){
            return 0;
        }else{
            return  this.cartService.count(user.getUid());
        }
    }

    /**
     * 展示所有购物车中商品的信息
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/list")
    public ModelAndView list(){
        ModelAndView mav=new ModelAndView("cart/cart");
        User user=(User)super.getSession().getAttribute("user");
        List<Goods> list=this.cartService.list(user.getUid());
        mav.addObject("list",list);
        return mav;
    }

    /**
     * 删除购物车中商品
     * @param gid
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/delete")
    public String delete(Integer gid){
        User user=(User)super.getSession().getAttribute("user");
        Map<String,Object> map=new HashMap<>();
        map.put("gid",gid);
        map.put("uid",user.getUid());
        this.cartService.delete(map);
        return "删除成功";
    }

    /**
     * 清空购物车
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/deleteAll")
    public String deleteAll(){
        User user=(User)super.getSession().getAttribute("user");
        this.cartService.deleteAll(user.getUid());
        return "删除成功";
    }

    /**
     * 购物车中所有商品的总金额
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/allprice")
    public Double allprice(){
        User user=(User)super.getSession().getAttribute("user");
        if(this.cartService.allprice(user.getUid())==null){
            return 0.00;
        }
        return this.cartService.allprice(user.getUid());
    }
}
