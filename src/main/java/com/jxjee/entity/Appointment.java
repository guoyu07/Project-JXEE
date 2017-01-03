package com.jxjee.entity;

import java.math.BigDecimal;

/**
 * Created by zz on 2016/10/26.
 */
public class Appointment {
    private int id;
    private String cname;
    private String cno;
    private String ctel;
    private BigDecimal iamount;
    private String memo;
    private String pname;
    private String wherefrom;
    private int astate;
    private String dealman;
    private String dealtime;
    private String createtime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public String getCtel() {
        return ctel;
    }

    public void setCtel(String ctel) {
        this.ctel = ctel;
    }

    public BigDecimal getIamount() {
        return iamount;
    }

    public void setIamount(BigDecimal iamount) {
        this.iamount = iamount;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getWherefrom() {
        return wherefrom;
    }

    public void setWherefrom(String wherefrom) {
        this.wherefrom = wherefrom;
    }

    public int getAstate() {
        return astate;
    }

    public void setAstate(int astate) {
        this.astate = astate;
    }

    public String getDealman() {
        return dealman;
    }

    public void setDealman(String dealman) {
        this.dealman = dealman;
    }

    public String getDealtime() {
        return dealtime;
    }

    public void setDealtime(String dealtime) {
        this.dealtime = dealtime;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }
}
