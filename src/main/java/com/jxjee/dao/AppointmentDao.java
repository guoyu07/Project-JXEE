package com.jxjee.dao;

import com.jxjee.entity.Appointment;
import com.jxjee.entity.ThePage;

/**
 * Created by zz on 2016/10/26.
 */
public interface AppointmentDao {
    Appointment add(final Appointment appointment);

    Appointment getAppointment(int id);

    ThePage<Appointment> getAppointmentPage(int pageno);

    ThePage<Appointment> getAppointmentPage(int astate, int pageno);

    boolean update(Appointment appointment);
}
