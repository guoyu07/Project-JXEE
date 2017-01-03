package com.jxjee.controller;

import com.jxjee.dao.AppointmentDao;
import com.jxjee.entity.Appointment;
import com.jxjee.entity.JXadmin;
import com.jxjee.entity.ThePage;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * Created by zz on 2016/10/27.
 */
@Controller
public class AppointmentController {
    @Resource(name = "appointmentdao")
    private AppointmentDao appointmentDaoImpl;

    @RequestMapping("/sys/appointmentlist")
    public String sysappointmentlist(HttpServletRequest request, @RequestParam(value = "curpageno") int curpageno,
                                     @RequestParam(value = "astate") int astate) throws Exception {
        try {
            ThePage<Appointment> appointmentpage = new ThePage<Appointment>();

            if (curpageno != -1) {
                appointmentpage = appointmentDaoImpl.getAppointmentPage(astate, curpageno);
            }

            int prepage;
            int nextpage;
            if (appointmentpage.getCurrent() - 1 < 1) {
                prepage = 1;
            } else {
                prepage = appointmentpage.getCurrent() - 1;
            }

            if (appointmentpage.getCurrent() + 1 > appointmentpage.getTotalpages()) {
                nextpage = appointmentpage.getTotalpages();
            } else {
                nextpage = appointmentpage.getCurrent() + 1;
            }

            request.setAttribute("thelist", appointmentpage.getPageItems());
            request.setAttribute("totalpage", appointmentpage.getTotalpages());
            request.setAttribute("totalrecode", appointmentpage.getTotalrecord());
            request.setAttribute("currentpageno", appointmentpage.getCurrent());
            request.setAttribute("nextpage", nextpage);
            request.setAttribute("prepage", prepage);
            request.setAttribute("astate", astate);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "sys/appointmentlist";
    }

    @RequestMapping("/sys/appdeal/{aid}/{curpageno}/{astate}")
    public String sysappdeal(HttpServletRequest request, @PathVariable int aid, @PathVariable int curpageno,
                             @PathVariable int astate) throws Exception {
        try {
            HttpSession session = request.getSession();
            JXadmin admininfo = (JXadmin) session.getAttribute("admininfo");

            Calendar calendar = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String dealtime = sdf.format(calendar.getTime());

            Appointment appointment_old = appointmentDaoImpl.getAppointment(aid);
            appointment_old.setAstate(1);
            appointment_old.setDealman(admininfo.getNickname());
            appointment_old.setDealtime(dealtime);

            appointmentDaoImpl.update(appointment_old);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "redirect:/sys/appointmentlist?curpageno=" + curpageno + "&astate=" + astate;
    }

    @RequestMapping("/newappointment")
    public String newappointment(HttpServletRequest request, @RequestParam(value = "cname") String cname,
                                 @RequestParam(value = "cno") String cno, @RequestParam(value = "ctel") String ctel,
                                 @RequestParam(value = "iamount") BigDecimal iamount, @RequestParam(value = "memo")
                                             String memo, @RequestParam(value = "pname") String pname, @RequestParam
                                             (value = "wherefrom") String wherefrom) throws Exception {
        Appointment appointmentInfo_old = new Appointment();
        Appointment appointmentInfo_new;
        try {
            appointmentInfo_old.setCname(cname);
            appointmentInfo_old.setCno(cno);
            appointmentInfo_old.setCtel(ctel);
            appointmentInfo_old.setIamount(iamount);
            appointmentInfo_old.setMemo(memo);
            appointmentInfo_old.setPname(pname);
            appointmentInfo_old.setWherefrom(wherefrom);
            appointmentInfo_old.setAstate(0);

            Calendar calendarstart = Calendar.getInstance();
            appointmentInfo_old.setCreatetime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendarstart
                    .getTime()));

            appointmentInfo_new = appointmentDaoImpl.add(appointmentInfo_old);

            String msg = "";
            if (appointmentInfo_new.getId() != 0) {
                msg = "您提交的产品预约我们会尽快处理";
            }

            request.setAttribute("msg", msg);
        } catch (Exception e) {
            e.printStackTrace();
            return "error/illegal";
        }

        return "thanks";
    }


}
