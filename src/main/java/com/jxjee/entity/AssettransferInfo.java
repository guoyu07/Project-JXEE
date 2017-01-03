package com.jxjee.entity;

import java.math.BigDecimal;

/**
 * Created by zz on 2017/1/3.
 */
public class AssettransferInfo {
    private int id;
    private String pno;
    private int assettype;
    private String cname;
    private String listname;
    private BigDecimal listmoney;
    private int astatus;
    private String enddate;
    private String aurl;
    private int createrid;
    private String createdate;
    private int cstatus;

    private String assettypename;
    private String astatusname;
    private String creatername;
    private String cstatusname;

    public String getAssettypename() {
        return assettypename;
    }

    public void setAssettypename(String assettypename) {
        this.assettypename = assettypename;
    }

    public String getAstatusname() {
        return astatusname;
    }

    public void setAstatusname(String astatusname) {
        this.astatusname = astatusname;
    }

    public String getCreatername() {
        return creatername;
    }

    public void setCreatername(String creatername) {
        this.creatername = creatername;
    }

    public String getCstatusname() {
        return cstatusname;
    }

    public void setCstatusname(String cstatusname) {
        this.cstatusname = cstatusname;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPno() {
        return pno;
    }

    public void setPno(String pno) {
        this.pno = pno;
    }

    public int getAssettype() {
        return assettype;
    }

    public void setAssettype(int assettype) {
        this.assettype = assettype;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getListname() {
        return listname;
    }

    public void setListname(String listname) {
        this.listname = listname;
    }

    public BigDecimal getListmoney() {
        return listmoney;
    }

    public void setListmoney(BigDecimal listmoney) {
        this.listmoney = listmoney;
    }

    public int getAstatus() {
        return astatus;
    }

    public void setAstatus(int astatus) {
        this.astatus = astatus;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    public String getAurl() {
        return aurl;
    }

    public void setAurl(String aurl) {
        this.aurl = aurl;
    }

    public int getCreaterid() {
        return createrid;
    }

    public void setCreaterid(int createrid) {
        this.createrid = createrid;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public int getCstatus() {
        return cstatus;
    }

    public void setCstatus(int cstatus) {
        this.cstatus = cstatus;
    }
}
