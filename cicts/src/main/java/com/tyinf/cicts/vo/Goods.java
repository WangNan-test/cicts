package com.tyinf.cicts.vo;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import javax.xml.crypto.Data;
import java.io.Serializable;
import java.util.Date;

/**
 * 商品表
 */
@Component
public class Goods implements Serializable {
    private Integer gid;    //商品ID
    private String gname;//商品名称
    private String desc;    //商品描述
    private Double price;   //商品价格
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date putday;    //商品上架时间
    private String gimg;    //商品图片
    private Type type;  //商品类型
    private User user; //商品上传用户
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date opertime;  //商品评论时间
    private String content; //商品评论内容
    private Integer id;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getOpertime() {
        return opertime;
    }

    public void setOpertime(Date opertime) {
        this.opertime = opertime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getPutday() {
        return putday;
    }

    public void setPutday(Date putday) {
        this.putday = putday;
    }

    public String getGimg() {
        return gimg;
    }

    public void setGimg(String gimg) {
        this.gimg = gimg;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "gid=" + gid +
                ", gname='" + gname + '\'' +
                ", desc='" + desc + '\'' +
                ", price=" + price +
                ", putday=" + putday +
                ", gimg='" + gimg + '\'' +
                ", type=" + type +
                ", user=" + user +
                ", opertime=" + opertime +
                ", coutent='" + content + '\'' +
                '}';
    }
}
