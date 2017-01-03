package com.jxjee.dao.impl;

import com.jxjee.common.PageSize;
import com.jxjee.dao.QuestionDao;
import com.jxjee.entity.Question;
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
 * Created by zz on 2016/10/26.
 */
@Repository("questiondao")
public class QuestionDaoImpl implements QuestionDao, PageSize {
    @Resource
    private JdbcTemplate jdbctemplate;

    @Transactional
    public Question add(final Question question_old) {
        final String mysql = "INSERT into question (id,bname,uname,tel,resign,memo,wherefrom,qinfo,astate,dealman," +
                "dealtime,createtime) values (seq_question.nextval,?,?,?,?,?,?,?,?,?,to_date(?, 'yyyy-mm-dd " +
                "hh24:mi:ss'),to_date(?, 'yyyy-mm-dd hh24:mi:ss'))";

        Question question;
        KeyHolder keyHolder = new GeneratedKeyHolder();

        this.jdbctemplate.update(new PreparedStatementCreator() {
                                     public PreparedStatement createPreparedStatement(Connection connection) throws
                                             SQLException {
                                         PreparedStatement ps = connection.prepareStatement(mysql,
                                                 new String[]{"id"});
                                         ps.setString(1, question_old.getBname());
                                         ps.setString(2, question_old.getUname());
                                         ps.setString(3, question_old.getTel());
                                         ps.setString(4, question_old.getResign());
                                         ps.setString(5, question_old.getMemo());
                                         ps.setString(6, question_old.getWherefrom());
                                         ps.setString(7, question_old.getQinfo());
                                         ps.setInt(8, question_old.getAstate());
                                         ps.setString(9, question_old.getDealman());
                                         ps.setString(10, question_old.getDealtime());
                                         ps.setString(11, question_old.getCreatetime());
                                         return ps;
                                     }
                                 }
                , keyHolder);
        question = question_old;
        question.setId(keyHolder.getKey().intValue());

        return question;
    }

    public Question getQuestion(int id) {
        String sql = "SELECT a.id, a.bname, a.uname, a.tel, a.resign, a.memo, a.wherefrom, a.qinfo,a.astate,a" +
                ".dealman,to_char(a.dealtime,'yyyy-mm-dd hh24:mi:ss'),to_char(a.createtime,'yyyy-mm-dd hh24:mi:ss') " +
                "FROM question a WHERE a.id=? ";

        Question question = new Question();
        try {
            question = this.jdbctemplate.queryForObject(sql,
                    new Object[]{id}, new RowMapper<Question>() {
                        public Question mapRow(ResultSet rs, int rowNum)
                                throws SQLException {
                            Question a = new Question();
                            a.setId(rs.getInt(1));
                            a.setBname(rs.getString(2));
                            a.setUname(rs.getString(3));
                            a.setTel(rs.getString(4));
                            a.setResign(rs.getString(5));
                            a.setMemo(rs.getString(6));
                            a.setWherefrom(rs.getString(7));
                            a.setQinfo(rs.getString(8));
                            a.setAstate(rs.getInt(9));
                            a.setDealman(rs.getString(10));
                            a.setDealtime(rs.getString(11));
                            a.setCreatetime(rs.getString(12));
                            return a;
                        }
                    });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return question;
    }

    public ThePage<Question> getQuestionPage(int pageno) {
        ThePage<Question> questionpage;
        questionpage = this.getQuestionPage(0, pageno);
        return questionpage;
    }

    @Transactional
    public boolean update(Question question) {
        String mysql = "update question set bname=?,uname=?,tel=?,resign=?,memo=?,wherefrom=?,qinfo=?,astate=?," +
                "dealman=?,dealtime=to_date(?,'yyyy-mm-dd hh24:mi:ss'),createtime=to_date(?,'yyyy-mm-dd hh24:mi:ss') " +
                "where id=?";

        boolean result = false;

        try {
            this.jdbctemplate.update(mysql, question.getBname(), question.getUname(), question.getTel(), question
                    .getResign(), question.getMemo(), question.getWherefrom(), question.getQinfo(), question
                    .getAstate(), question.getDealman(), question.getDealtime(), question.getCreatetime(), question
                    .getId());
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public ThePage<Question> getQuestionPage(int astate, int pageno) {
        ThePage<Question> questionpage = new ThePage<Question>();

        String sql = "select * from (select aa.*, rownum rn from (select a.id, a.bname, a.uname, a.tel, a.resign, a" +
                ".memo, a.wherefrom, a.qinfo,a.astate,a.dealman,to_char(a.dealtime,'yyyy-mm-dd hh24:mi:ss'),to_char(a" +
                ".createtime,'yyyy-mm-dd hh24:mi:ss') from question a where a.astate = ? order by a.id desc) aa where" +
                " rownum <= ? order by aa.id desc) a where rn >= ? order by a.id desc ";
        String sql_count = "SELECT COUNT(*) from question a where a.astate = ? ";

        if (pageno <= 0) {
            pageno = 1;
        }
        int startrecord = (pageno - 1) * pagesize;
        int endrecord = pageno * pagesize;
        int totalrecord;
        int totalpage;

        RowMapper<Question> mapper = new RowMapper<Question>() {
            public Question mapRow(ResultSet rs, int rowNum) throws SQLException {
                Question a = new Question();
                a.setId(rs.getInt(1));
                a.setBname(rs.getString(2));
                a.setUname(rs.getString(3));
                a.setTel(rs.getString(4));
                a.setResign(rs.getString(5));
                a.setMemo(rs.getString(6));
                a.setWherefrom(rs.getString(7));
                a.setQinfo(rs.getString(8));
                a.setAstate(rs.getInt(9));
                a.setDealman(rs.getString(10));
                a.setDealtime(rs.getString(11));
                a.setCreatetime(rs.getString(12));
                return a;
            }
        };

        totalrecord = jdbctemplate.queryForObject(sql_count, new Object[]{astate}, Integer.class);
        questionpage.setTotalrecord(totalrecord);

        totalpage = (int) Math.ceil((double) totalrecord / (double) pagesize);

        questionpage.setPageItems(jdbctemplate.query(sql, new Object[]{astate, endrecord, startrecord}, mapper));

        questionpage.setCurrent(pageno);
        if (totalpage <= 0) {
            totalpage = 1;
        }
        questionpage.setTotalpages(totalpage);

        return questionpage;
    }
}
