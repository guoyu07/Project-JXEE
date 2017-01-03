package com.jxjee.dao;

import com.jxjee.entity.Question;
import com.jxjee.entity.ThePage;

/**
 * Created by zz on 2016/10/26.
 */
public interface QuestionDao {
    Question add(final Question question_old);

    Question getQuestion(int id);

    ThePage<Question> getQuestionPage(int pageno);

    boolean update(Question question);

    ThePage<Question> getQuestionPage(int astate, int pageno);
}
