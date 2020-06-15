package com.tyinf.cicts.action;

import com.tyinf.cicts.service.IPageService;
import com.tyinf.cicts.util.action.AbstractAction;
import com.tyinf.cicts.vo.Comment;
import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/page")
public class PageAction extends AbstractAction {
    @Autowired
    private IPageService pageService;

    /**
     * 用户显示所有商品分类
     *
     * @return 所有商品分类
     * @throws Exception 模型层异常
     */
    @ResponseBody
    @RequestMapping(value = "/type")
    public List<Type> type() throws Exception {

        return this.pageService.findTypeAll();
    }

    /**
     * 进行商品二级页面分级模糊显示
     *
     * @param cp  所在几页
     * @param ls  一页显示几行
     * @param col 查询列
     * @param kw  查询字段
     * @return 跳转路径以及页面显示信息
     * @throws Exception 模型层异常
     */
    @ResponseBody
    @RequestMapping(value = "/list")
    public ModelAndView list(Integer cp, Integer ls, String col, String kw) throws Exception {
        ModelAndView mav = new ModelAndView("page/lists");
        int currentPage = 1;
        int lineSize = 12; // 根据定义的尺寸来进行控制
        if (cp != null && ls != null) {
            currentPage = cp;
            lineSize = ls;
        }

        Map<String, Object> map = new HashMap<>();
        map.put("currentPage", (currentPage - 1) * lineSize);
        map.put("lineSize", lineSize);
        map.put("keyword", kw);
        map.put("column", col);

        String columnData = "商品名称:gname|商品介绍:desc";
        Map<String, Object> list = this.pageService.list(map);

        mav.addObject("columnData", columnData);
        mav.addObject("allRecorders", list.get("allRecorders"));
        mav.addObject("allGoods", list.get("allGoods"));
        System.out.println(list.get("allGoods"));
        mav.addObject("lineSize", lineSize);
        mav.addObject("currentPage", currentPage);
        mav.addObject("column", col);
        mav.addObject("keyword", kw);
        mav.addObject("url", "page/list");
        System.out.println(list.get("allRecorders"));
        return mav;
    }


    @ResponseBody
    @RequestMapping(value = "/listid")
    public ModelAndView listid(Integer cp, Integer ls, String col, String kw, Integer tid) throws Exception {
        ModelAndView mav = new ModelAndView("page/lists");
        int currentPage = 1;
        int lineSize = 12; // 根据定义的尺寸来进行控制
        if (cp != null && ls != null) {
            currentPage = cp;
            lineSize = ls;
        }

        Map<String, Object> map = new HashMap<>();
        map.put("currentPage", (currentPage - 1) * lineSize);
        map.put("lineSize", lineSize);
        map.put("keyword", kw);
        map.put("column", col);
        map.put("tid", tid);

        String columnData = "商品名称:gname|商品介绍:desc";
        Map<String, Object> list = this.pageService.listid(map);

        mav.addObject("columnData", columnData);
        mav.addObject("allRecorders", list.get("allRecorders"));
        mav.addObject("allGoods", list.get("allGoods"));
        mav.addObject("lineSize", lineSize);
        mav.addObject("currentPage", currentPage);
        mav.addObject("column", col);
        mav.addObject("keyword", kw);
        mav.addObject("url", "page/listid");

        return mav;
    }

    @RequestMapping(value = "/gid")
    public ModelAndView ByID(Integer gid) throws Exception {
        ModelAndView mav = new ModelAndView("page/detail");
        Goods goods = this.pageService.byID(gid);
        List<Comment> list = this.pageService.selectComment(gid);
        Integer count = this.pageService.commentCount(gid);
        if (count == null) {
            mav.addObject("count", 0);
        } else {
            mav.addObject("count", count);
        }
        mav.addObject("goods", goods);
        mav.addObject("list", list);
        return mav;
    }

}
