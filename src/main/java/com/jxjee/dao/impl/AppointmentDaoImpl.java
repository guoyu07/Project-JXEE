package com.jxjee.dao.impl;

import com.jxjee.common.PageSize;
import com.jxjee.dao.AppointmentDao;
import com.jxjee.entity.Appointment;
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
@Repository("appointmentdao")
@Transactional
public class AppointmentDaoImpl implements AppointmentDao, PageSize {
    @Resource
    private JdbcTemplate jdbctemplate;

    public Appointment add(final Appointment appointment_old) {
        final String mysql = "INSERT into appointment (id,cname,cno,ctel,iamount,memo,pname,wherefrom,astate,dealman," +
                "dealtime,createtime) values (seq_appointment.nextval,?,?,?,?,?,?,?,?,?,to_date(?, 'yyyy-mm-dd " +
                "hh24:mi:ss'),to_date(?, 'yyyy-mm-dd hh24:mi:ss'))";

        Appointment appointment;
        KeyHolder keyHolder = new GeneratedKeyHolder();

        this.jdbctemplate.update(new PreparedStatementCreator() {
                                     public PreparedStatement createPreparedStatement(Connection connection) throws
                                             SQLException {
                                         PreparedStatement ps = connection.prepareStatement(mysql,
                                                 new String[]{"id"});
                                         ps.setString(1, appointment_old.getCname());
                                         ps.setString(2, appointment_old.getCno());
                                         ps.setString(3, appointment_old.getCtel());
                                         ps.setBigDecimal(4, appointment_old.getIamount());
                                         ps.setString(5, appointment_old.getMemo());
                                         ps.setString(6, appointment_old.getPname());
                                         ps.setString(7, appointment_old.getWherefrom());
                                         ps.setInt(8, appointment_old.getAstate());
                                         ps.setString(9, appointment_old.getDealman());
                                         ps.setString(10, appointment_old.getDealtime());
                                         ps.setString(11, appointment_old.getCreatetime());
                                         return ps;
                                     }
                                 }
                , keyHolder);

        appointment = appointment_old;
        appointment.setId(keyHolder.getKey().intValue());

        return appointment;
    }

    public Appointment getAppointment(int id) {
        String sql = "SELECT a.id, a.cname, a.cno, a.ctel, a.iamount, a.memo, a.pname, a.wherefrom,a.astate,a" +
                ".dealman,to_char(a.dealtime,'yyyy-mm-dd hh24:mi:ss'),to_char(a.createtime,'yyyy-mm-dd hh24:mi:ss') " +
                "FROM appointment a WHERE a.id =? ";

        Appointment appointment = new Appointment();
        try {
            appointment = this.jdbctemplate.queryForObject(sql,
                    new Object[]{id}, new RowMapper<Appointment>() {
                        public Appointment mapRow(ResultSet rs, int rowNum)
                                throws SQLException {
                            Appointment a = new Appointment();
                            a.setId(rs.getInt(1));
                            a.setCname(rs.getString(2));
                            a.setCno(rs.getString(3));
                            a.setCtel(rs.getString(4));
                            a.setIamount(rs.getBigDecimal(5));
                            a.setMemo(rs.getString(6));
                            a.setPname(rs.getString(7));
                            a.setWherefrom(rs.getString(8));
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
        return appointment;
    }

    public ThePage<Appointment> getAppointmentPage(int pageno) {
        ThePage<Appointment> appointmentpage;
        appointmentpage = this.getAppointmentPage(0, pageno);
        return appointmentpage;
    }

    public ThePage<Appointment> getAppointmentPage(int astate, int pageno) {
        ThePage<Appointment> appointmentpage = new ThePage<Appointment>();

        String sql = "SELECT * FROM (SELECT aa.*, ROWNUM RN FROM (SELECT a.id, a.cname, a.cno, a.ctel, a.iamount, a" +
                ".memo, a.pname, a.wherefrom,a.astate,a.dealman,to_char(a.dealtime,'yyyy-mm-dd hh24:mi:ss'),to_char(a" +
                ".createtime,'yyyy-mm-dd hh24:mi:ss') FROM appointment a where a.astate = ? ) aa  WHERE ROWNUM <= ? " +
                "order by aa.id desc) a WHERE RN >= ? order by a.id desc";
        String sql_count = "SELECT COUNT(*) from appointment a where a.astate = ? ";

        if (pageno <= 0) {
            pageno = 1;
        }
        int startrecord = (pageno - 1) * pagesize + 1;
        int endrecord = pageno * pagesize;
        int totalrecord;
        int totalpage;

        RowMapper<Appointment> mapper = new RowMapper<Appointment>() {
            public Appointment mapRow(ResultSet rs, int rowNum) throws SQLException {
                Appointment a = new Appointment();
                a.setId(rs.getInt(1));
                a.setCname(rs.getString(2));
                a.setCno(rs.getString(3));
                a.setCtel(rs.getString(4));
                a.setIamount(rs.getBigDecimal(5));
                a.setMemo(rs.getString(6));
                a.setPname(rs.getString(7));
                a.setWherefrom(rs.getString(8));
                a.setAstate(rs.getInt(9));
                a.setDealman(rs.getString(10));
                a.setDealtime(rs.getString(11));
                a.setCreatetime(rs.getString(12));
                return a;
            }
        };

        totalrecord = jdbctemplate.queryForObject(sql_count, new Object[]{astate}, Integer.class);
        appointmentpage.setTotalrecord(totalrecord);

        totalpage = (int) Math.ceil((double) totalrecord / (double) pagesize);

        appointmentpage.setPageItems(jdbctemplate.query(sql, new Object[]{astate, endrecord, startrecord}, mapper));

        appointmentpage.setCurrent(pageno);
        if (totalpage <= 0) {
            totalpage = 1;
        }
        appointmentpage.setTotalpages(totalpage);

        return appointmentpage;
    }

    public boolean update(Appointment appointment) {
        String mysql = "update appointment set cname=?,cno=?,ctel=?,iamount=?,memo=?,pname=?,wherefrom=?,astate=?," +
                "dealman=?,dealtime=to_date(?,'yyyy-MM-dd hh24:mi:ss'),createtime=to_date(?,'yyyy-mm-dd hh24:mi:ss') " +
                "where id=?";

        boolean result = false;

        try {
            this.jdbctemplate.update(mysql, appointment.getCname(), appointment.getCno(), appointment.getCtel(),
                    appointment.getIamount(), appointment.getMemo(), appointment.getPname(), appointment.getWherefrom
                            (), appointment.getAstate(), appointment.getDealman(), appointment.getDealtime(),
                    appointment.getCreatetime(), appointment.getId());
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
