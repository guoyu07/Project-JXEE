package com.jxjee.controller;

import com.jxjee.dao.QuestionDao;
import com.jxjee.entity.JXadmin;
import com.jxjee.entity.Question;
import com.jxjee.entity.ThePage;
import net.sf.json.JSONObject;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * Created by zz on 2016/10/27.
 */
@Controller
public class QuestionController {
    @Resource(name = "questiondao")
    private QuestionDao questionDaoImpl;

    @RequestMapping("/sys/questioninfo")
    public String sysquestioninfo(HttpServletResponse response, @RequestParam(value = "qid") int qid) throws Exception {

        response.setContentType("text/xml;charset=utf-8");
        PrintWriter out = null;
        String json = "{}";
        JSONObject jsonObj = JSONObject.fromObject(json);

        try {
            out = response.getWriter();

            Question questionInfo;
            questionInfo = questionDaoImpl.getQuestion(qid);

            jsonObj.put("questionInfo", questionInfo);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (out != null) {
                out.println(jsonObj.toString());
                out.flush();
                out.close();
            }
        }

        return null;
    }

    @RequestMapping("/sys/questionlist")
    public String sysquestionlist(HttpServletRequest request, @RequestParam(value = "curpageno") int curpageno,
                                  @RequestParam(value = "astate") int astate) throws Exception {
        try {
            ThePage<Question> questionpage = new ThePage<Question>();

            if (curpageno != -1) {
                questionpage = questionDaoImpl.getQuestionPage(astate, curpageno);
            }

            int prepage;
            int nextpage;
            if (questionpage.getCurrent() - 1 < 1) {
                prepage = 1;
            } else {
                prepage = questionpage.getCurrent() - 1;
            }

            if (questionpage.getCurrent() + 1 > questionpage.getTotalpages()) {
                nextpage = questionpage.getTotalpages();
            } else {
                nextpage = questionpage.getCurrent() + 1;
            }

            request.setAttribute("thelist", questionpage.getPageItems());
            request.setAttribute("totalpage", questionpage.getTotalpages());
            request.setAttribute("totalrecode", questionpage.getTotalrecord());
            request.setAttribute("currentpageno", questionpage.getCurrent());
            request.setAttribute("nextpage", nextpage);
            request.setAttribute("prepage", prepage);
            request.setAttribute("astate", astate);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "sys/questionlist";
    }

    @RequestMapping("/sys/questiondeal/{qid}/{curpageno}/{astate}")
    public String sysquestiondeal(HttpServletRequest request, @PathVariable int qid, @PathVariable int curpageno,
                                  @PathVariable int astate) throws Exception {
        try {
            HttpSession session = request.getSession();
            JXadmin admininfo = (JXadmin) session.getAttribute("admininfo");

            Calendar calendar = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String dealtime = sdf.format(calendar.getTime());

            Question question_old = questionDaoImpl.getQuestion(qid);
            question_old.setAstate(1);
            question_old.setDealman(admininfo.getNickname());
            question_old.setDealtime(dealtime);
            questionDaoImpl.update(question_old);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "redirect:/sys/questionlist?curpageno=" + curpageno + "&astate=" + astate;
    }


    @RequestMapping("/newquestion")
    public String newquestion(HttpServletRequest request, @RequestParam(value = "bname") String bname, @RequestParam
            (value = "uname") String uname, @RequestParam(value = "tel") String tel, @RequestParam(value = "resign")
            String resign, @RequestParam(value = "memo") String memo, @RequestParam(value = "qinfo") String qinfo,
                              @RequestParam(value = "wherefrom") String wherefrom) throws Exception {
        Question questionInfo_old = new Question();
        Question questionInfo_new;
        try {
            questionInfo_old.setBname(bname);
            questionInfo_old.setUname(uname);
            questionInfo_old.setTel(tel);
            questionInfo_old.setMemo(memo);
            questionInfo_old.setResign(resign);
            questionInfo_old.setWherefrom(wherefrom);
            questionInfo_old.setQinfo(qinfo);
            questionInfo_old.setAstate(0);

            Calendar calendarstart = Calendar.getInstance();
            questionInfo_old.setCreatetime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendarstart.getTime()));

            questionInfo_new = questionDaoImpl.add(questionInfo_old);

            String msg = "";
            if (questionInfo_new.getId() != 0) {
                msg = "您提交的咨询我们会尽快处理";
            }

            request.setAttribute("msg", msg);
        } catch (Exception e) {
            e.printStackTrace();
            return "sys/login";
        }

        return "thanks";
    }
}
