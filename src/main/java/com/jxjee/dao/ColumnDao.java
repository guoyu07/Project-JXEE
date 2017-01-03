package com.jxjee.dao;

import com.jxjee.entity.ColumnInfo;

import java.util.List;

/**
 * Created by zz on 2016/10/4.
 */
public interface ColumnDao {
    List<ColumnInfo> getColList();

    ColumnInfo getColumnInfo(int id);

    boolean update(ColumnInfo columnInfo);

}
