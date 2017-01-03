package com.jxjee.entity;

/**
 * Created by zz on 2016/10/26.
 */
public class Question {
    private int id;
    private String bname;
    private String uname;
    private String tel;
    private String memo;
    private String resign;
    private String wherefrom;
    private String qinfo;
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

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getResign() {
        return resign;
    }

    public void setResign(String resign) {
        this.resign = resign;
    }

    public String getWherefrom() {
        return wherefrom;
    }

    public void setWherefrom(String wherefrom) {
        this.wherefrom = wherefrom;
    }

    public String getQinfo() {
        return qinfo;
    }

    public void setQinfo(String qinfo) {
        this.qinfo = qinfo;
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
