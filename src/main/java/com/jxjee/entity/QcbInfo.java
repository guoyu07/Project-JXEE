package com.jxjee.entity;

/**
 * Created by zz on 2016/11/24.
 */
public class QcbInfo {
    private int id;
    private String cname;
    private int city;
    private String memo;
    private int industry;
    private String imgthumb;
    private int createrid;
    private String createtime;
    private int qstatus;

    private String creatername;
    private String industryname;
    private String cityname;

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

    public int getCity() {
        return city;
    }

    public void setCity(int city) {
        this.city = city;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public int getIndustry() {
        return industry;
    }

    public void setIndustry(int industry) {
        this.industry = industry;
    }

    public String getImgthumb() {
        return imgthumb;
    }

    public void setImgthumb(String imgthumb) {
        this.imgthumb = imgthumb;
    }

    public int getCreaterid() {
        return createrid;
    }

    public void setCreaterid(int createrid) {
        this.createrid = createrid;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public int getQstatus() {
        return qstatus;
    }

    public void setQstatus(int qstatus) {
        this.qstatus = qstatus;
    }

    public String getIndustryname() {
        return industryname;
    }

    public void setIndustryname(String industryname) {
        this.industryname = industryname;
    }

    public String getCreatername() {
        return creatername;
    }

    public void setCreatername(String creatername) {
        this.creatername = creatername;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }
}
