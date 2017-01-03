package com.jxjee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zz on 2016/11/3.
 */
@Controller
public class ProductController {
    @RequestMapping("/sys/productlist")
    public String sysproductlist() throws Exception {
        return "sys/productlist";
    }

    @RequestMapping("/sys/productedit")
    public String productedit() throws Exception {

        return "sys/luyanedit";
    }

    @RequestMapping("/sys/newproduct")
    public String newproduct() throws Exception {

        return "redirect:productedit/";
    }

    @RequestMapping("/sys/productsave")
    public String sysproductsave() throws Exception {
        boolean result = false;

        return "redirect:productedit/?result=" + result;
    }
}
