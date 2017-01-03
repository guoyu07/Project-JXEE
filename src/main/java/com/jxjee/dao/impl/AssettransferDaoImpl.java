package com.jxjee.dao.impl;

import com.jxjee.common.PageSize;
import com.jxjee.dao.AssettransferDao;
import com.jxjee.entity.AssettransferInfo;
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
 * Created by zz on 2017/1/3.
 */
@Repository("assettransferdao")
@Transactional
public class AssettransferDaoImpl implements AssettransferDao, PageSize {
    @Resource
    private JdbcTemplate jdbctemplate;

    public AssettransferInfo add(final AssettransferInfo assettransferInfoInfo_old) {
        final String mysql = "insert into assettransfer (id, pno, assettype, cname, listname, listmoney, astatus, enddate, aurl, createrid, createdate, cstatus) values (seq_assettransfer.nextval,?,?,?,?,?,?,?,?,?,?,?)";

        AssettransferInfo assettransferInfo;
        KeyHolder keyHolder = new GeneratedKeyHolder();

        this.jdbctemplate.update(new PreparedStatementCreator() {
                                     public PreparedStatement createPreparedStatement(Connection connection) throws
                                             SQLException {
                                         PreparedStatement ps = connection.prepareStatement(mysql,
                                                 new String[]{"id"});

                                         ps.setString(1, assettransferInfoInfo_old.getPno());
                                         ps.setInt(2, assettransferInfoInfo_old.getAssettype());
                                         ps.setString(3, assettransferInfoInfo_old.getCname());
                                         ps.setString(4, assettransferInfoInfo_old.getListname());
                                         ps.setBigDecimal(5, assettransferInfoInfo_old.getListmoney());
                                         ps.setInt(6, assettransferInfoInfo_old.getAstatus());
                                         ps.setString(7, assettransferInfoInfo_old.getEnddate());
                                         ps.setString(8, assettransferInfoInfo_old.getAurl());
                                         ps.setInt(9, assettransferInfoInfo_old.getCreaterid());
                                         ps.setString(10, assettransferInfoInfo_old.getCreatedate());
                                         ps.setInt(11, assettransferInfoInfo_old.getCstatus());
                                         return ps;
                                     }
                                 }
                , keyHolder);

        assettransferInfo = assettransferInfoInfo_old;
        assettransferInfo.setId(keyHolder.getKey().intValue());

        return assettransferInfo;
    }

