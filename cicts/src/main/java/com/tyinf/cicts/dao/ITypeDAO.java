package com.tyinf.cicts.dao;

import com.tyinf.cicts.vo.Type;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ITypeDAO {
    /**
     * 查询出所有商品类型
     * @return
     */
    List<Type> findAll();

    /**
     * 根据类型ID查询出类型信息
     * @param tid 类型id
     * @return 类型信息
     */
    Type findById(Integer tid);

    /**
     * 根据类型D修改类型信息
     * @param type
     */
    void upDate(Type type);
}
