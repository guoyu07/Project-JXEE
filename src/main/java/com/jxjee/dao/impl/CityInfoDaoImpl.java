package com.jxjee.dao.impl;

import com.jxjee.dao.CityInfoDao;
import com.jxjee.entity.CityInfo;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by zz on 2016/12/29.
 */
@Repository("citydao")
public class CityInfoDaoImpl implements CityInfoDao {
    @Resource
    private JdbcTemplate jdbctemplate;

    public List<CityInfo> getCityList() {
        String sql = "select a.id, a.cityname from CITY a";

        RowMapper<CityInfo> mapper = new RowMapper<CityInfo>() {
            public CityInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
                CityInfo a = new CityInfo();
                a.setId(rs.getInt(1));
                a.setCityname(rs.getString(2));
                return a;
            }
        };
        return jdbctemplate.query(sql, mapper);
    }
}
