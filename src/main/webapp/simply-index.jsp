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
    <div class="section simply-carousel" id="section0">
        <div class="slide" id="simply-section">
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
        <div class="slide" id="slide2">
            <div class="caption col-md-6 col-md-offset-3 col-sm-10 col-sm-offset-1 css01">
                <h1 class="css02">更适合微小企业的融资计划</h1>
                <p class="css03">我们为您提供专属顾问，定制融资方案
                    我们为您建立资本市场信用记录，借用积分越高，融资成本越低、放款速度越快、融资选择越多</p>
                <p class="css04">
                    <a href="#" class="btn btn-primary">了解详情</a>
                </p>
                <p class="css05">
                    <a href=""><i class="fa fa-circle"></i> &nbsp;&nbsp;投融宝</a> &nbsp;&nbsp;
                    <a href=""><i class="fa fa-circle"></i> &nbsp;&nbsp;私募债</a> &nbsp;&nbsp;
                    <a href=""><i class="fa fa-circle"></i> &nbsp;&nbsp;资金计划</a> &nbsp;&nbsp;
                </p>
            </div>
        </div>
        <%--提供一个新版版面的入口--%>
        <a href="index.jsp" class="simply-enter hidden-sm hidden-xs">
            <button class="btn btn-default btn-info btn-flat">返回新版</button>
        </a>
    </div>

</div>

