package com.jxjee.dao.impl;

import com.jxjee.dao.JXadminDao;
import com.jxjee.entity.JXadmin;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by zz on 2016/9/28 15:39.
 */
@Repository("jxadmindao")
public class JXadminDaoImpl implements JXadminDao {
    @Resource
    private JdbcTemplate jdbctemplate;

    public JXadmin getJXadmin(int id) {
        return null;
    }

    @Transactional
    public JXadmin addJXadmin() {
        return null;
    }

    public List<JXadmin> getJXadmin(String username) {
        return null;
    }

    public JXadmin checkJXadmin(String username, String pswd) {
        String mysql = "SELECT a.id,a.username,a.pswd,a.userlevel,a.nickname,a.roleid,a.mobileno,a.email FROM " +
                "jx_admin a where a.username = ? and a.pswd = ? ";
        JXadmin admin = new JXadmin();
        try {
            RowMapper<JXadmin> mapper = new RowMapper<JXadmin>() {
                public JXadmin mapRow(ResultSet rs, int rowNum) throws SQLException {
                    JXadmin admin1 = new JXadmin();
                    admin1.setId(rs.getInt(1));
                    admin1.setUsername(rs.getString(2));
                    admin1.setPswd(rs.getString(3));
                    admin1.setUserlevel(rs.getInt(4));
                    admin1.setNickname(rs.getString(5));
                    admin1.setRoleid(rs.getInt(6));
                    admin1.setMobileno(rs.getString(7));
                    admin1.setEmail(rs.getString(8));
                    return admin1;
                }
            };

            admin = this.jdbctemplate
                    .queryForObject(mysql, new Object[]{username, pswd}, mapper);
        } catch (EmptyResultDataAccessException ex) {
            admin = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admin;
    }

    @Transactional
    public boolean update(JXadmin userinfo) {
        return false;
    }

    @Transactional
    public boolean delete(int id) {
        return false;
    }
}
