package com.tyinf.cicts.vo;

import org.springframework.stereotype.Component;

/**
 * 类型表
 */
@Component
public class Type {

    private Integer tid;    //类型ID
    private String tname;   //类型名称

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    @Override
    public String toString() {
        return "Type{" +
                "tid=" + tid +
                ", tname='" + tname + '\'' +
                '}';
    }
}