<div class="simply-wrap">
    <%--企业风采--%>
    <%--<div class="simply-section simply-section-intro">--%>
    <%--<div class="enterprise-style container">--%>
    <%--<div class="row simply-functions">--%>
    <%--<div class="col-md-3 col-sm-6 col-xs-6">--%>
    <%--<div class="">--%>
    <%--<img src="${pageContext.request.contextPath}image/bg14.png" alt="挂牌展示" title="挂牌展示"--%>
    <%--align="center">--%>
    <%--<h4><b>挂牌展示</b></h4>--%>
    <%--<p>多渠道展示企业风采，让企业站上资本市场舞台，获得社会关注，发掘投融资机会。</p>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<div class="col-md-3 col-sm-6 col-xs-6">--%>
    <%--<div class=" ">--%>
    <%--<img src="${pageContext.request.contextPath}image/bg13.png" alt="登记托管" title="登记托管"--%>
    <%--align="center">--%>
    <%--<h4><b>登记托管</b></h4>--%>
    <%--<p>为江西地区非上市股份公司提供股份登记、托管、变更、查询等服务。</p>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<div class="col-md-3 col-sm-6 col-xs-6">--%>
    <%--<div class=" ">--%>
    <%--<img src="${pageContext.request.contextPath}image/bg12.png" alt="融资服务" title="融资服务"--%>
    <%--align="center">--%>
    <%--<h4><b>融资服务</b></h4>--%>
    <%--<p>配备专属融资顾问，定制融资方案，融资成本更低、放款速度更快、融资选择更多。</p>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<div class="col-md-3 col-sm-6 col-xs-6">--%>
    <%--<div class=" ">--%>
    <%--<img src="${pageContext.request.contextPath}image/bg11.png" alt="投资服务" title="投资服务"--%>
    <%--align="center">--%>
    <%--<h4><b>投资服务</b></h4>--%>
    <%--<p>股权投资、债权投资，更多选择、更高收益。</p>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--公司新闻--%>
    <div class="simply-section simply-index-news">
        <div class="container">
            <nav class="navbar">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target=".navbar-collapse">
                            <span class="sr-only">导航</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="navbar-collapse collapse ">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="https://www.jxjee.com/node/service/listed/" class="active">首页</a>
                            </li>

                            <li>
                                <a href="https://www.jxjee.com/node/invest/index_v2New">投资园地</a>
                            </li>
                            <li>
                                <a href="https://www.jxjee.com/node/company/standard">挂牌企业</a>
                            </li>
                            <li>
                                <a href="">挂牌展示</a>
                            </li>
                            <li>
                                <a href="">登记托管</a>
                            </li>
                            <li>
                                <a href="">融资服务</a>
                            </li>
                            <li class="dropdown">
                                <a href="" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">服务咨询
                                    <span
                                            class="caret"></span></a>
                                <ul class="dropdown-menu inner-dropdown" role="menu" aria-labelledby="navbarDrop1">
                                    <li>
                                        <a href="https://www.jxjee.com/node/service/listed/">企业服务</a>
                                    </li>

                                    <li>
                                        <a href="">投资服务</a>
                                    </li>
                                    <li>
                                        <a href="">路演大厅</a>
                                    </li>
                                    <li>
                                        <a href="">培训咨询</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="row">
                <div class="col-md-4">
                    <div class="l-left-col" alog-group="focus-top-left">
                        <div id="left-col-wrapper">
                            <div id="headline-tabs" class="mod-headline-tab">
                                <ul class="clearfix">
                                    <li class="active"><a href="javascript:;" data-control="pane-news">热点要闻</a></li>
                                    <li class="last-tab"><a href="javascript:;" data-control="pane-recommend">个性推荐</a>
                                    </li>
                                </ul>
                                <a id="tab-login" class="tab-login" href="javascript:;" onclick="return false"
                                   mon="m=53&amp;a=3" style="display: inline;"></a>
                            </div>
                            <div class="mod-tab-content">
                                <div id="pane-news" class="mod-tab-pane active" style="display: block;">
                                    <div class="hotnews" alog-group="focustop-hotnews">
                                        <ul>
                                            <li class="hdline0">
                                                <i class="dot"></i>
                                                <strong>
                                                    <a href="http://china.huanqiu.com/article/2016-12/9810811.html?from=bdwz"
                                                       target="_blank" class="a3" mon="ct=1&amp;a=1&amp;c=top&amp;pn=0">从家出发：习近平总书记的“家国情怀”</a>
                                                </strong>
                                            </li>
                                            <li class="hdline1">
                                                <a href="http://china.huanqiu.com/article/2016-12/9809743.html?from=bdwz"
                                                   target="_blank" mon="r=1">经济新常态</a>
                                                &nbsp;<a href="http://guancha.gmw.cn/2016-12/14/content_23259733.htm"
                                                         target="_blank" mon="r=1">高校思想政治工作</a>
                                                &nbsp;<a
                                                    href="http://news.ifeng.com/mainland/special/xjpzglzzsn/?_zbs_baidu_news"
                                                    target="_blank" mon="r=1">治国</a>
                                                &nbsp;<a href="http://views.ce.cn/subject/lswlzgjj/" target="_blank"
                                                         mon="r=1">理上网来</a>
                                                &nbsp;<a
                                                    href="http://tv.cctv.com/2016/12/14/VIDEfKAaypEjGFz4Y8vXhINE161214.shtml"
                                                    target="_blank" mon="r=1">慰问电</a>
                                                &nbsp;<a
                                                    href="http://news.cctv.com/2016/12/14/ARTI4MTR6aKFOVAjobDF9Ga5161214.shtml"
                                                    target="_blank" mon="r=1">中国梦</a>
                                            </li>
                                            <li class="hdline2">
                                                <i class="dot"></i>
                                                <strong>
                                                    <a href="http://china.huanqiu.com/article/2016-12/9811694.html?from=bdwz "
                                                       target="_blank" class="a3" mon="ct=1&amp;a=1&amp;c=top&amp;pn=1">李克强关心的这件事又有进展了 </a>
                                                    &nbsp;<a
                                                        href="http://china.huanqiu.com/article/2016-12/9811695.html?from=bdwz "
                                                        target="_blank" class="a3"
                                                        mon="ct=1&amp;a=1&amp;c=top&amp;pn=1">减税降费</a>
                                                </strong>
                                            </li>
                                            <li class="hdline3">
                                                <a href="http://china.huanqiu.com/article/2016-12/9806082.html?from=bdwz"
                                                   target="_blank" mon="r=1">"双创"是经济转型最大新动能</a>
                                                &nbsp;<a
                                                    href="http://china.huanqiu.com/article/2016-12/9801304.html?from=bdwz"
                                                    target="_blank" mon="r=1">张德江</a>
                                                &nbsp;<a
                                                    href="http://china.huanqiu.com/article/2016-12/9805936.html?from=bdwz"
                                                    target="_blank" mon="r=1">俞正声</a>
                                                &nbsp;<a
                                                    href="http://world.huanqiu.com/exclusive/2016-12/9801309.html?from=bdwz"
                                                    target="_blank" mon="r=1">刘云山</a>
                                                &nbsp;<a href="http://china.huanqiu.com/article/2016-12/9809965.html"
                                                         target="_blank" mon="r=1">中国人的故事</a>
                                            </li>
                                            <li class="hdline4">
                                                <i class="dot"></i>
                                                <strong>
                                                    <a href="http://world.huanqiu.com/exclusive/2016-12/9812669.html?from=bdwz"
                                                       target="_blank" class="a3" mon="ct=1&amp;a=1&amp;c=top&amp;pn=2">美联储宣布加息25个基点
                                                        离岸人民币大跌</a>
                                                </strong>
                                            </li>
                                            <li class="hdline5">
                                                <a href="http://world.huanqiu.com/article/2016-12/9812652.html?from=bdwz"
                                                   target="_blank" mon="r=1">全球货币暴跌</a>
                                                &nbsp;<a
                                                    href="http://world.huanqiu.com/article/2016-12/9812696.html?from=bdwz"
                                                    target="_blank" mon="r=1">美联储主席回应加息</a>
                                                &nbsp;<a
                                                    href="http://world.huanqiu.com/article/2016-12/9812711.html?from=bdwz"
                                                    target="_blank" mon="r=1">专访前IMF顾问</a>
                                                &nbsp;<a
                                                    href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520867.shtml"
                                                    target="_blank" mon="r=1">A股港股开盘下跌</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <ul class="ulist focuslistnews">
                                        <li class="bold-item">
                                            <span class="dot"></span>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520180.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=1" target="_blank">普京时隔11年访日
                                                日媒称领土问题难有大幅进展</a></li>
                                        <li>
                                            <a href="http://news.china.com/domestic/945/20161215/30080255.html"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=2" target="_blank">蔡英文被美媒评为"全球思想家"
                                                学者:国际大笑话</a></li>
                                        <li>
                                            <a href="http://news.china.com/domesticgd/10000159/20161215/30080207.html"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=3" target="_blank">韩媒称中国船与韩渔船相撞后逃逸
                                                韩海警欲开枪</a></li>
                                        <li>
                                            <a href="http://world.huanqiu.com/exclusive/2016-12/9812253.html?from=bdwz"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=4" target="_blank">越南公开宣称南沙群岛系本国领土
                                                指控中国侵占</a></li>
                                        <li>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520040.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=5" target="_blank">外媒：解开伦敦“杀人雾”之谜有助于中国治霾</a>
                                        </li>
                                        <li>
                                            <a href="http://news.china.com/international/1000/20161215/30080244.html"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=6" target="_blank">上海教师出国开饭店
                                                4年后成非洲首位华人酋长(图)</a></li>
                                    </ul>
                                    <ul class="ulist focuslistnews">
                                        <li class="bold-item">
                                            <span class="dot"></span>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520154.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=7" target="_blank">罗尔再次发文：女儿病情仍危重
                                                37天花掉28万元</a></li>
                                        <li>
                                            <a href="http://china.huanqiu.com/article/2016-12/9812699.html?from=bdwz"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=8" target="_blank">中国女留学生日本遇害
                                                嫌疑人被正式起诉</a></li>
                                        <li>
                                            <a href="http://xinwen.eastday.com/a/161215064911338.html"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=9" target="_blank">6岁的女孩 “嫁”给亲生父亲
                                                真相让人泪奔</a></li>
                                        <li>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161214/1519852.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=10" target="_blank">陕西3000名学生身份信息疑遭泄露
                                                被办信用卡</a></li>
                                        <li>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520796.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=11" target="_blank">教育乱收费往往打着自愿旗号
                                                学生甚至有攀比心理</a></li>
                                        <li>
                                            <a href="http://news.china.com/domestic/945/20161215/30080235.html"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=12" target="_blank">食药监总局官员与妻共受贿百余万
                                                数家疫苗企业行贿</a></li>
                                    </ul>
                                    <ul class="ulist focuslistnews">
                                        <li class="bold-item">
                                            <span class="dot"></span>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520068.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=13" target="_blank">春运火车票今起开售
                                                四大攻略助你抢到回家票</a></li>
                                        <li>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520035.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=14" target="_blank">ETC卡隔空被盗刷
                                                交通部要求暂停发行此类联名卡</a></li>
                                        <li>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520061.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=15" target="_blank">全面二孩后高龄产妇增多
                                                “猴宝宝”扎堆出生</a></li>
                                        <li>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520039.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=16" target="_blank">2017年春运变化：可刷脸进站
                                                网购车票6点起售</a></li>
                                        <li>
                                            <a href="http://news.ifeng.com/a/20161215/50420684_0.shtml?_zbs_baidu_news"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=17"
                                               target="_blank">备受争议！日本凌晨通过赌场合法化法案</a></li>
                                        <li>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520047.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=18" target="_blank">财政所公务员为还赌债
                                                偷盖公章挪用125万余元</a></li>
                                    </ul>
                                    <ul class="ulist focuslistnews">
                                        <li class="bold-item">
                                            <span class="dot"></span>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520056.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=19" target="_blank">日方透露收回日俄争议岛屿后打算：或部署美军</a>
                                        </li>
                                        <li>
                                            <a href="http://news.china.com/international/1000/20161215/30080260.html"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=20" target="_blank">确定了！首批4架苏-35战斗机将于12月25日交付中国</a>
                                        </li>
                                        <li>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520031.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=21" target="_blank">外媒:特朗普内阁偏爱军人和CEO
                                                “反奥巴马”色彩浓</a></li>
                                        <li>
                                            <a href="http://world.huanqiu.com/exclusive/2016-12/9812908.html?from=bdwz"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=22" target="_blank">乾隆玉玺在法国拍卖
                                                中国买家以2100万欧元拍得</a></li>
                                        <li>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520030.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=23" target="_blank">境外媒体：中国富豪给美高校捐款引舆论“炸锅”</a>
                                        </li>
                                        <li>
                                            <a href="http://xinwen.eastday.com/a/161214163230192.html"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=24" target="_blank">云南一村庄35户家庭33户吸毒：毒品毁了村里的男人</a>
                                        </li>
                                    </ul>
                                    <ul class="ulist focuslistnews">
                                        <li class="bold-item">
                                            <span class="dot"></span>
                                            <a href="http://news.ifeng.com/a/20161214/50417090_0.shtml?_zbs_baidu_news#p=1"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=25" target="_blank">中西警方联手打击电信诈骗</a>
                                        </li>
                                        <li>
                                            <a href="http://society.huanqiu.com/article/2016-12/9813008.html?from=bdwz"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=26" target="_blank">上海一驾校教练车全是奔驰受女性欢迎
                                                学费超万元</a></li>
                                        <li>
                                            <a href="http://society.huanqiu.com/article/2016-12/9812678.html?from=bdwz"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=27" target="_blank">结过3次婚女子装白富美诈骗
                                                飞行员被骗百万</a></li>
                                        <li>
                                            <a href="http://www.cankaoxiaoxi.com/roll10/bd/20161215/1520069.shtml"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=28" target="_blank">女子称遭性侵涉事医生否认
                                                医院：两边说法都不信</a></li>
                                        <li>
                                            <a href="http://world.huanqiu.com/exclusive/2016-12/9812487.html?from=bdwz"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=29" target="_blank">2016年福布斯最具权力人物榜：普京力压特朗普</a>
                                        </li>
                                        <li>
                                            <a href="http://news.k618.cn/society/201612/t20161215_9750261.html"
                                               mon="ct=1&amp;a=2&amp;c=top&amp;pn=30" target="_blank">副县长被女子诈骗1500万
                                                知情人：智商叹为观止</a></li>
                                    </ul>
                                </div>
                                <div id="pane-recommend" class="mod-tab-pane pane-recommend" style="display: none;">
                                    <div class="mod-tab-loading" style="display: none;">
                                        <i class="icon-loading"></i>
                                        <p class="desc">加载中请您耐心等待...</p>
                                    </div>
                                    <div class="tip-wrapper" style="display: block;">
                                        <a id="tip" class="mod-headline-tip" href="javascript:;" mon="m=53&amp;a=5">
                                            <i class="tip-logo"></i>
                                            <div class="tip-content">点击刷新，将会有未读推荐</div>
                                        </a>
                                    </div>
                                    <script type="text/javascript">
                                        // 如果有图的文章出现白图的情况（图片大小小于10*10则视为白图），去掉图片展示
                                        function checkimg(obj) {
                                            // console.log('obj.width: ' + obj.width);
                                            if (obj.naturalWidth < 10) {
                                                var picWrapper = obj.parentElement.parentElement;
                                                var item = obj.parentElement.parentElement.parentElement;
                                                // console.log('-------picWrapper');
                                                // console.dir(picWrapper);
                                                // console.log('-------item');
                                                // console.dir(item);
                                                picWrapper.style.display = 'none';
                                                if (item.className.search('notb') > -1) {
                                                    item.className = 'feeds-item-detail notb';
                                                } else {
                                                    item.className = 'feeds-item-detail';
                                                }
                                            }
                                        }
                                    </script>
                                    <div class="feeds" id="feeds">
                                        <div class="feeds-group" style="display: block;">
                                            <div class="feeds-item">
                                                <div class="feeds-item-detail hasImg  notb "><p class="feeds-item-pic">
                                                    <a href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=1&amp;nid=7824927968696252558&amp;pos=0&amp;layout=1&amp;token=1dbf8ab9430c1bc622930c7debdb09dc&amp;url=http%3A%2F%2Fnews.163.com%2F16%2F1215%2F08%2FC8AJKDVD0001899N.html"
                                                       target="_blank" mon="m=53&amp;a=6"><img
                                                            src="http://timg01.baidu-img.cn/timg?tc&amp;size=c169_m119&amp;sec=0&amp;quality=&amp;di=ef88027100817b0cef77866813dacfc8&amp;src=http%3A%2F%2Ft10.baidu.com%2Fit%2Fu%3D3512415213%2C88740932%26fm%3D170%26s%3D49DD66864C036D49043E82630300C079%26w%3D218%26h%3D147%26img.PNG"
                                                            onload="checkimg(this)"></a></p>
                                                    <div class="feeds-item-paragraph"><h3><a
                                                            href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=1&amp;nid=7824927968696252558&amp;pos=0&amp;layout=1&amp;token=1dbf8ab9430c1bc622930c7debdb09dc&amp;url=http%3A%2F%2Fnews.163.com%2F16%2F1215%2F08%2FC8AJKDVD0001899N.html"
                                                            target="_blank"
                                                            mon="m=53&amp;a=6">中央经济工作会议召开：明年GDP目标或定为6.5%</a></h3>
                                                        <p class="feeds-item-text">部署2017年经济工作。</p></div>
                                                    <div class="feeds-item-info"><p class="labels"><span class="label">网易头条</span>
                                                    </p></div>
                                                </div>
                                            </div>
                                            <div class="feeds-item">
                                                <div class="feeds-item-detail hasImg  "><p class="feeds-item-pic"><a
                                                        href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=2&amp;nid=2688808598984492344&amp;pos=1&amp;layout=1&amp;token=e547beef81761c004d4d4d82d291d2fe&amp;url=http%3A%2F%2Fjincuodao.baijia.baidu.com%2Farticle%2F723787"
                                                        target="_blank" mon="m=53&amp;a=6"><img
                                                        src="http://timg01.baidu-img.cn/timg?tc&amp;size=c169_m119&amp;sec=0&amp;quality=&amp;di=ea7a74c5f2ff37f9127f1deb208e9eec&amp;src=http%3A%2F%2Ft12.baidu.com%2Fit%2Fu%3D3216486377%2C1642403586%26fm%3D170%26s%3DFAA3716CAE08105503C03C820300B093%26w%3D218%26h%3D146%26img.JPEG"
                                                        onload="checkimg(this)"></a></p>
                                                    <div class="feeds-item-paragraph"><h3><a
                                                            href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=2&amp;nid=2688808598984492344&amp;pos=1&amp;layout=1&amp;token=e547beef81761c004d4d4d82d291d2fe&amp;url=http%3A%2F%2Fjincuodao.baijia.baidu.com%2Farticle%2F723787"
                                                            target="_blank" mon="m=53&amp;a=6">35岁亏了3000万，如今已是双百亿，他有一句忠告！</a>
                                                    </h3>
                                                        <p class="feeds-item-text">我不要公司送的房子，换来了27岁就操作5亿资金的资格。</p></div>
                                                    <div class="feeds-item-info"><p class="labels"><span class="label">百家原创</span>
                                                    </p></div>
                                                </div>
                                            </div>
                                            <div class="feeds-item">
                                                <div class="feeds-item-detail hasImg  "><p class="feeds-item-pic"><a
                                                        href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=2&amp;nid=7019599438841136990&amp;pos=2&amp;layout=1&amp;token=1cd134c93c98f6c2a55a6f4a68c3787b&amp;url=http%3A%2F%2Ftech.163.com%2F16%2F1214%2F12%2FC88DAUKI00097U7R.html"
                                                        target="_blank" mon="m=53&amp;a=6"><img
                                                        src="http://timg01.baidu-img.cn/timg?tc&amp;size=c169_m119&amp;sec=0&amp;quality=&amp;di=e4349206e515b5eb14825fdee931adac&amp;src=http%3A%2F%2Ft10.baidu.com%2Fit%2Fu%3D424207104%2C3970266157%26fm%3D170%26s%3D3BA47722111BC5CC5CDA566E03%26w%3D218%26h%3D146%26img.PNG"
                                                        onload="checkimg(this)"></a></p>
                                                    <div class="feeds-item-paragraph"><h3><a
                                                            href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=2&amp;nid=7019599438841136990&amp;pos=2&amp;layout=1&amp;token=1cd134c93c98f6c2a55a6f4a68c3787b&amp;url=http%3A%2F%2Ftech.163.com%2F16%2F1214%2F12%2FC88DAUKI00097U7R.html"
                                                            target="_blank" mon="m=53&amp;a=6">买买买！那些阿里巴巴收购的大公司</a></h3>
                                                        <p class="feeds-item-text">
                                                            优酷土豆——这家视频流公司的交易价值约50亿美元，是阿里巴巴迄今为止最大的投资。</p></div>
                                                    <div class="feeds-item-info"><p class="labels"></p></div>
                                                </div>
                                            </div>
                                            <div class="feeds-item">
                                                <div class="feeds-item-detail hasImg  "><p class="feeds-item-pic"><a
                                                        href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=1&amp;nid=12202536014968116270&amp;pos=3&amp;layout=1&amp;token=8db1c42f6825eafb8bbe456519aa948d&amp;url=http%3A%2F%2Fmoney.163.com%2F16%2F1215%2F09%2FC8ALC2RR002581PP.html"
                                                        target="_blank" mon="m=53&amp;a=6"><img
                                                        src="http://timg01.baidu-img.cn/timg?tc&amp;size=c169_m119&amp;sec=0&amp;quality=&amp;di=c8493fb7075ade48c94351b334d1fc36&amp;src=http%3A%2F%2Ft10.baidu.com%2Fit%2Fu%3D177262263%2C4136426839%26fm%3D170%26s%3DE6E823F07F1740C21CE828E003005032%26w%3D218%26h%3D146%26img.JPEG"
                                                        onload="checkimg(this)"></a></p>
                                                    <div class="feeds-item-paragraph"><h3><a
                                                            href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=1&amp;nid=12202536014968116270&amp;pos=3&amp;layout=1&amp;token=8db1c42f6825eafb8bbe456519aa948d&amp;url=http%3A%2F%2Fmoney.163.com%2F16%2F1215%2F09%2FC8ALC2RR002581PP.html"
                                                            target="_blank" mon="m=53&amp;a=6">人民币中间价狂贬261点
                                                        创2008年6月来最低</a></h3>
                                                        <p class="feeds-item-text">上日中间价6.9028，夜盘收盘报6.9070。</p></div>
                                                    <div class="feeds-item-info"><p class="labels"><span class="label">网易要闻</span>
                                                    </p></div>
                                                </div>
                                            </div>
                                            <div class="feeds-item">
                                                <div class="feeds-item-detail hasImg  "><p class="feeds-item-pic"><a
                                                        href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=1&amp;nid=6508889636318641520&amp;pos=4&amp;layout=1&amp;token=f18e3923fb2c7232a8656e7dfacba723&amp;url=http%3A%2F%2Fnews.163.com%2F16%2F1215%2F09%2FC8AM4MJ1000189FH.html"
                                                        target="_blank" mon="m=53&amp;a=6"><img
                                                        src="http://timg01.baidu-img.cn/timg?tc&amp;size=c169_m119&amp;sec=0&amp;quality=&amp;di=d30a23c97596965174d7fdd9aad34313&amp;src=http%3A%2F%2Ft11.baidu.com%2Fit%2Fu%3D1545719092%2C2860314970%26fm%3D170%26s%3D1005D11479BBC79A856835D20300C0B4%26w%3D218%26h%3D146%26img.PNG"
                                                        onload="checkimg(this)"></a></p>
                                                    <div class="feeds-item-paragraph"><h3><a
                                                            href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=1&amp;nid=6508889636318641520&amp;pos=4&amp;layout=1&amp;token=f18e3923fb2c7232a8656e7dfacba723&amp;url=http%3A%2F%2Fnews.163.com%2F16%2F1215%2F09%2FC8AM4MJ1000189FH.html"
                                                            target="_blank" mon="m=53&amp;a=6">拒绝诈骗忽悠 正确解读央行账户管理新政</a>
                                                    </h3>
                                                        <p class="feeds-item-text">
                                                            道高一尺，魔高一丈，诈骗手法花样翻新账户管理新政失效，但实际并非如此。</p></div>
                                                    <div class="feeds-item-info"><p class="labels"><span class="label">网易头条</span>
                                                    </p></div>
                                                </div>
                                            </div>
                                            <div class="feeds-item">
                                                <div class="feeds-item-detail hasImg  "><p class="feeds-item-pic"><a
                                                        href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=1&amp;nid=5571481515585573750&amp;pos=5&amp;layout=1&amp;token=d8a39ad9b2ae7ada4fa4c240b628fd9b&amp;url=http%3A%2F%2Fnews.163.com%2F16%2F1215%2F05%2FC8A84FHR0001899N.html"
                                                        target="_blank" mon="m=53&amp;a=6"><img
                                                        src="http://timg01.baidu-img.cn/timg?tc&amp;size=c169_m119&amp;sec=0&amp;quality=&amp;di=c13432132ea7ac34c95c369270f7a51e&amp;src=http%3A%2F%2Ft10.baidu.com%2Fit%2Fu%3D3565318935%2C272393078%26fm%3D170%26s%3D7E1440845202015598073B850300E08C%26w%3D218%26h%3D146%26img.JPEG"
                                                        onload="checkimg(this)"></a></p>
                                                    <div class="feeds-item-paragraph"><h3><a
                                                            href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=1&amp;nid=5571481515585573750&amp;pos=5&amp;layout=1&amp;token=d8a39ad9b2ae7ada4fa4c240b628fd9b&amp;url=http%3A%2F%2Fnews.163.com%2F16%2F1215%2F05%2FC8A84FHR0001899N.html"
                                                            target="_blank" mon="m=53&amp;a=6">苦等1年 美联储终于加息!全球货币瞬间暴跌</a>
                                                    </h3>
                                                        <p class="feeds-item-text">
                                                            美联储公布利率决议，将联邦基金利率提高25个基点，美联储利率决定上限为0.75%，下限为0.5%。</p></div>
                                                    <div class="feeds-item-info"><p class="labels"><span class="label">网易头条</span>
                                                    </p></div>
                                                </div>
                                            </div>
                                            <div class="feeds-item">
                                                <div class="feeds-item-detail hasImg  "><p class="feeds-item-pic"><a
                                                        href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=2&amp;nid=15385538090410719939&amp;pos=6&amp;layout=1&amp;token=f0baef08be4cd2cbf90145cb25ac55e7&amp;url=http%3A%2F%2Fnapi.uc.cn%2F3%2Fclasses%2Farticle%2Fobjects%2Fd950ac00059c44479654132fb4bef771%3F_app_id%3Dcbd10b7b69994dca92e04fe00c05b8c2%26_fetch%3D1%26_fetch_incrs%3D1%26_ch%3Darticle"
                                                        target="_blank" mon="m=53&amp;a=6"><img
                                                        src="http://timg01.baidu-img.cn/timg?tc&amp;size=c169_m119&amp;sec=0&amp;quality=&amp;di=3fee118fb8c6b5cc59152ef3ab93837e&amp;src=http%3A%2F%2Ft10.baidu.com%2Fit%2Fu%3D263638938%2C2758819810%26fm%3D170%26s%3DB19159301BD3A49435044CE7030090E2%26w%3D218%26h%3D146%26img.JPG"
                                                        onload="checkimg(this)"></a></p>
                                                    <div class="feeds-item-paragraph"><h3><a
                                                            href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=2&amp;nid=15385538090410719939&amp;pos=6&amp;layout=1&amp;token=f0baef08be4cd2cbf90145cb25ac55e7&amp;url=http%3A%2F%2Fnapi.uc.cn%2F3%2Fclasses%2Farticle%2Fobjects%2Fd950ac00059c44479654132fb4bef771%3F_app_id%3Dcbd10b7b69994dca92e04fe00c05b8c2%26_fetch%3D1%26_fetch_incrs%3D1%26_ch%3Darticle"
                                                            target="_blank" mon="m=53&amp;a=6">终于知道为什么雷军不给马云投资了,
                                                        只能说当时马云人缘不好</a></h3>
                                                        <p class="feeds-item-text">
                                                            简单的来说，只能怪当时马云和马化腾人缘不好，不认识雷军，也不认识雷军身边的朋友，所以，才会被拒吧。</p></div>
                                                    <div class="feeds-item-info"><p class="labels"></p></div>
                                                </div>
                                            </div>
                                            <div class="feeds-item">
                                                <div class="feeds-item-detail hasImg  "><p class="feeds-item-pic"><a
                                                        href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=1&amp;nid=7507845123250887886&amp;pos=7&amp;layout=1&amp;token=f6e590299244f538728ed70ce417fea8&amp;url=http%3A%2F%2Fnews.163.com%2F16%2F1215%2F07%2FC8AFJUC9000187VE.html"
                                                        target="_blank" mon="m=53&amp;a=6"><img
                                                        src="http://timg01.baidu-img.cn/timg?tc&amp;size=c169_m119&amp;sec=0&amp;quality=&amp;di=e8106b61468fd6fc96ef23198a2eb08f&amp;src=http%3A%2F%2Ft10.baidu.com%2Fit%2Fu%3D1307827044%2C1918891643%26fm%3D170%26s%3D918041B75C73BEC84404FDB503003001%26w%3D218%26h%3D146%26img.JPEG"
                                                        onload="checkimg(this)"></a></p>
                                                    <div class="feeds-item-paragraph"><h3><a
                                                            href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=1&amp;nid=7507845123250887886&amp;pos=7&amp;layout=1&amp;token=f6e590299244f538728ed70ce417fea8&amp;url=http%3A%2F%2Fnews.163.com%2F16%2F1215%2F07%2FC8AFJUC9000187VE.html"
                                                            target="_blank" mon="m=53&amp;a=6">谷歌热搜榜上的2016:英国人脱欧后搜索"欧盟是啥"</a>
                                                    </h3>
                                                        <p class="feeds-item-text">
                                                            英国民众绝大多数人投票支持退欧的结果公布后，英国人关于“欧盟”的搜索量急剧上升。</p></div>
                                                    <div class="feeds-item-info"><p class="labels"><span class="label">网易要闻</span>
                                                    </p></div>
                                                </div>
                                            </div>
                                            <div class="feeds-item">
                                                <div class="feeds-item-detail  ">
                                                    <div class="feeds-item-paragraph"><h3><a
                                                            href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=1&amp;nid=6116797550946881744&amp;pos=8&amp;layout=1&amp;token=d41ec78c6f2455a16093732343033081&amp;url=http%3A%2F%2Fm.cankaoxiaoxi.com%2Fbaidunews-eco%2Ffinance%2F20161215%2F1520799.shtml"
                                                            target="_blank"
                                                            mon="m=53&amp;a=6">英媒：中国买家1.5亿人民币在法拍得乾隆玉玺</a></h3>
                                                        <p class="feeds-item-text">
                                                            中国清代乾隆皇帝的一件玉玺14日在法国巴黎德鲁奥拍卖行拍卖，以2100万欧元被一位匿名的中国买家获得。</p>
                                                    </div>
                                                    <div class="feeds-item-info"><p class="labels"></p></div>
                                                </div>
                                            </div>
                                            <div class="feeds-item">
                                                <div class="feeds-item-detail hasImg  "><p class="feeds-item-pic"><a
                                                        href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=2&amp;nid=4916454366375446464&amp;pos=9&amp;layout=1&amp;token=514630d4b6507360ef6fb99a608b576c&amp;url=http%3A%2F%2Fnapi.uc.cn%2F3%2Fclasses%2Farticle%2Fobjects%2F03eb20e2e5934611b80f02a7b3b66c2d%3F_app_id%3Dcbd10b7b69994dca92e04fe00c05b8c2%26_fetch%3D1%26_fetch_incrs%3D1%26_ch%3Darticle"
                                                        target="_blank" mon="m=53&amp;a=6"><img
                                                        src="http://timg01.baidu-img.cn/timg?tc&amp;size=c169_m119&amp;sec=0&amp;quality=&amp;di=cf3aa0b93bb6154019836d46f8f933bc&amp;src=http%3A%2F%2Ft10.baidu.com%2Fit%2Fu%3D3033577575%2C1873170446%26fm%3D170%26s%3D2320BF0A59124BEB0FFD6CC30300E0B6%26w%3D218%26h%3D146%26img.GIF"
                                                        onload="checkimg(this)"></a></p>
                                                    <div class="feeds-item-paragraph"><h3><a
                                                            href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=2&amp;nid=4916454366375446464&amp;pos=9&amp;layout=1&amp;token=514630d4b6507360ef6fb99a608b576c&amp;url=http%3A%2F%2Fnapi.uc.cn%2F3%2Fclasses%2Farticle%2Fobjects%2F03eb20e2e5934611b80f02a7b3b66c2d%3F_app_id%3Dcbd10b7b69994dca92e04fe00c05b8c2%26_fetch%3D1%26_fetch_incrs%3D1%26_ch%3Darticle"
                                                            target="_blank" mon="m=53&amp;a=6">刘强东说出顺丰拒绝马云的原因,
                                                        预言未来只有顺丰能独立生存下去</a></h3>
                                                        <p class="feeds-item-text">
                                                            马云在杭州召开第一届快递江湖大会，四通一达、天天、邮政等都参加，唯独顺丰以事物繁忙原因缺席。</p></div>
                                                    <div class="feeds-item-info"><p class="labels"></p></div>
                                                </div>
                                            </div>
                                            <div class="feeds-item">
                                                <div class="feeds-item-detail hasImg  "><p class="feeds-item-pic"><a
                                                        href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=2&amp;nid=5905380629050698975&amp;pos=10&amp;layout=1&amp;token=a1d0ff764e4a51f81d5690407250e91f&amp;url=http%3A%2F%2Fnapi.uc.cn%2F3%2Fclasses%2Farticle%2Fobjects%2Fb11aa749083a487cb7e9dc616f246ce5%3F_app_id%3Dcbd10b7b69994dca92e04fe00c05b8c2%26_fetch%3D1%26_fetch_incrs%3D1%26_ch%3Darticle"
                                                        target="_blank" mon="m=53&amp;a=6"><img
                                                        src="http://timg01.baidu-img.cn/timg?tc&amp;size=c169_m119&amp;sec=0&amp;quality=&amp;di=c8f4443f217bb6b9971fd7e5a01edd47&amp;src=http%3A%2F%2Ft11.baidu.com%2Fit%2Fu%3D806526208%2C3857436729%26fm%3D170%26s%3D6A321DC0C9FB11867F18550E030060C3%26w%3D218%26h%3D146%26img.JPEG"
                                                        onload="checkimg(this)"></a></p>
                                                    <div class="feeds-item-paragraph"><h3><a
                                                            href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=2&amp;nid=5905380629050698975&amp;pos=10&amp;layout=1&amp;token=a1d0ff764e4a51f81d5690407250e91f&amp;url=http%3A%2F%2Fnapi.uc.cn%2F3%2Fclasses%2Farticle%2Fobjects%2Fb11aa749083a487cb7e9dc616f246ce5%3F_app_id%3Dcbd10b7b69994dca92e04fe00c05b8c2%26_fetch%3D1%26_fetch_incrs%3D1%26_ch%3Darticle"
                                                            target="_blank" mon="m=53&amp;a=6">当年马云找孙正义投资, 楼下等了2个小时,
                                                        孙正义说只给你6分钟</a></h3>
                                                        <p class="feeds-item-text">
                                                            在一次采访中，吴鹰称当年马云找孙正义融资的时候，马云整整在楼下等了2个小时。</p></div>
                                                    <div class="feeds-item-info"><p class="labels"></p></div>
                                                </div>
                                            </div>
                                            <div class="feeds-item">
                                                <div class="feeds-item-detail hasImg  "><p class="feeds-item-pic"><a
                                                        href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=2&amp;nid=1547270258975715893&amp;pos=11&amp;layout=1&amp;token=f30a05e88bcec703a2d17b8464256836&amp;url=http%3A%2F%2Fnews.xinhuanet.com%2Ffinance%2F2016-12%2F15%2Fc_129405492.htm"
                                                        target="_blank" mon="m=53&amp;a=6"><img
                                                        src="http://timg01.baidu-img.cn/timg?tc&amp;size=c169_m119&amp;sec=0&amp;quality=&amp;di=94d883ac33b3b3406a0b3afdddc19134&amp;src=http%3A%2F%2Ft12.baidu.com%2Fit%2Fu%3D4169308625%2C3460759256%26fm%3D170%26s%3D105CEC3213526C614E6584CA000050B2%26w%3D218%26h%3D146%26img.JPG"
                                                        onload="checkimg(this)"></a></p>
                                                    <div class="feeds-item-paragraph"><h3><a
                                                            href="http://news.baidu.com/n?m=rddata&amp;v=redirect&amp;topic=%E6%8E%A8%E8%8D%90&amp;mark=2&amp;nid=1547270258975715893&amp;pos=11&amp;layout=1&amp;token=f30a05e88bcec703a2d17b8464256836&amp;url=http%3A%2F%2Fnews.xinhuanet.com%2Ffinance%2F2016-12%2F15%2Fc_129405492.htm"
                                                            target="_blank" mon="m=53&amp;a=6">美联储加息后离岸人民币暴跌近400点
                                                        黄金原油暴跌 </a></h3>
                                                        <p class="feeds-item-text">
                                                            市场随即对这场姗姗来迟的加息作出反应，美股大跌，道琼斯指数一度下跌150点，债市的抛售潮则继续蔓延，外汇市场上美元大涨。</p>
                                                    </div>
                                                    <div class="feeds-item-info"><p class="labels"></p></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="feeds-more" id="feeds-more" style="display: block;">
                                        <a href="javascript:;" onclick="return false"
                                           mon="m=53&amp;a=4"><span>更多个性推荐新闻</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <%--公司简介--%>
    <div class="simply-section">
        <div class="introduction simply-introduction container">
            <div class="row">
                <p class="col-sm-6 col-sm-offset-3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区域性股权交易市场（下称“区域股权市场”）是为特定区域内的企业提供股权、债券的转让和融资服务的私募市场，是我国多层次资本市场的重要组成部分，亦是中国多层次资本市场建设中必不可少的部分。对于促进企业特别是中小微企业股权交易和融资，鼓励科技创新和激活民间资本，加强对实体经济薄弱环节的支持，具有积极作用。</p>
            </div>
            <div class="row">
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
    <%--挂牌公司--%>
    <div class="simply-section simply-company company">
        <div class="simply-roadshow container">
            <div class="row ">
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="image/dhzh.png" alt="">
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="image/fny.png" alt="">
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="image/jnlj.png" alt="">
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="image/lykj.png" alt="">
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="image/mjsjg.png" alt="">
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6 no-padding center">
                    <img src="image/zhjy.png" alt="">
                </div>
            </div>
        </div>

    </div>

</div>

<jsp:include page="/head/customer/footer.jsp"/>
</body>
<jsp:include page="/head/customer/js.jsp"/>
<script src="plugins/Fullpage/jquery.fullPage.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#fullpage').fullpage({
            anchors: ['page1'],
            autoScrolling: false,
            css3: true,
            fitToSection: false,
            slidesNavigation: true
        });

        $('.fp-controlArrow').addClass('hidden-sm hidden-xs')
    });

</script>
</html>

