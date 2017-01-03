package com.jxjee.dao;

import com.jxjee.entity.Dict;

import java.util.List;

/**
 * Created by zz on 2016/11/25.
 */
public interface DictDao {
    List<Dict> getList(String dtype);
}
