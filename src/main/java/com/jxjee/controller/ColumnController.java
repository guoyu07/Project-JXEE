package com.jxjee.controller;

import com.jxjee.dao.ColumnDao;
import com.jxjee.entity.ColumnInfo;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by zz on 2016/10/25.
 */
@Controller
public class ColumnController {
    @Resource(name = "columndao")
    private ColumnDao columnDaoImpl;

    @RequestMapping("/sys/columnlist")
    public String syscolumnlist(HttpServletRequest request) throws Exception {
        try {
            List<ColumnInfo> columnlist;
            columnlist = columnDaoImpl.getColList();

            request.setAttribute("thelist", columnlist);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "sys/columnlist";
    }

    @RequestMapping("/sys/columnsave")
    public String syscolumnsave(
            @RequestParam(value = "cid") int cid,
            @RequestParam(value = "columnname") String columnname) throws Exception {
        try {
            ColumnInfo columnInfo_old = columnDaoImpl.getColumnInfo(cid);

            columnInfo_old.setColumnname(columnname);
            columnDaoImpl.update(columnInfo_old);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "redirect:/sys/columnlist";
    }
}
