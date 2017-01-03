package com.jxjee.dao.impl;

import com.jxjee.common.PageSize;
import com.jxjee.dao.QcbDao;
import com.jxjee.entity.QcbInfo;
import com.jxjee.entity.ThePage;
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
@Repository("qcbdao")
@Transactional
public class QcbDaoImpl implements QcbDao, PageSize {
    @Resource
    private JdbcTemplate jdbctemplate;

    public QcbInfo add(final QcbInfo qcbInfo_old) {
        final String mysql = "insert into qcbinfo (id, cname, city, memo, industry, imgthumb, createrid, createtime, qstatus) values (seq_qcbinfo.nextval, ?, ?, ?, ?, ?, ?, ?, ?)";

        QcbInfo qcbinfo;
        KeyHolder keyHolder = new GeneratedKeyHolder();

        this.jdbctemplate.update(new PreparedStatementCreator() {
                                     public PreparedStatement createPreparedStatement(Connection connection) throws
                                             SQLException {
                                         PreparedStatement ps = connection.prepareStatement(mysql,
                                                 new String[]{"id"});
                                         ps.setString(1, qcbInfo_old.getCname());
                                         ps.setInt(2, qcbInfo_old.getCity());
                                         ps.setString(3, qcbInfo_old.getMemo());
                                         ps.setInt(4, qcbInfo_old.getIndustry());
                                         ps.setString(5, qcbInfo_old.getImgthumb());
                                         ps.setInt(6, qcbInfo_old.getCreaterid());
                                         ps.setString(7, qcbInfo_old.getImgthumb());
                                         ps.setInt(8, qcbInfo_old.getQstatus());
                                         return ps;
                                     }
                                 }
                , keyHolder);

        qcbinfo = qcbInfo_old;
        qcbinfo.setId(keyHolder.getKey().intValue());

        return qcbinfo;
    }

    public QcbInfo getQcb(int id) {
        QcbInfo QcbInfo = new QcbInfo();

        String sql = "select a.id,a.cname,a.city,a.memo,a.industry,a.imgthumb,a.createrid,a.createtime,a.qstatus,d1.dmemo,b.nickname,c.cityname from QCBINFO a,dict d1,jx_admin b,city c where a.industry=d1.dvalue(+) and d1.dtype='INDUSTRY' and a.createrid=b.id(+) and a.city=c.id and a.id = ? ";
        try {
            RowMapper<QcbInfo> mapper = new RowMapper<QcbInfo>() {
                public QcbInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
                    QcbInfo a = new QcbInfo();
                    a.setId(rs.getInt(1));
                    a.setCname(rs.getString(2));
                    a.setCity(rs.getInt(3));
                    a.setMemo(rs.getString(4));
                    a.setIndustry(rs.getInt(5));
                    a.setImgthumb(rs.getString(6));
                    a.setCreaterid(rs.getInt(7));
                    a.setCreatetime(rs.getString(8));
                    a.setQstatus(rs.getInt(9));
                    a.setIndustryname(rs.getString(10));
                    a.setCreatername(rs.getString(11));

                    return a;
                }
            };

            QcbInfo = this.jdbctemplate
                    .queryForObject(sql, new Object[]{id}, mapper);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return QcbInfo;
    }

    public ThePage<QcbInfo> getQcbPage(String keyname, int city, int industry, int pageno, int qstatus) {
        ThePage<QcbInfo> luyaninfopage = new ThePage<QcbInfo>();
        StringBuilder sql_buf = new StringBuilder();

        if (!"".equalsIgnoreCase(keyname)) {
            sql_buf.append(" and a.cname like '%").append(keyname).append("%'");
        }
        if (city != -1) {
            sql_buf.append("and a.city=").append(city);
        }
        if (industry != -1) {
            sql_buf.append("and a.industry=").append(industry);
        }

        if (qstatus != -1) {
            sql_buf.append("and a.qstatus=").append(qstatus);
        }

        String sql = "SELECT * FROM (SELECT aa.*, ROWNUM RN FROM (select a.id,a.cname,a.city,a.memo,a.industry,a.imgthumb,a.createrid,a.createtime,a.qstatus,d1.dmemo,b.nickname,c.cityname from QCBINFO a,dict d1,jx_admin b,city c where a.industry=d1.dvalue(+) and d1.dtype='INDUSTRY' and a.createrid=b.id(+) and a.city=c.id " + sql_buf.toString() + ") aa  WHERE ROWNUM <= ? order by aa.id desc) a WHERE RN >= ? order by a.id desc";
        String sql_count = "select count(*) from QCBINFO a,dict d1,jx_admin b,city c where a.industry=d1.dvalue(+) and d1.dtype='INDUSTRY' and a.createrid=b.id(+) and a.city=c.id and 0=0 " + sql_buf.toString();

        if (pageno <= 0) {
            pageno = 1;
        }
        int startrecord = (pageno - 1) * pagesize + 1;
        int endrecord = pageno * pagesize;
        int totalrecord;
        int totalpage;

        RowMapper<QcbInfo> mapper = new RowMapper<QcbInfo>() {
            public QcbInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
                QcbInfo a = new QcbInfo();
                a.setId(rs.getInt(1));
                a.setCname(rs.getString(2));
                a.setCity(rs.getInt(3));
                a.setMemo(rs.getString(4));
                a.setIndustry(rs.getInt(5));
                a.setImgthumb(rs.getString(6));
                a.setCreaterid(rs.getInt(7));
                a.setCreatetime(rs.getString(8));
                a.setQstatus(rs.getInt(9));
                a.setIndustryname(rs.getString(10));
                a.setCreatername(rs.getString(11));
                a.setCityname(rs.getString(12));
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

    public boolean update(QcbInfo qcbInfo) {
        String mysql = "update qcbinfo set cname = ?,city = ?,memo = ?,industry = ?,imgthumb = ?,createrid = ?,createtime = ?,qstatus = ? where id = ?";

        boolean result = false;

        try {
            this.jdbctemplate.update(mysql, qcbInfo.getCname(), qcbInfo.getCity(), qcbInfo.getMemo(), qcbInfo.getIndustry(), qcbInfo.getImgthumb(), qcbInfo.getCreaterid(), qcbInfo.getCreatetime(), qcbInfo.getQstatus(), qcbInfo.getId());
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean delete(int id) {
        String mysql = "delete qcbinfo where id = ? ";

        boolean result = false;

        try {
            this.jdbctemplate.update(mysql, id);
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}