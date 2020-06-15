package com.tyinf.cicts.action;

import com.tyinf.cicts.service.ICommentService;
import com.tyinf.cicts.util.action.AbstractAction;
import com.tyinf.cicts.vo.Comment;
import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 用户评论控制层
 */
@Controller
@RequestMapping(value = "/comment")
public class CommentAction extends AbstractAction {
    @Autowired
    private ICommentService commentService;

    /**
     * 评论
     * @param comment   评论信息
     * @return  跳转页面
     */
    @RequestMapping(value = "/add")
    public String add(Comment comment){
        User user=(User)super.getSession().getAttribute("user");
        comment.setUid(user.getUid());
        this.commentService.add(comment);
        return "redirect:/page/gid?gid="+comment.getGid();
    }

    /**
     * 查看自己所有得评论信息
     * @return
     */
    @RequestMapping(value = "/byUid")
    public ModelAndView byUid(){
        ModelAndView mav=new ModelAndView("member/member_comment");
        User user=(User)super.getSession().getAttribute("user");
        List<Goods> list=this.commentService.byUid(user.getUid());
        System.out.println(list);
        mav.addObject("list",list);
        return mav;
    }

    /**
     * 删除评论
     * @param cid
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/delete")
    public String delete(Integer cid){
        this.commentService.delete(cid);
        return "删除成功";
    }
 }