    public AssettransferInfo getAssettransfer(int id) {
        String sql = "select a.id,a.pno,a.assettype,d3.dmemo,a.cname,a.listname,a.listmoney,a.astatus,d1.dmemo,a.enddate,a.aurl,a.createrid,b.nickname,a.createdate,a.cstatus,d2.dmemo from ASSETTRANSFER a, jx_admin b, dict d1, dict d2, dict d3 where a.createrid = b.id(+) and a.astatus = d1.dvalue(+) and d1.dtype = 'ASTATUS' and a.cstatus = d2.dvalue(+) and d2.dtype = 'CSTATUS' and a.assettype = d3.dvalue(+) and d3.dtype = 'ASSETTYPE'";

        AssettransferInfo assettransferInfo = new AssettransferInfo();
        try {
            assettransferInfo = this.jdbctemplate.queryForObject(sql,
                    new Object[]{id}, new RowMapper<AssettransferInfo>() {
                        public AssettransferInfo mapRow(ResultSet rs, int rowNum)
                                throws SQLException {
                            AssettransferInfo a = new AssettransferInfo();
                            a.setId(rs.getInt(1));
                            a.setPno(rs.getString(2));
                            a.setAssettype(rs.getInt(3));
                            a.setAssettypename(rs.getString(4));
                            a.setCname(rs.getString(5));
                            a.setListname(rs.getString(6));
                            a.setListmoney(rs.getBigDecimal(7));
                            a.setAstatus(rs.getInt(8));
                            a.setAstatusname(rs.getString(9));
                            a.setEnddate(rs.getString(10));
                            a.setAurl(rs.getString(11));
                            a.setCreaterid(rs.getInt(12));
                            a.setCreatername(rs.getString(13));
                            a.setCreatedate(rs.getString(14));
                            a.setCstatus(rs.getInt(15));
                            a.setCstatusname(rs.getString(16));
                            return a;
                        }
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return assettransferInfo;
    }

    public ThePage<AssettransferInfo> getAssettransferPage(String keyname, int assettype, int createrid, int pageno, int astatus, int cstatus) {
        ThePage<AssettransferInfo> assettransferpage = new ThePage<AssettransferInfo>();
        StringBuilder sql_buf = new StringBuilder();

        if (assettype != -1) {
            sql_buf.append("and a.assettype=").append(assettype);
        }

        if (createrid != -1) {
            sql_buf.append("and a.createrid=").append(createrid);
        }
        if (astatus != -1) {
            sql_buf.append("and a.astatus=").append(astatus);
        }
        if (cstatus != -1) {
            sql_buf.append("and a.cstatus=").append(cstatus);
        }


        String sql = "SELECT * FROM (SELECT aa.*, ROWNUM RN FROM ( select a.id,a.pno,a.assettype,d3.dmemo,a.cname,a.listname,a.listmoney,a.astatus,d1.dmemo,a.enddate,a.aurl,a.createrid,b.nickname,a.createdate,a.cstatus,d2.dmemo from ASSETTRANSFER a, jx_admin b, dict d1, dict d2, dict d3 where a.createrid = b.id(+) and a.astatus = d1.dvalue(+) and d1.dtype = 'ASTATUS' and a.cstatus = d2.dvalue(+) and d2.dtype = 'CSTATUS' and a.assettype = d3.dvalue(+) and d3.dtype = 'ASSETTYPE' ) aa  WHERE ROWNUM <= ? order by aa.id desc) a WHERE RN >= ? order by a.id desc";
        String sql_count = "select count(*) from ASSETTRANSFER a, jx_admin b, dict d1, dict d2, dict d3 where a.createrid = b.id(+) and a.astatus = d1.dvalue(+) and d1.dtype = 'ASTATUS' and a.cstatus = d2.dvalue(+) and d2.dtype = 'CSTATUS' and a.assettype = d3.dvalue(+) and d3.dtype = 'ASSETTYPE' ";

        if (pageno <= 0) {
            pageno = 1;
        }
        int startrecord = (pageno - 1) * pagesize + 1;
        int endrecord = pageno * pagesize;
        int totalrecord;
        int totalpage;

        RowMapper<AssettransferInfo> mapper = new RowMapper<AssettransferInfo>() {
            public AssettransferInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
                AssettransferInfo a = new AssettransferInfo();
                a.setId(rs.getInt(1));
                a.setPno(rs.getString(2));
                a.setAssettype(rs.getInt(3));
                a.setAssettypename(rs.getString(4));
                a.setCname(rs.getString(5));
                a.setListname(rs.getString(6));
                a.setListmoney(rs.getBigDecimal(7));
                a.setAstatus(rs.getInt(8));
                a.setAstatusname(rs.getString(9));
                a.setEnddate(rs.getString(10));
                a.setAurl(rs.getString(11));
                a.setCreaterid(rs.getInt(12));
                a.setCreatername(rs.getString(13));
                a.setCreatedate(rs.getString(14));
                a.setCstatus(rs.getInt(15));
                a.setCstatusname(rs.getString(16));
                return a;
            }
        };

        totalrecord = jdbctemplate.queryForObject(sql_count, Integer.class);
        assettransferpage.setTotalrecord(totalrecord);

        totalpage = (int) Math.ceil((double) totalrecord / (double) pagesize);

        assettransferpage.setPageItems(jdbctemplate.query(sql, new Object[]{endrecord, startrecord}, mapper));

        assettransferpage.setCurrent(pageno);
        if (totalpage <= 0) {
            totalpage = 1;
        }
        assettransferpage.setTotalpages(totalpage);

        return assettransferpage;
    }

    public boolean update(AssettransferInfo assettransferInfo) {
        return false;
    }

    public boolean delete(int id) {
        return false;
    }
}
