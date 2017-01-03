package com.jxjee.controller;

import com.jxjee.dao.JXadminDao;
import com.jxjee.entity.JXadmin;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by zz on 2016/9/28 14:20.
 */
@Controller
public class JXadminController {

    private Logger logger = LogManager.getLogger("JXadminController");

    @Resource(name = "jxadmindao")
    private JXadminDao jxadminDaoImpl;

    @RequestMapping("/sys/login")
    public String syslogin(HttpServletRequest request,
                           @RequestParam(value = "username") String username,
                           @RequestParam(value = "pswd") String pswd) throws Exception {
        try {
            JXadmin admininfo;
            admininfo = jxadminDaoImpl.checkJXadmin(username, pswd);

            HttpSession session = request.getSession();
            session.setAttribute("admininfo", admininfo);
            session.setMaxInactiveInterval(60 * 60 * 24);
        } catch (NullPointerException e) {
            e.printStackTrace();
            logger.info("没有这组用户:" + username + "," + pswd);
            request.setAttribute("msg", "用户名或密码错误:" + username);
            return "/sys/login";
        } catch (Exception e) {
            e.printStackTrace();
            return "/sys/login";
        }

        return "/sys/index";
    }
}
