package com.jxjee.dao;

import com.jxjee.entity.JXadmin;

import java.util.List;

/**
 * Created by zz on 2016/9/28 15:36.
 */
public interface JXadminDao {
    JXadmin getJXadmin(int id);

    JXadmin addJXadmin();

    List<JXadmin> getJXadmin(String username);

    JXadmin checkJXadmin(String username, String pswd);

    boolean update(JXadmin userinfo);

    boolean delete(int id);
}
