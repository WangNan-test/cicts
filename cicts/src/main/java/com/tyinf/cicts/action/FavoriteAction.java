package com.tyinf.cicts.action;

import com.tyinf.cicts.service.IFavoriteService;
import com.tyinf.cicts.util.action.AbstractAction;
import com.tyinf.cicts.vo.Favorite;
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
 * 收藏商品控制层
 */
@Controller
@RequestMapping(value = "/favorite")
public class FavoriteAction extends AbstractAction {
    @Autowired
    private IFavoriteService favoriteService;

    /**
     * 添加商品到收藏
     * @param favorite  收藏信息
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/add")
    public String add(Favorite favorite){
        User user=(User)super.getSession().getAttribute("user");
        favorite.setUid(user.getUid());
        if(this.favoriteService.flag(favorite)==null){
            this.favoriteService.add(favorite);
            return "收藏成功";
        }else{
            return "请勿重复收藏";
        }
    }

    /**
     * 展示所有收藏商品
     * @return
     */
    @RequestMapping("/list")
    public ModelAndView list(){
        ModelAndView mav=new ModelAndView("member/member_collect");
        User user=(User)super.getSession().getAttribute("user");
        List<Favorite> list=this.favoriteService.list(user.getUid());
        mav.addObject("list",list);
        return mav;
    }

    /**
     * 删除收藏信息
     * @param favorite
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/delete")
    public String delete(Favorite favorite){
        User user=(User)super.getSession().getAttribute("user");
        favorite.setUid(user.getUid());
        this.favoriteService.delete(favorite);
        return "删除成功";
    }
}
