package com.jxjee.controller;

import com.jxjee.dao.CityInfoDao;
import com.jxjee.dao.DictDao;
import com.jxjee.dao.LuYanDao;
import com.jxjee.entity.CityInfo;
import com.jxjee.entity.Dict;
import com.jxjee.entity.LuYanInfo;
import com.jxjee.entity.ThePage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by zz on 2016/10/31.
 */
@Controller
public class LuYanController {
    @Resource(name = "luyandao")
    private LuYanDao luyanDaoImpl;

    @Resource(name = "dictdao")
    private DictDao dictDaoImpl;

    @Resource(name = "citydao")
    private CityInfoDao cityDaoImpl;

    @RequestMapping("/luyan")
    public String luyan() throws Exception {
        return "luyan";
    }

    @RequestMapping("/sys/luyaninfo/{lyid}")
    public String sysluyaninfo(HttpServletRequest request, @PathVariable(value = "lyid") int lyid) throws Exception {
        try {
            LuYanInfo luyaninfo = luyanDaoImpl.getLuYan(lyid);

            List<CityInfo> citylist = cityDaoImpl.getCityList();

            List<Dict> industrylist = dictDaoImpl.getList("INDUSTRY");
            List<Dict> financetypelist = dictDaoImpl.getList("FINANCETYPE");
            List<Dict> financinglist = dictDaoImpl.getList("FINANCING");

            request.setAttribute("citylist", citylist);
            request.setAttribute("luyaninfo", luyaninfo);
            request.setAttribute("industrylist", industrylist);
            request.setAttribute("financetypelist", financetypelist);
            request.setAttribute("financinglist", financinglist);
        } catch (Exception e) {
            e.printStackTrace();
            return "/sys/login";
        }
        return "/sys/luyanedit";
    }

    @RequestMapping("/sys/newluyan")
    public String sysnewluyan() throws Exception {
        LuYanInfo luyaninfo = new LuYanInfo();
        try {
            luyaninfo.setCname("公司名");
            luyaninfo.setCity(3601);
            luyaninfo.setFinancing(1);
            luyaninfo.setPname("项目名");
            luyaninfo.setMemo("项目简介");
            luyaninfo.setFtype(1);
            luyaninfo.setIndustry(1);
            luyaninfo.setImgthumb("");

            luyaninfo = luyanDaoImpl.add(luyaninfo);

        } catch (Exception e) {
            e.printStackTrace();
            return "/sys/login";
        }
        return "redirect:/sys/luyaninfo/" + luyaninfo.getId();
    }

    @RequestMapping("/sys/luyansave")
    public String sysluyanedit(
            @RequestParam(value = "lyid") int lyid,
            @RequestParam(value = "cname") String cname,
            @RequestParam(value = "cityid") int cityid,
            @RequestParam(value = "financing") int financing,
            @RequestParam(value = "pname") String pname,
            @RequestParam(value = "memo") String memo,
            @RequestParam(value = "ftype") int ftype,
            @RequestParam(value = "industry") int industry,
            @RequestParam(value = "imgthumb") String imgthumb) throws Exception {
        LuYanInfo luyaninfo = luyanDaoImpl.getLuYan(lyid);

        boolean result;
        try {
            luyaninfo.setCname(cname);
            luyaninfo.setCity(cityid);
            luyaninfo.setFinancing(financing);
            luyaninfo.setPname(pname);
            luyaninfo.setMemo(memo);
            luyaninfo.setFtype(ftype);
            luyaninfo.setIndustry(industry);
            luyaninfo.setImgthumb(imgthumb);

            result = luyanDaoImpl.update(luyaninfo);
        } catch (Exception e) {
            e.printStackTrace();
            return "/sys/login";
        }
        return "redirect:/sys/luyaninfo/" + luyaninfo.getId() + "?result=" + result;
    }

    @RequestMapping("/luyaninfo/{lyid}")
    public String luyaninfo(HttpServletRequest request, @PathVariable(value = "lyid") int lyid) throws Exception {
        try {
            LuYanInfo luyaninfo = luyanDaoImpl.getLuYan(lyid);

            request.setAttribute("luyaninfo", luyaninfo);
        } catch (Exception e) {
            e.printStackTrace();
            return "/error";
        }
        return "/luyaninfo";
    }


