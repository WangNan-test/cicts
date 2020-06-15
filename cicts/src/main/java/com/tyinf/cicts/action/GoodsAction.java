package com.tyinf.cicts.action;

import com.tyinf.cicts.service.IGoodsService;
import com.tyinf.cicts.util.action.AbstractAction;
import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.Type;
import com.tyinf.cicts.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

@Controller
@RequestMapping(value = "/goods")
public class GoodsAction extends AbstractAction {

    @Autowired
    private IGoodsService goodsService;

    /**
     * 添加商品的前的准备工作
     * @return  包含有商品类型的List 与跳转路径
     */
    @RequestMapping(value = "/addpro")
    public ModelAndView addPro()throws Exception{
        ModelAndView mav=new ModelAndView("/member/goods/goods_add");
        List<Type> types = this.goodsService.addPro();
        mav.addObject("types",types);
        return mav;
    }
    @RequestMapping(value = "/add")
    public String add(Goods goods ,MultipartFile photo)throws Exception{
        ModelAndView mav=new ModelAndView("member/goods/goods_list");
        String filename = super.upload(photo);
        goods.setGimg(filename);
        this.goodsService.add(goods);
        return "redirect:/goods/list";
    }

    /**
     * s上传商品图片
     * @param gimg  商品图片的文件
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/upload")
    public ModelAndView uploadImg( MultipartFile gimg)throws Exception{
        ModelAndView mav=new ModelAndView("member/goods/goods_add");
        String filename = super.upload(gimg);
        Goods goods=new Goods();
        goods.setGimg(filename);
         goods=this.goodsService.upload(goods);
         mav.addObject("goods",goods);
        List<Type> types = this.goodsService.addPro();
        mav.addObject("types",types);
        return mav;
    }
    @ResponseBody
    @RequestMapping(value = "/list")
    public ModelAndView list(Integer cp,Integer ls,String col,String kw)throws Exception{
        ModelAndView mav=new ModelAndView("member/goods/goods_list");

        int currentPage = 1 ;
        int lineSize = 5; // 根据定义的尺寸来进行控制
        if(cp!=null&&ls!=null){
            currentPage=cp;
            lineSize=ls;
        }

        Map<String,Object> map =new HashMap<>();
        map.put("currentPage",(currentPage-1)*lineSize);
        map.put("lineSize",lineSize);
        map.put("keyword",kw);
        map.put("column",col);
        User user=(User)super.getSession().getAttribute("user");
        map.put("uid",user.getUid());

        String columnData = "商品名称:gname|商品介绍:desc" ;
        Map<String, Object> list = this.goodsService.list(map);


        mav.addObject("columnData",columnData);
        mav.addObject("allRecorders",list.get("allRecorders"));
        mav.addObject("allGoods",list.get("allGoods"));
        mav.addObject("lineSize",lineSize);
        mav.addObject("currentPage",currentPage);
        mav.addObject("column",col);
        mav.addObject("keyword",kw);
        mav.addObject("url","goods/list");

        return mav;
    }
    @RequestMapping(value = "/editpro")
    public ModelAndView edit(int gid)throws Exception{
        ModelAndView mav=new ModelAndView("member/goods/goods_edit");
        Goods goods=goodsService.editPro(gid);
        List<Type> types = this.goodsService.addPro();
        mav.addObject("types",types);
        mav.addObject("goods",goods);
        return mav;
    }

    /**
     * 进行商品的修改操作
     * @param goods 要修改的商品信息
     * @param photo 商品图片
     * @return  重定向路径
     * @throws Exception    模型层异常
     */
    @RequestMapping(value = "/edit")
    public String edit(Goods goods ,MultipartFile photo)throws Exception{
        ModelAndView mav=new ModelAndView("goods/list");
        String filename = super.upload(photo);
        goods.setGimg(filename);
        this.goodsService.edit(goods);
        return "redirect:/goods/list";
    }

    /**
     * 批量删除商品信息
     * @param ids 商品ID集合
     * @return 跳转路径
     */
    @RequestMapping(value = "/delete")
    public String delete(String ids){
        System.out.println(ids);
        String[] split = ids.split(";");
        this.goodsService.delete(split);
        return "redirect:/goods/list";
    }
}
