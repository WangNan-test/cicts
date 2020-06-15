package com.tyinf.cicts.vo;

import org.springframework.stereotype.Component;

import java.util.StringTokenizer;

/**
 * 收货地址表
 */
@Component
public class Profile {
    private Integer pid;    //收货地址ID
    private Integer uid;    //收货人ID
    private String pname;   //收货人姓名
    private String phone;   //收货人电话
    private String address; //收货人地址
    private Double allprice;    //订单金额
    private Integer status; //收货地址状态；

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Double getAllprice() {
        return allprice;
    }

    public void setAllprice(Double allprice) {
        this.allprice = allprice;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Profile{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", status=" + status +
                '}';
    }
}
