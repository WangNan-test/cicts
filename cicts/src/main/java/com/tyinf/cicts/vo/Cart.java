package com.tyinf.cicts.vo;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 购物车表
 */
@Component
public class Cart {
    private Integer cid;    //购物车ID
    private Integer gid;    //商品ID
    private Integer uid;    //添加人ID
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date addday;    //添加时间

    public Date getAddday() {
        return addday;
    }

    public void setAddday(Date addday) {
        this.addday = addday;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}
