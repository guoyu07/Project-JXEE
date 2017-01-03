package com.jxjee.dao;

import com.jxjee.entity.ArticleInfo;
import com.jxjee.entity.ThePage;

/**
 * Created by zz on 2016/9/28 15:44.
 */
public interface ArticleDao {
    ArticleInfo addArticle(final ArticleInfo articleinfo_old);

    ArticleInfo getArticle(int id);

    ThePage<ArticleInfo> getArticleList(String atitle, int pageno);

    ThePage<ArticleInfo> getArticleByCol(int cid, int pageno);

    ThePage<ArticleInfo> getArticleByJKadmin(int adminid, int pageno);

    ThePage<ArticleInfo> getArticleByLab(int lid, int pageno);

    boolean update(ArticleInfo articleinfo);

    boolean delete(int id);
}
