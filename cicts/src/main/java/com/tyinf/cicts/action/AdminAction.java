package com.tyinf.cicts.action;

import com.tyinf.cicts.service.IAdminService;
import com.tyinf.cicts.util.action.AbstractAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * 管理员控制层
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminAction extends AbstractAction {
    @Autowired
    private IAdminService adminService;

    @ResponseBody
    @RequestMapping(value = "/list")
    public ModelAndView list(Integer cp, Integer ls, String col, String kw)throws Exception{
        ModelAndView mav=new ModelAndView("admin/goods/GoodsList");

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


        String columnData = "商品名称:gname|商品介绍:desc" ;
        Map<String, Object> list = this.adminService.list(map);


        mav.addObject("columnData",columnData);
        mav.addObject("allRecorders",list.get("allRecorders"));
        mav.addObject("allGoods",list.get("allGoods"));
        mav.addObject("lineSize",lineSize);
        mav.addObject("currentPage",currentPage);
        mav.addObject("column",col);
        mav.addObject("keyword",kw);
        mav.addObject("url","admin/list");

        return mav;
    }
}
