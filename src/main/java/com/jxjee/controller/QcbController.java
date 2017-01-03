package com.jxjee.controller;

import com.jxjee.dao.CityInfoDao;
import com.jxjee.dao.DictDao;
import com.jxjee.dao.QcbDao;
import com.jxjee.entity.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

/**
 * Created by zz on 2016/10/31.
 */
@Controller
public class QcbController {
    @Resource(name = "qcbdao")
    private QcbDao qcbDaoImpl;

    @Resource(name = "dictdao")
    private DictDao dictDaoImpl;

    @Resource(name = "citydao")
    private CityInfoDao cityDaoImpl;

    @RequestMapping("/sys/qcbinfo/{lyid}")
    public String sysluyaninfo(HttpServletRequest request, @PathVariable(value = "lyid") int lyid) throws Exception {
        try {
            QcbInfo qcbinfo = qcbDaoImpl.getQcb(lyid);
            List<Dict> industrylist = dictDaoImpl.getList("INDUSTRY");
            List<CityInfo> citylist = cityDaoImpl.getCityList();

            request.setAttribute("citylist", citylist);
            request.setAttribute("industrylist", industrylist);
            request.setAttribute("qcbinfo", qcbinfo);
        } catch (Exception e) {
            e.printStackTrace();
            return "/sys/login";
        }
        return "sys/qcbedit";
    }

    @RequestMapping("/sys/newqcb")
    public String sysnewqcb(HttpSession session) throws Exception {
        JXadmin admininfo = (JXadmin) session.getAttribute("admininfo");

        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dealtime = sdf.format(calendar.getTime());

        QcbInfo qcbinfo = new QcbInfo();
        try {
            qcbinfo.setCname("公司名");
            qcbinfo.setCity(3601);
            qcbinfo.setMemo("公司简介");
            qcbinfo.setIndustry(1);
            qcbinfo.setImgthumb("");
            qcbinfo.setCreaterid(admininfo.getId());
            qcbinfo.setCreatetime(dealtime);
            qcbinfo.setQstatus(0);

            qcbinfo = qcbDaoImpl.add(qcbinfo);

        } catch (Exception e) {
            e.printStackTrace();
            return "/sys/login";
        }
        return "redirect:/sys/qcbinfo/" + qcbinfo.getId();
    }

    @RequestMapping("/sys/qcbsave")
    public String sysqcbedit(
            @RequestParam(value = "lyid") int lyid,
            @RequestParam(value = "cname") String cname,
            @RequestParam(value = "cityid") int cityid,
            @RequestParam(value = "memo") String memo,
            @RequestParam(value = "industry") int industry,
            @RequestParam(value = "imgthumb") String imgthumb,
            @RequestParam(value = "qstatus") int qstatus) throws Exception {
        QcbInfo qcbinfo = qcbDaoImpl.getQcb(lyid);

        boolean result;
        try {
            qcbinfo.setCname(cname);
            qcbinfo.setCity(cityid);
            qcbinfo.setMemo(memo);
            qcbinfo.setIndustry(industry);
            qcbinfo.setImgthumb(imgthumb);
            qcbinfo.setQstatus(qstatus);

            result = qcbDaoImpl.update(qcbinfo);
        } catch (Exception e) {
            e.printStackTrace();
            return "/sys/login";
        }
        return "redirect:/sys/qcbinfo/" + qcbinfo.getId() + "?result=" + result;
    }

    @RequestMapping("/qcbinfo/{lyid}")
    public String qcbinfo(HttpServletRequest request, @PathVariable(value = "lyid") int lyid) throws Exception {
        try {
            QcbInfo qcbinfo = qcbDaoImpl.getQcb(lyid);

            request.setAttribute("qcbinfo", qcbinfo);
        } catch (Exception e) {
            e.printStackTrace();
            return "/error";
        }
        return "/qcbinfo";
    }


