package com.tyinf.cicts.dao;

import com.tyinf.cicts.vo.Goods;
import com.tyinf.cicts.vo.Type;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Mapper
@Repository
public interface IGoodsDAO {
    /**
     * 查询出所有的商品类型用于商品增加与修改
     * @return  所有的商品类型
     */
    public List<Type> findAllType();

    /**
     * 上传商品图片
     * @param goods 含有商品图片的商品对象
     */
    void upload(Goods goods);

    /**
     * 增加商品信息
     * @param goods 商品信息
     * @throws SQLException JDBC异常
     */
    void add(Goods goods)throws SQLException;

    /**
     * 查询所有商品的个数
     * @return  所有商品的个数
     * @throws SQLException JDBC异常
     */
    public Integer count(Map<String,Object> map)throws SQLException;

    /**
     * 进行Goods列表的分页操作
     * @return
     * @throws SQLException
     */
    public List<Goods> findSplit(Map<String,Object> map)throws SQLException;

    /**
     * 根据商品ID查询商品数据
     * @param gid   商品id
     * @return  商品数据
     */
    Goods findByID(int gid);

    /**
     * 商品修改操作
     * @param goods 商品修改的数据
     */
    void edit(Goods goods);

    /**
     * 批量删除商品
     * @param ids
     */
    void delete(String[] ids);
}
