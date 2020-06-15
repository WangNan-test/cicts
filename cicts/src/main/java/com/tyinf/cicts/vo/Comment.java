package com.tyinf.cicts.vo;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 评论表
 */
@Component
public class Comment {
    private Integer id; //评论的ID
    private Integer uid;    //评论用户的ID；
    private String uname;
    private Integer gid;    //评论商品的ID；
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date opertime;  //评论的时间
    private String content; //评论内容

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
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

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", uid=" + uid +
                ", gid=" + gid +
                ", opertime=" + opertime +
                ", content='" + content + '\'' +
                '}';
    }
}
