package com.jxjee.dao;

import com.jxjee.entity.LuYanInfo;
import com.jxjee.entity.ThePage;

/**
 * Created by zz on 2016/11/24.
 */
public interface LuYanDao {
    LuYanInfo add(final LuYanInfo luYanInfo);

    LuYanInfo getLuYan(int id);

    ThePage<LuYanInfo> getLuYanInfoPage(String keyname, int city, int industry, int financing, int pageno);

    boolean update(LuYanInfo luYanInfo);

    boolean delete(int id);
}