    @RequestMapping("sys/delqcb")
    public String sysdelqcb(@RequestParam(value = "lyid") int lyid,
                            @RequestParam(value = "keyname") String keyname,
                            @RequestParam(value = "city") int city,
                            @RequestParam(value = "industry") int industry,
                            @RequestParam(value = "curpageno") int curpageno) throws Exception {
        try {
            qcbDaoImpl.delete(lyid);
        } catch (Exception e) {
            e.printStackTrace();
            return "/error";
        }
        return "redirect:/sys/qcblist?keyname=" + keyname + "&city=" + city + "&industry=" + industry + "&curpageno=" + curpageno;
    }

    @RequestMapping("/sys/qcblist")
    public String sysqcblist(HttpServletRequest request,
                             @RequestParam(value = "keyname") String keyname,
                             @RequestParam(value = "city") int city,
                             @RequestParam(value = "industry") int industry,
                             @RequestParam(value = "qstatus") int qstatus,
                             @RequestParam(value = "curpageno") int curpageno) throws Exception {
        ThePage<QcbInfo> qcbpage = new ThePage<QcbInfo>();

        try {
            if (curpageno != -1) {
                qcbpage = qcbDaoImpl.getQcbPage(keyname.trim(), city, industry, curpageno, qstatus);
            }
            int prepage;
            int nextpage;
            if (qcbpage.getCurrent() - 1 < 1) {
                prepage = 1;
            } else {
                prepage = qcbpage.getCurrent() - 1;
            }

            if (qcbpage.getCurrent() + 1 > qcbpage.getTotalpages()) {
                nextpage = qcbpage.getTotalpages();
            } else {
                nextpage = qcbpage.getCurrent() + 1;
            }

            request.setAttribute("thelist", qcbpage.getPageItems());
            request.setAttribute("totalpage", qcbpage.getTotalpages());
            request.setAttribute("totalrecode", qcbpage.getTotalrecord());
            request.setAttribute("currentpageno", qcbpage.getCurrent());
            request.setAttribute("nextpage", nextpage);
            request.setAttribute("prepage", prepage);

            request.setAttribute("qstatus", qstatus);
            request.setAttribute("keyname", keyname);
            request.setAttribute("city", city);
            request.setAttribute("industry", industry);
        } catch (Exception e) {
            e.printStackTrace();
            return "/error";
        }
        return "/sys/qcblist";
    }

    @RequestMapping("/qcblist")
    public String qcblist(HttpServletRequest request,
                          @RequestParam(value = "keyname") String keyname,
                          @RequestParam(value = "city") int city,
                          @RequestParam(value = "industry") int industry, @RequestParam(value = "qstatus") int qstatus,
                          @RequestParam(value = "curpageno") int curpageno) throws Exception {
        ThePage<QcbInfo> qcbinfopage = new ThePage<QcbInfo>();
        try {
            if (curpageno != -1) {
                qcbinfopage = qcbDaoImpl.getQcbPage(keyname.trim(), city, industry, curpageno, qstatus);
            }
            int prepage;
            int nextpage;
            if (qcbinfopage.getCurrent() - 1 < 1) {
                prepage = 1;
            } else {
                prepage = qcbinfopage.getCurrent() - 1;
            }

            if (qcbinfopage.getCurrent() + 1 > qcbinfopage.getTotalpages()) {
                nextpage = qcbinfopage.getTotalpages();
            } else {
                nextpage = qcbinfopage.getCurrent() + 1;
            }

            request.setAttribute("thelist", qcbinfopage.getPageItems());
            request.setAttribute("totalpage", qcbinfopage.getTotalpages());
            request.setAttribute("totalrecode", qcbinfopage.getTotalrecord());
            request.setAttribute("currentpageno", qcbinfopage.getCurrent());
            request.setAttribute("nextpage", nextpage);
            request.setAttribute("prepage", prepage);
            request.setAttribute("keyname", keyname);
            request.setAttribute("city", city);
            request.setAttribute("industry", industry);
        } catch (Exception e) {
            e.printStackTrace();
            return "/error";
        }
        return "/qcblist";
    }
}