package com.tyinf.cicts.service;

import com.tyinf.cicts.vo.Type;

import java.util.List;

public interface ITypeService {

    /**
     * 查询出所有商品类型
     * @return 所有商品类型
     */
    List<Type> list();

    /**
     * 根据类型ID查询出类型信息
     * @return ；类型信息
     */
    Type editPri(Integer tid);

    /**
     * 修改类型信息
     * @param type 要修改的类型信息
     */
    void edit(Type type);
}