    @RequestMapping("sys/delluyan")
    public String sysdelluyan(HttpServletRequest request,
                              @RequestParam(value = "lyid") int lyid,
                              @RequestParam(value = "keyname") String keyname,
                              @RequestParam(value = "city") int city,
                              @RequestParam(value = "financing") int financing,
                              @RequestParam(value = "industry") int industry,
                              @RequestParam(value = "curpageno") int curpageno) throws Exception {
        try {
            luyanDaoImpl.delete(lyid);
        } catch (Exception e) {
            e.printStackTrace();
            return "/error";
        }
        return "redirect:/sys/luyanlist?keyname=" + keyname + "&city=" + city + "&industry=" + industry +
                "&financing=" + financing + "&curpageno=" + curpageno;
    }


    @RequestMapping("/sys/luyanlist")
    public String sysluyanlist(HttpServletRequest request,
                               @RequestParam(value = "keyname") String keyname,
                               @RequestParam(value = "city") int city,
                               @RequestParam(value = "industry") int industry,
                               @RequestParam(value = "financing") int financing,
                               @RequestParam(value = "curpageno") int curpageno) throws Exception {
        ThePage<LuYanInfo> luyaninfopage = new ThePage<LuYanInfo>();
        try {
            if (curpageno != -1) {
                luyaninfopage = luyanDaoImpl.getLuYanInfoPage(keyname.trim(), city, industry, financing, curpageno);
            }
            int prepage;
            int nextpage;
            if (luyaninfopage.getCurrent() - 1 < 1) {
                prepage = 1;
            } else {
                prepage = luyaninfopage.getCurrent() - 1;
            }

            if (luyaninfopage.getCurrent() + 1 > luyaninfopage.getTotalpages()) {
                nextpage = luyaninfopage.getTotalpages();
            } else {
                nextpage = luyaninfopage.getCurrent() + 1;
            }

            request.setAttribute("thelist", luyaninfopage.getPageItems());
            request.setAttribute("totalpage", luyaninfopage.getTotalpages());
            request.setAttribute("totalrecode", luyaninfopage.getTotalrecord());
            request.setAttribute("currentpageno", luyaninfopage.getCurrent());
            request.setAttribute("nextpage", nextpage);
            request.setAttribute("prepage", prepage);

            request.setAttribute("keyname", keyname);
            request.setAttribute("city", city);
            request.setAttribute("industry", industry);
            request.setAttribute("financing", financing);

        } catch (Exception e) {
            e.printStackTrace();
            return "/error";
        }
        return "/sys/luyanlist";
    }

    @RequestMapping("/luyanlist")
    public String luyanlist(HttpServletRequest request,
                            @RequestParam(value = "keyname") String keyname,
                            @RequestParam(value = "city") int city,
                            @RequestParam(value = "industry") int industry,
                            @RequestParam(value = "financing") int financing,
                            @RequestParam(value = "curpageno") int curpageno) throws Exception {
        ThePage<LuYanInfo> luyaninfopage = new ThePage<LuYanInfo>();
        try {
            if (curpageno != -1) {
                luyaninfopage = luyanDaoImpl.getLuYanInfoPage(keyname.trim(), city, industry, financing, curpageno);
            }
            int prepage;
            int nextpage;
            if (luyaninfopage.getCurrent() - 1 < 1) {
                prepage = 1;
            } else {
                prepage = luyaninfopage.getCurrent() - 1;
            }

            if (luyaninfopage.getCurrent() + 1 > luyaninfopage.getTotalpages()) {
                nextpage = luyaninfopage.getTotalpages();
            } else {
                nextpage = luyaninfopage.getCurrent() + 1;
            }

            request.setAttribute("thelist", luyaninfopage.getPageItems());
            request.setAttribute("totalpage", luyaninfopage.getTotalpages());
            request.setAttribute("totalrecode", luyaninfopage.getTotalrecord());
            request.setAttribute("currentpageno", luyaninfopage.getCurrent());
            request.setAttribute("nextpage", nextpage);
            request.setAttribute("prepage", prepage);
            request.setAttribute("keyname", keyname);
            request.setAttribute("city", city);
            request.setAttribute("industry", industry);
            request.setAttribute("financing", financing);
        } catch (Exception e) {
            e.printStackTrace();
            return "/error/";
        }
        return "/luyanlist";
    }
}