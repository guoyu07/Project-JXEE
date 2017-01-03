package com.jxjee.dao;

import com.jxjee.entity.QcbInfo;
import com.jxjee.entity.ThePage;

/**
 * Created by zz on 2016/11/24.
 */
public interface QcbDao {
    QcbInfo add(final QcbInfo qcbInfo);

    QcbInfo getQcb(int id);

    ThePage<QcbInfo> getQcbPage(String keyname, int city, int industry, int pageno,int qstatus);

    boolean update(QcbInfo qcbInfo);

    boolean delete(int id);
}
