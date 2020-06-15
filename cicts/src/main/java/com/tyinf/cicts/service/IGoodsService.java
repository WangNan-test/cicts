package com.tyinf.cicts.service;

import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.Type;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface IGoodsService {
    /**
     * 用户商品增加前的查询操作
     * @return 商品类型集合
     */
    public List<Type> addPro()throws Exception;

    /**
     * 异步上传商品图片
     * @param goods  商品图片的文件名
     * @return 商品ID
     */
    Goods upload(Goods goods) throws Exception;

    /**
     * 增加商品
     * @param goods 增加商品的信息
     */
    void add(Goods goods)throws Exception;

    /**
     * 进行商品分页显示
     * @param map   分页所需要的操作
     * @return  分页的商品信息
     */
    Map<String,Object> list(Map<String,Object> map)throws Exception;

    /**
     * 商品修改前的商品数据查询操作
     * @param gid 商品 id
     * @return  商品数据
     */
    Goods editPro(int gid)throws Exception;

    /**
     * 进行商品的修改操作
     * @param goods 商品修改
     */
    void edit(Goods goods)throws Exception;

    /**
     * 进行批量删除商品
     * @param ids   商品ID的集合
     */
    void delete(String[] ids);
}
