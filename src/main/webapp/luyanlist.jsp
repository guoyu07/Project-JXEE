<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/24
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>路演企业展示--江西联合股权交易中心</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>
<div class="container container-down-4em">
    <form class="search-box" action="luyanlist">
        <input name="curpageno" value="0" type="hidden"/>
        <blockquote><strong>企业项目</strong></blockquote>
        <div class="box-tools">
            <div class="input-group search-input lylist-input">
                <div class="input-group-btn">
                    <button class="btn btn-default">
                        项目/企业名称
                    </button>
                </div>
                <input name="keyname" class="form-control pull-right" placeholder="请输入项目名称/企业名称" type="text"
                       value="${keyname}">
            </div>
        </div>
        <div class="search-kind">
            <div class="search-selections">
                <div class="search-tit">行业：</div>
                <div class="radio icheck">
                    <label>
                        <span class="iradio_square-blue">
                            <input name="industry"
                                   <c:choose>
                                   <c:when test="${industry==-1}">checked="checked"</c:when>
                            </c:choose> type="radio" value=-1/>
                            <ins class="iCheck-helper"></ins>
                        </span>
                        不限
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="industry" type="radio" value=1
                                <c:choose>
                                    <c:when test="${industry==1}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        互联网
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="industry" type="radio" value=2
                                <c:choose>
                                    <c:when test="${industry==2}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        计算机IT
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="industry" type="radio" value=3
                                <c:choose>
                                    <c:when test="${industry==3}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        电信及增值
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="industry" type="radio" value=4
                                <c:choose>
                                    <c:when test="${industry==4}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        传媒娱乐
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="industry" type="radio" value=5
                                <c:choose>
                                    <c:when test="${industry==5}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        节能环保
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="industry" type="radio" value=6
                                <c:choose>
                                    <c:when test="${industry==6}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        医疗健康
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="industry" type="radio" value=7
                                <c:choose>
                                    <c:when test="${industry==7}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        金融
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="industry" type="radio" value=8
                                <c:choose>
                                    <c:when test="${industry==8}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        教育
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="industry" type="radio" value=9
                                <c:choose>
                                    <c:when test="${industry==9}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        农林牧渔
                    </label>
                </div>
            </div>

        </div>
        <%--地区--%>
        <div class="search-kind">
            <div class="search-selections">
                <div class="search-tit">地区：</div>
                <div class="radio icheck">
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=-1
                                <c:choose>
                                    <c:when test="${city==-1}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        不限
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=3601
                                <c:choose>
                                    <c:when test="${city==3601}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        南昌
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=3602
                                <c:choose>
                                    <c:when test="${city==3602}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        景德镇
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=3603
                                <c:choose>
                                    <c:when test="${city==3603}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        萍乡
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=3604
                                <c:choose>
                                    <c:when test="${city==3604}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        九江
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=3605
                                <c:choose>
                                    <c:when test="${city==3605}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        新余
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=3606
                                <c:choose>
                                    <c:when test="${city==3606}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        鹰潭
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=3607
                                <c:choose>
                                    <c:when test="${city==3607}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        赣州
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=3608
                                <c:choose>
                                    <c:when test="${city==3608}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        吉安
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=3609
                                <c:choose>
                                    <c:when test="${city==3609}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        宜春
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=3610
                                <c:choose>
                                    <c:when test="${city==3610}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        抚州
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=3611
                                <c:choose>
                                    <c:when test="${city==3611}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        上饶
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="city" type="radio" value=0
                                <c:choose>
                                    <c:when test="${city==0}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        外省
                    </label>
                </div>
            </div>
        </div>
        <%--金额--%>
        <div class="search-kind">
            <div class="search-selections">
                <div class="search-tit">融资额：</div>
                <div class="radio icheck">
                    <label>
                        <span class="iradio_square-blue"><input name="financing" type="radio" value=-1
                                <c:choose>
                                    <c:when test="${financing==-1}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        不限
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="financing" type="radio" value=1
                                <c:choose>
                                    <c:when test="${financing==1}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        100万以下
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="financing" type="radio" value=2
                                <c:choose>
                                    <c:when test="${financing==2}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        100-500万
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="financing" type="radio" value=3
                                <c:choose>
                                    <c:when test="${financing==3}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        500-1000万
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="financing" type="radio" value=4
                                <c:choose>
                                    <c:when test="${financing==4}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        1000-3000万
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="financing" type="radio" value=5
                                <c:choose>
                                    <c:when test="${financing==5}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        3000-5000万
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="financing" type="radio" value=6
                                <c:choose>
                                    <c:when test="${financing==6}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        5000万-1亿
                    </label>
                    <label>
                        <span class="iradio_square-blue"><input name="financing" type="radio" value=7
                                <c:choose>
                                    <c:when test="${financing==7}">checked="checked"</c:when>
                                </c:choose> />
                            <ins class="iCheck-helper"></ins>
                        </span>
                        1亿以上
                    </label>
                </div>
            </div>
        </div>

        <div class="input-group-btn center pdt15">
            <button type="submit" class="btn btn-default">
                <i class="fa fa-search"></i>
                查询
            </button>
        </div>
    </form>
    <p class="claim">
        声明：本次搜索结果由江西联合股权交易中心基于企业所提供信息，仅供投资人参考。
    </p>
    <div class="search-section row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body table-responsive">
                    <div class="box box-primary">
                        <div class="box-body">
                            <ul class="products-list product-list-in-box">
                                <c:choose>
                                    <c:when test="${empty thelist}">
                                        <li class="item row">
                                            没有结果
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach items="${thelist}" var="thelist" varStatus="status">
                                            <li class="item row">
                                                <div class="col-sm-5 product-img">
                                                    <img src="${thelist.imgthumb}" alt="图片展示" height="178" width="340">
                                                </div>
                                                <div class="col-sm-7 product-info">
                                                    <a href="luyaninfo/${thelist.id}"
                                                       class="product-title">${thelist.pname}
                                                        <span class="btn btn-info btn-flat pull-right">${thelist.financingname}</span>
                                                    </a>
                                                    <span class="product-description">简介：${thelist.memo}</span>
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            地区：${thelist.cityname}
                                                        </div>
                                                        <div class="col-sm-4">
                                                            行业：${thelist.industryname}
                                                        </div>
                                                        <div class="col-sm-4">
                                                            融资方式：${thelist.ftypename}
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </div>
                        <nav>
                            <ul class="pager">
                                <li class="previous"><a
                                        href="luyanlist?curpageno=${prepage}&keyname=${keyname}&industry=${industry}&city=${city}&financing=${financing}"><span
                                        aria-hidden="true">&larr;</span>上一页</a></li>
                                <li class="next"><a
                                        href="luyanlist?curpageno=${nextpage}&keyname=${keyname}&industry=${industry}&city=${city}&financing=${financing}">下一页
                                    <span aria-hidden="true">&rarr;</span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="${pageContext.request.contextPath}/head/customer/footer.jsp"/>
</body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/js.jsp"/>
<script src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '10%'
        });
    });
</script>
</html>