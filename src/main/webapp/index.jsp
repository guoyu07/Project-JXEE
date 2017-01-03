<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/21
  Time: 8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>江西联合股权交易中心</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>

<%--一下开始使用FULLPAGE.JS--%>
<div id="fullpage">

    <%--业务介绍--%>
    <div class="section" id="section0">
        <div class="slide" id="slide1">
            <div class="css01 caption col-md-6 col-md-offset-3 col-sm-10 col-sm-offset-1 ">
                <h1 class="css02">迈入新四板，让世界认识您</h1>
                <p class="css03">多渠道展现企业风采 &nbsp; &nbsp; 获得专属上市顾问 &nbsp;&nbsp;与1000+位精英企业家并肩前行</p>
                <p class="css04">
                    <a href="#" class="btn btn-primary">了解详情</a>
                </p>
                <p class="css05">
                    <a href=""><i class="fa fa-circle"></i> &nbsp;&nbsp;企业挂牌</a> &nbsp;&nbsp;
                    <a href=""><i class="fa fa-circle"></i> &nbsp;&nbsp;授牌仪式</a> &nbsp;&nbsp;
                    <a href=""><i class="fa fa-circle"></i> &nbsp;&nbsp;整合传播</a> &nbsp;&nbsp;
                </p>
            </div>
        </div>
        <%--<div class="slide" id="slide2">--%>
            <%--<div class="caption col-md-6 col-md-offset-3 col-sm-10 col-sm-offset-1 css01">--%>
                <%--<h1 class="css02">更适合微小企业的融资计划</h1>--%>
                <%--<p class="css03">我们为您提供专属顾问，定制融资方案--%>
                    <%--我们为您建立资本市场信用记录，借用积分越高，融资成本越低、放款速度越快、融资选择越多</p>--%>
                <%--<p class="css04">--%>
                    <%--<a href="#" class="btn btn-primary">了解详情</a>--%>
                <%--</p>--%>
                <%--<p class="css05">--%>
                    <%--<a href=""><i class="fa fa-circle"></i> &nbsp;&nbsp;投融宝</a> &nbsp;&nbsp;--%>
                    <%--<a href=""><i class="fa fa-circle"></i> &nbsp;&nbsp;私募债</a> &nbsp;&nbsp;--%>
                    <%--<a href=""><i class="fa fa-circle"></i> &nbsp;&nbsp;资金计划</a> &nbsp;&nbsp;--%>
                <%--</p>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--提供一个简单版面的入口--%>
        <a href="simply-index.jsp" class="simply-enter hidden-sm hidden-xs">
            <button class="btn btn-default btn-info btn-flat">简版显示</button>
        </a>
    </div>
    <%--企业风采--%>
    <div class="section " id="section1">
        <div class="bg10"></div>
        <div class="enterprise-style container">
            <div class="css1">
                <b>[ 多功能 全方位 ]</b>
                <h3>提供·多渠道融资计划</h3>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="css10 css11">
                        <img src="${pageContext.request.contextPath}image/bg14.png" alt="挂牌展示" title="挂牌展示" align="center">
                        <h4><b>挂牌展示</b></h4>
                        <p>多渠道展示企业风采，让企业站上资本市场舞台，获得社会关注，发掘投融资机会。</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="css10 css12">
                        <img src="${pageContext.request.contextPath}image/bg13.png" alt="登记托管" title="登记托管" align="center">
                        <h4><b>登记托管</b></h4>
                        <p>为江西地区非上市股份公司提供股份登记、托管、变更、查询等服务。</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="css10 css13">
                        <img src="${pageContext.request.contextPath}image/bg12.png" alt="融资服务" title="融资服务" align="center">
                        <h4><b>融资服务</b></h4>
                        <p>配备专属融资顾问，定制融资方案，融资成本更低、放款速度更快、融资选择更多。</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="css10 css14">
                        <img src="${pageContext.request.contextPath}image/bg11.png" alt="投资服务" title="投资服务" align="center">
                        <h4><b>投资服务</b></h4>
                        <p>股权投资、债权投资，更多选择、更高收益。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--公司简介--%>
    <div class="section " id="section2">
        <div class="css21"></div>
        <div class="introduction container">
            <div class="row css1">
                <b>[ 区域性股权交易市场 ]</b>
                <h3>江西联合股权交易中心</h3>
                <p class="col-sm-6 col-sm-offset-3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区域性股权交易市场（下称“区域股权市场”）是为特定区域内的企业提供股权、债券的转让和融资服务的私募市场，是我国多层次资本市场的重要组成部分，亦是中国多层次资本市场建设中必不可少的部分。对于促进企业特别是中小微企业股权交易和融资，鼓励科技创新和激活民间资本，加强对实体经济薄弱环节的支持，具有积极作用。</p>
            </div>
            <div class="row ">
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="${pageContext.request.contextPath}/image/introductionbg1.png" alt="">
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6 hidden-xs no-padding center">
                    <img src="${pageContext.request.contextPath}/image/introductionbg2.png" alt="">
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="${pageContext.request.contextPath}/image/introductionbg3.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <%--公司新闻--%>
    <%--<div class="section news" id="section3">--%>
        <%--<div class="caption col-md-6 css31">--%>
            <%--<ul id="myTab" class="nav nav-tabs nav-justified">--%>
                <%--<li class="active">--%>
                    <%--<a href="#NoticeOfListing" data-toggle="tab">挂牌公告</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="#NoticeOnTransferOfAssets" data-toggle="tab">资产转让公告</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="#RegisterAHostingBulletin" data-toggle="tab">登记托管公告</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="#RelatedPolicy" data-toggle="tab">相关政策</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
            <%--<div id="myTabContent" class="tab-content">--%>
                <%--<div class="tab-pane fade in active" id="NoticeOfListing">--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>

                <%--</div>--%>
                <%--<div class="tab-pane fade in" id="NoticeOnTransferOfAssets">--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="tab-pane fade in" id="RegisterAHostingBulletin">--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="tab-pane fade in" id="RelatedPolicy">--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>

            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="caption col-md-6 css32 hidden-sm hidden-xs">--%>
            <%--<ul id="myTab2" class="nav nav-tabs nav-justified">--%>
                <%--<li class="active">--%>
                    <%--<a href="#ProductAnnouncement" data-toggle="tab">产品公告</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="#CompanyNews" data-toggle="tab">公司新闻</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="#LegalNotices" data-toggle="tab">法律声明</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="#CooperationAgencies" data-toggle="tab">合作机构</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="#WutongWisdomLanguage" data-toggle="tab">梧桐智语</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
            <%--<div id="myTab2Content" class="tab-content">--%>
                <%--<div class="tab-pane fade in active" id="ProductAnnouncement">--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>

                <%--</div>--%>
                <%--<div class="tab-pane fade in" id="CompanyNews">--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>
                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="tab-pane fade in" id="LegalNotices">--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="tab-pane fade in" id="CooperationAgencies">--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="tab-pane fade in" id="WutongWisdomLanguage">--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="media">--%>
                        <%--<a class="pull-left" href="#">--%>

                            <%--<span class="mouth">09</span>--%>
                            <%--<span class="date">12</span>--%>
                        <%--</a>--%>
                        <%--<div class="media-body">--%>
                            <%--<span class="media-heading"><b>南昌市海林钢铁实业有限公司等17家企业挂牌公告</b></span>--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                            <%--南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告南昌市海林钢铁实业有限公司等17家企业挂牌公告--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>

            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--挂牌公司--%>
    <div class="section company" id="section4">
        <div class="roadshow container">
            <div class="row css1">
                <b>[ 挂牌企业 ]</b>
                <h3>路演中心·企业展示</h3>
            </div>
            <div class="row ">
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="${pageContext.request.contextPath}image/dhzh.png" alt="">
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="${pageContext.request.contextPath}image/fny.png" alt="">
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="${pageContext.request.contextPath}image/jnlj.png" alt="">
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="${pageContext.request.contextPath}image/lykj.png" alt="">
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="${pageContext.request.contextPath}image/mjsjg.png" alt="">
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="${pageContext.request.contextPath}image/zhjy.png" alt="">
                </div>
            </div>
        </div>
        <div class="copyright">
            <a href="">关于我们</a>
            <a href="">联系我们</a>
            <a href="">加入我们</a>
            <a href="">法律声明</a>
            <a href="">常见问题</a>
            <span>|</span>
            <span>©2015 江西联合股权交易中心 版权所有   赣ICP备 15008881号-1</span>
        </div>
    </div>
</div>

<%--<jsp:include page="/head/customer/footer.jsp"/>--%>
</body>
<jsp:include page="/head/customer/js.jsp"/>
<script src="plugins/Fullpage/jquery.fullPage.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#fullpage').fullpage({
            anchors: ['page1', 'page2', 'page3', 'page4', 'page5'],
            menu: '#menu',
            easingcss3: 'cubic-bezier(0.175, 0.885, 0.320, 1.275)',
            navigation: true,
            navigationPosition: 'right',
            navigationTooltips: ['业务介绍', '企业风采', '公司简介', '公司新闻', '挂牌公司'],
            slidesNavigation: true
        })
    });
    $()
</script>
</html>
