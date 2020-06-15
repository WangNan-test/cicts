package com.tyinf.cicts.vo;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 收藏表
 */
@Component
public class Favorite {
    private Integer fid;    //收藏表ID
    private Integer uid;    //收藏用户ID
    private Integer gid;    //收藏用户ID;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date time;  //收藏的时间

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
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

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Favorite{" +
                "fid=" + fid +
                ", uid=" + uid +
                ", gid=" + gid +
                ", time=" + time +
                '}';
    }
}
