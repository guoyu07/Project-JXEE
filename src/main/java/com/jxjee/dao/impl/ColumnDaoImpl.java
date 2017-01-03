package com.jxjee.dao.impl;

import com.jxjee.dao.ColumnDao;
import com.jxjee.entity.ColumnInfo;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zz on 2016/10/4.
 */

@Repository("columndao")
public class ColumnDaoImpl implements ColumnDao {
    @Resource
    private JdbcTemplate jdbctemplate;

    public List<ColumnInfo> getColList() {
        String sql = "select a.id,a.columnname from columninfo a";
        List<ColumnInfo> columnInfoList = new ArrayList<ColumnInfo>();
        try {
            RowMapper<ColumnInfo> mapper = new RowMapper<ColumnInfo>() {
                public ColumnInfo mapRow(ResultSet rs, int rowNum)
                        throws SQLException {
                    ColumnInfo a = new ColumnInfo();
                    a.setId(rs.getInt(1));
                    a.setColumnname(rs.getString(2));

                    return a;
                }
            };
            columnInfoList = jdbctemplate.query(sql,
                    mapper);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        return columnInfoList;
    }

    public ColumnInfo getColumnInfo(int id) {
        String sql = "SELECT a.id,a.columnname from columninfo a where a.id = ? ";

        ColumnInfo columnInfo = new ColumnInfo();
        try {
            columnInfo = this.jdbctemplate.queryForObject(sql,
                    new Object[]{id}, new RowMapper<ColumnInfo>() {
                        public ColumnInfo mapRow(ResultSet rs, int rowNum)
                                throws SQLException {
                            ColumnInfo a = new ColumnInfo();
                            a.setId(rs.getInt(1));
                            a.setColumnname(rs.getString(2));
                            return a;
                        }
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return columnInfo;
    }

    @Transactional
    public boolean update(ColumnInfo columnInfo) {
        String mysql = "update columninfo set columnname=? where id=?";

        boolean result = false;

        try {
            this.jdbctemplate.update(mysql, columnInfo.getColumnname(), columnInfo.getId());
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }


}
