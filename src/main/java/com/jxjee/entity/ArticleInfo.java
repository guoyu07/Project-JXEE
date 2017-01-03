package com.jxjee.entity;

import java.math.BigDecimal;

/**
 * Created by zz on 2016/9/28 15:15.
 */
public class ArticleInfo {
    private int id;
    private String atitle;
    private String atitle_min;
    private String thumb_pic;
    private String atext;
    private int createrid;
    private String creatername;
    private String createdatetime;
    private int columnid;
    private String columnname;
    private int readcount;
    private int goodcount;
    private BigDecimal orderscore;
    private String profile;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAtitle() {
        return atitle;
    }

    public void setAtitle(String atitle) {
        this.atitle = atitle;
    }

    public String getAtitle_min() {
        return atitle_min;
    }

    public void setAtitle_min(String atitle_min) {
        this.atitle_min = atitle_min;
    }

    public String getThumb_pic() {
        return thumb_pic;
    }

    public void setThumb_pic(String thumb_pic) {
        this.thumb_pic = thumb_pic;
    }

    public String getAtext() {
        return atext;
    }

    public void setAtext(String atext) {
        this.atext = atext;
    }

    public String getCreatedatetime() {
        return createdatetime;
    }

    public void setCreatedatetime(String createdatetime) {
        this.createdatetime = createdatetime;
    }

    public int getColumnid() {
        return columnid;
    }

    public void setColumnid(int columnid) {
        this.columnid = columnid;
    }

    public String getColumnname() {
        return columnname;
    }

    public void setColumnname(String columnname) {
        this.columnname = columnname;
    }

    public int getReadcount() {
        return readcount;
    }

    public void setReadcount(int readcount) {
        this.readcount = readcount;
    }

    public int getGoodcount() {
        return goodcount;
    }

    public void setGoodcount(int goodcount) {
        this.goodcount = goodcount;
    }

    public BigDecimal getOrderscore() {
        return orderscore;
    }

    public void setOrderscore(BigDecimal orderscore) {
        this.orderscore = orderscore;
    }

    public int getCreaterid() {
        return createrid;
    }

    public void setCreaterid(int createrid) {
        this.createrid = createrid;
    }

    public String getCreatername() {
        return creatername;
    }

    public void setCreatername(String creatername) {
        this.creatername = creatername;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
}
