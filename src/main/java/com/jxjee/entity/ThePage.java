package com.jxjee.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by zz on 2012-9-30 22:59:38
 * 页对象
 */
public class ThePage<E> {
    private int current;
    private int totalpages;
    private int totalrecord;
    private List<E> pageItems = new ArrayList<E>();

    public int getCurrent() {
        return current;
    }

    public void setCurrent(int current) {
        this.current = current;
    }

    public int getTotalpages() {
        return totalpages;
    }

    public void setTotalpages(int totalpages) {
        this.totalpages = totalpages;
    }

    public List<E> getPageItems() {
        return pageItems;
    }

    public void setPageItems(List<E> pageItems) {
        this.pageItems = pageItems;
    }

    public int getTotalrecord() {
        return totalrecord;
    }

    public void setTotalrecord(int totalrecord) {
        this.totalrecord = totalrecord;
    }
}
