package com.jxjee.dao.impl;

import com.jxjee.common.PageSize;
import com.jxjee.dao.LuYanDao;
import com.jxjee.entity.LuYanInfo;
import com.jxjee.entity.ThePage;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by zz on 2016/11/24.
 */
@Repository("luyandao")
public class LuYanDaoImpl implements LuYanDao, PageSize {
    @Resource
    private JdbcTemplate jdbctemplate;

    @Transactional
    public LuYanInfo add(final LuYanInfo luYanInfo_old) {
        final String mysql = "insert into luyaninfo (id, cname, city, financing, pname, memo, ftype, industry, " +
                "imgthumb) values (seq_luyaninfo.nextval, ?, ?, ?, ?, ?, ?, ?, ?)";

        LuYanInfo luyaninfo;
        KeyHolder keyHolder = new GeneratedKeyHolder();

        this.jdbctemplate.update(new PreparedStatementCreator() {
                                     public PreparedStatement createPreparedStatement(Connection connection) throws
                                             SQLException {
                                         PreparedStatement ps = connection.prepareStatement(mysql,
                                                 new String[]{"id"});
                                         ps.setString(1, luYanInfo_old.getCname());
                                         ps.setInt(2, luYanInfo_old.getCity());
                                         ps.setInt(3, luYanInfo_old.getFinancing());
                                         ps.setString(4, luYanInfo_old.getPname());
                                         ps.setString(5, luYanInfo_old.getMemo());
                                         ps.setInt(6, luYanInfo_old.getFtype());
                                         ps.setInt(7, luYanInfo_old.getIndustry());
                                         ps.setString(8, luYanInfo_old.getImgthumb());
                                         return ps;
                                     }
                                 }
                , keyHolder);

        luyaninfo = luYanInfo_old;
        luyaninfo.setId(keyHolder.getKey().intValue());

        return luyaninfo;
    }

    public LuYanInfo getLuYan(int id) {
        LuYanInfo luYanInfo = new LuYanInfo();

        String sql = "select a.id,a.cname,a.city,b.cityname,a.financing,a.pname,a.memo,a.ftype,d1.dmemo as d1dmemo,a" +
                ".industry,d2.dmemo as d2dmemo,a.imgthumb,d3.dmemo as d3dmemo from LUYANINFO a, city b,dict d1,dict " +
                "d2,dict d3 where a.city = b.id(+) and a.ftype=d1.dvalue(+) and a.industry=d2.dvalue(+) and a" +
                ".financing=d3.dvalue(+) and d1.dtype='FINANCETYPE' and d2.dtype='INDUSTRY' and d3.dtype = " +
                "'FINANCING' and a.id = ? ";
        try {
            RowMapper<LuYanInfo> mapper = new RowMapper<LuYanInfo>() {
                public LuYanInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
                    LuYanInfo a = new LuYanInfo();
                    a.setId(rs.getInt(1));
                    a.setCname(rs.getString(2));
                    a.setCity(rs.getInt(3));
                    a.setCityname(rs.getString(4));
                    a.setFinancing(rs.getInt(5));
                    a.setPname(rs.getString(6));
                    a.setMemo(rs.getString(7));
                    a.setFtype(rs.getInt(8));
                    a.setFtypename(rs.getString(9));
                    a.setIndustry(rs.getInt(10));
                    a.setIndustryname(rs.getString(11));
                    a.setImgthumb(rs.getString(12));
                    a.setFinancingname(rs.getString(13));
                    return a;
                }
            };

            luYanInfo = this.jdbctemplate
                    .queryForObject(sql, new Object[]{id}, mapper);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return luYanInfo;
    }

