package com.jxjee.dao.impl;

import com.jxjee.dao.DictDao;
import com.jxjee.entity.Dict;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by zz on 2016/11/28.
 */
@Repository("dictdao")
public class DictDaoImpl implements DictDao {
    @Resource
    private JdbcTemplate jdbctemplate;

    public List<Dict> getList(String dtype) {
        String sql = "select a.dtype,a.dvalue,a.dmemo,a.typememo from dict a where a.dtype=? order by a.dvalue";

        RowMapper<Dict> mapper = new RowMapper<Dict>() {
            public Dict mapRow(ResultSet rs, int rowNum) throws SQLException {
                Dict a = new Dict();
                a.setDtype(rs.getString(1));
                a.setDvalue(rs.getString(2));
                a.setDmemo(rs.getString(3));
                a.setTypememo(rs.getString(4));
                return a;
            }
        };
        return jdbctemplate.query(sql, new Object[]{dtype}, mapper);
    }
}
