package com.tyinf.cicts.vo;

import org.springframework.stereotype.Component;

/**
 * 管理员表
 */
@Component
public class Admin {
    private Integer aid;    //管理员ID
    private String aname;   //管理员名称
    private String password;    //管理员密码
    private String filename;    //管理员头像文件名

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "aid=" + aid +
                ", aname='" + aname + '\'' +
                ", password='" + password + '\'' +
                ", filename='" + filename + '\'' +
                '}';
    }
}