    public ThePage<LuYanInfo> getLuYanInfoPage(String keyname, int city, int industry, int financing, int pageno) {
        ThePage<LuYanInfo> luyaninfopage = new ThePage<LuYanInfo>();
        StringBuilder sql_buf = new StringBuilder();

        if (!"".equalsIgnoreCase(keyname)) {
            sql_buf.append(" and (a.pname like '%").append(keyname).append("%' or a.cname like '%").append(keyname)
                    .append("%') ");
        }
        if (city != -1) {
            sql_buf.append("and a.city=").append(city);
        }
        if (industry != -1) {
            sql_buf.append("and a.industry=").append(industry);
        }
        if (financing != -1) {
            sql_buf.append("and a.financing=").append(financing);
        }

        String sql = "SELECT * FROM (SELECT aa.*, ROWNUM RN FROM (select a.id,a.cname,a.city,b.cityname,a.financing,a" +
                ".pname,a.memo,a.ftype,d1.dmemo as d1dmemo,a.industry,d2.dmemo as d2dmemo,a.imgthumb,d3.dmemo as " +
                "d3dmemo from LUYANINFO a, city b,dict d1,dict d2,dict d3 where a.city = b.id(+) and a" +
                ".ftype=d1.dvalue(+) and a.industry=d2.dvalue(+) and a.financing = d3.dvalue(+) and " +
                "d1.dtype='FINANCETYPE' and d2.dtype='INDUSTRY' and d3.dtype = 'FINANCING' " + sql_buf.toString() +
                ") aa  WHERE ROWNUM <= ? order by aa.id desc) a WHERE RN >= ? order by a.id desc";
        String sql_count = "select count(*) from LUYANINFO a where 0=0 " + sql_buf.toString();

        if (pageno <= 0) {
            pageno = 1;
        }
        int startrecord = (pageno - 1) * pagesize + 1;
        int endrecord = pageno * pagesize;
        int totalrecord;
        int totalpage;

        RowMapper<LuYanInfo> mapper = new RowMapper<LuYanInfo>() {
            public LuYanInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
                LuYanInfo a = new LuYanInfo();
                a.setId(rs.getInt(1));
                a.setCname(rs.getString(2));
                a.setCity(rs.getInt(3));
                a.setCityname(rs.getString(4));
                a.setFinancing(rs.getInt(5));
                a.setPname(rs.getString(6));
                a.setMemo(rs.getString(7).length() > 100 ? rs.getString(7).substring(0, 100) : rs.getString(7)
                        .substring(0, rs.getString(7).length()));
                a.setFtype(rs.getInt(8));
                a.setFtypename(rs.getString(9));
                a.setIndustry(rs.getInt(10));
                a.setIndustryname(rs.getString(11));
                a.setImgthumb(rs.getString(12));
                a.setFinancingname(rs.getString(13));
                return a;
            }
        };

        totalrecord = jdbctemplate.queryForObject(sql_count, Integer.class);
        luyaninfopage.setTotalrecord(totalrecord);

        totalpage = (int) Math.ceil((double) totalrecord / (double) pagesize);

        luyaninfopage.setPageItems(jdbctemplate.query(sql, new Object[]{endrecord, startrecord}, mapper));

        luyaninfopage.setCurrent(pageno);
        if (totalpage <= 0) {
            totalpage = 1;
        }
        luyaninfopage.setTotalpages(totalpage);

        return luyaninfopage;
    }

    @Transactional
    public boolean update(LuYanInfo luYanInfo) {
        String mysql = "update luyaninfo set cname = ?,city = ?,financing = ?,pname = ?,memo = ?,ftype = ?,industry =" +
                " ?,imgthumb = ?  where id = ? ";

        boolean result = false;

        try {
            this.jdbctemplate.update(mysql, luYanInfo.getCname(), luYanInfo.getCity(), luYanInfo.getFinancing(),
                    luYanInfo.getPname(), luYanInfo.getMemo(), luYanInfo.getFtype(), luYanInfo.getIndustry(),
                    luYanInfo.getImgthumb(), luYanInfo.getId());
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Transactional
    public boolean delete(int id) {
        String mysql = "delete LUYANINFO where id = ? ";

        boolean result = false;

        try {
            this.jdbctemplate.update(mysql,id);
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}