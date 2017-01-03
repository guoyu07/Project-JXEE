package com.jxjee.dao;

import com.jxjee.entity.JXuser;

/**
 * Created by zz on 2016/10/25.
 */
public interface JXuserDao {
    JXuser addJXuser(JXuser jxuser);

    JXuser getJXuser(int id);

    JXuser checkJXuser(String username, String pswd);
}
