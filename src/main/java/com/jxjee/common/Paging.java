package com.jxjee.common;

/**
 * @author zznet
 * @createdate 2012-10-9 下午8:44:24
 * @modificationdate 2012-10-9 下午8:44:24
 * @describe 通过当前页码，总页数及翻页方式（增/减）得到起始和结束记录号及下页页码
 */
public class Paging implements PageSize {
    private int start;
    private int end;
    private int willpage;

    public Paging() {
        this.start = 0;
        this.end = 0;
        this.willpage = 0;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public int getWillpage() {
        return willpage;
    }

    public void setWillpage(int willpage) {
        this.willpage = willpage;
    }

    public void getpaging(int currpage, int type, int totsize) throws Exception {
        if (type == 0) {
            setWillpage(1);
            setStart(0);
            setEnd(pagesize);
        } else if (type == 2) {
            setWillpage((int) Math.ceil(totsize / pagesize) + 1);
            setStart((int) Math.ceil(totsize / pagesize) * pagesize);
            setEnd(totsize);
        } else if (type == 1) {
            if (currpage < totsize) {
                setWillpage(currpage + 1);
                setStart((willpage - 1) * pagesize + 1);
                setEnd(willpage * pagesize);
            } else {
                setWillpage(currpage);
                setStart((int) Math.ceil(totsize / pagesize) * pagesize);
                setEnd(totsize);
            }
        } else if (type == -1) {
            if (currpage <= 1) {
                setStart(0);
                setEnd(pagesize);
            } else {
                setStart((willpage - 1) * pagesize + 1);
                setEnd(willpage * pagesize);
            }
        } else {
            throw new Exception();
        }
    }
}