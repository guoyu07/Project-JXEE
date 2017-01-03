package com.jxjee.dao.impl;

import com.jxjee.dao.JXuserDao;
import com.jxjee.entity.JXuser;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by zz on 2016/10/25.
 */
@Repository("jxuserdao")
public class JXuserDaoImpl implements JXuserDao {

    @Resource
    private JdbcTemplate jdbctemplate;

    @Transactional
    public JXuser addJXuser(JXuser jxuser) {
        return null;
    }

    public JXuser getJXuser(int id) {
        return null;
    }

    public JXuser checkJXuser(String username, String pswd) {
        String mysql = "SELECT a.id, a.username, a.pswd, a.tel, a.email, a.usertype, b.reference, a.identityid, a" +
                ".addr,a.headpic from jx_user a where a.username = ? and a.pswd = ? ";
        JXuser jxuser = new JXuser();
        try {
            RowMapper<JXuser> mapper = new RowMapper<JXuser>() {
                public JXuser mapRow(ResultSet rs, int rowNum) throws SQLException {
                    JXuser jxuser1 = new JXuser();
                    jxuser1.setId(rs.getInt(1));
                    jxuser1.setUsername(rs.getString(2));
                    jxuser1.setPswd(rs.getString(3));
                    jxuser1.setTel(rs.getString(4));
                    jxuser1.setEmail(rs.getString(5));
                    jxuser1.setUsertype(rs.getInt(6));
                    jxuser1.setReference(rs.getString(7));
                    jxuser1.setIdentityid(rs.getString(8));
                    jxuser1.setAddr(rs.getString(9));
                    jxuser1.setHeadpic(rs.getString(10));
                    return jxuser1;
                }
            };

            jxuser = this.jdbctemplate
                    .queryForObject(mysql, new Object[]{username, pswd}, mapper);
        } catch (EmptyResultDataAccessException ex) {
            jxuser = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jxuser;
    }
}
