package com.tyinf.cicts.action;

import com.tyinf.cicts.service.ITypeService;
import com.tyinf.cicts.util.action.AbstractAction;
import com.tyinf.cicts.vo.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 商品分类控制层
 */
@Controller
@RequestMapping(value = "/type")
public class TypeAction extends AbstractAction {
    @Autowired
    private ITypeService typeService;

    /**
     * 查询出所有商品类型
     * @return  所有商品类型
     */
    @ResponseBody
    @RequestMapping(value = "/list")
    public List<Type> list(){
        return this.typeService.list();
    }

    /**
     * 修改前的准备工作
     * @param tid   类型编号
     */
    @RequestMapping(value="/editPro")
    public ModelAndView editPro(Integer tid){
        ModelAndView mv=new ModelAndView("admin/type/TypeEdit");
        Type type = this.typeService.editPri(tid);
        mv.addObject("type",type);
        return mv;
    }

    /**
     * 修改商品类型
     * @param type 商品类型信息
     */
    @ResponseBody
    @RequestMapping(value = "/edit")
    public int edit(Type type){
        try {
            this.typeService.edit(type);
            return 0;
        }catch (Exception e){
            e.printStackTrace();
            return 1;
        }
    }
}
