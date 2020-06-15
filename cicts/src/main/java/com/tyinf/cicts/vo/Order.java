package com.tyinf.cicts.vo;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

/**
 * 订单表
 */
@Component
public class Order {
    private Integer oid;    //订单ID
    private Integer uid;    //订单用户ID
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date time;  //订单时间
    private Double total;   //订单总金额
    private String tamark;  //订单备注
    private Integer sum;    //订单商品总数
    private Integer status; //订单状态(1为未支付，2为已支付，3为已取消)

    public Integer getSum() {
        return sum;
    }

    public void setSum(Integer sum) {
        this.sum = sum;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public String getTamark() {
        return tamark;
    }

    public void setTamark(String tamark) {
        this.tamark = tamark;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" +
                "oid=" + oid +
                ", uid=" + uid +
                ", time=" + time +
                ", total=" + total +
                ", tamark='" + tamark + '\'' +
                ", status=" + status +
                '}';
    }
}
