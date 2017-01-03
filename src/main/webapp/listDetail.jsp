<%--
  Created by IntelliJ IDEA.
  User: xuchao
  Date: 2016/11/9
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">

<head>
    <title>挂牌--江西联合股权交易中心</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
    <style>
        .blueBtn {
            margin-left: 20px;
        }
    </style>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>
<section class="list-detail">
    <div class="container">
        <ul id="services-nav" class="clearfix">
            <li class="listed active">
                <a href="listDetail.jsp">
                    <!-- <a href="/node/service/listed/new-list.html"> -->
                    <p></p>
                    挂牌
                </a>
            </li>
            <li class="wisdom ">
                <a href="http://www.jxjee.com/node/comb-wisdom/wisdom">
                    <p></p>
                    融智
                </a>
            </li>
            <li class="financing ">
                <a href="http://www.jxjee.com/node/financing/">
                    <p></p>
                    融资
                </a>
            </li>
            <li class="capital ">
                <a href="http://www.jxjee.com/node/comb-wisdom/capital">
                    <p></p>
                    资本
                </a>
            </li>
        </ul>
    </div>

    <!-- 挂牌+辅导-->
    <div id="listed-coach">
        <div class="awardcerny-top-ban">
            <h4>挂牌辅导服务</h4>
        </div>
        <div class="container">
            <h3>尊享挂牌辅导服务</h3>
            <p class="sub-title">为您配备专属上市顾问，提供一对一的贴心服务，帮助企业快速实现挂牌</p>
            <ul class="clearfix">
                <li>&nbsp;场外资本市场基础知识介绍</li>
                <li>&nbsp;挂牌代码申报及证书送达服务</li>
                <li>&nbsp;挂牌、登记托管规则的培训和咨询</li>
                <li>&nbsp;企业信息展示培训和辅导服务</li>
                <li>&nbsp;企业挂牌条件评估，挂牌推荐，挂牌材料收集</li>
                <li>&nbsp;企业需求信息采集和反馈</li>
                <li>&nbsp;企业挂牌流程指导和信息反馈</li>
            </ul>
        </div>
    </div>

    <!-- 套餐 -->
    <div id="packages">
        <div class="container">
            <h3>融资增值套餐</h3>
            <div id="package0" class="package clearfix">
                <p class="sub-title">为企业配备专属上市顾问，提供一对一的个性化服务，帮助企业在快速实现挂牌的同时，更好地了解各类融资方式和产品，为企业量身定制融资方案</p>
                <ul>
                    <li>&nbsp;国内场外资本市场发展情况及主要融资方式简介</li>
                    <li>&nbsp;商业银行特色融资产品比较、推介</li>
                    <li>&nbsp;私募股权融资方式讲解</li>
                    <li>&nbsp;企业债权融资方式讲解</li>
                    <li>&nbsp;企业上市融资方式讲解</li>
                    <li>&nbsp;帮助企业进行需求分析</li>
                    <li>&nbsp;推荐参加企业融资专场推介会，安排融资项目独家展示</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container condis-box">
        <!--条件-->
        <div class="condis clearfix">
            <h3>挂牌需满足以下条件</h3>
            <p class="sub-title">根据企业所处成长阶段不同，您可以选择在标准板或孵化板挂牌</p>
            <div class="condis-box condis-box-left fl">
                <h4 class="condis-box-tit">标准板</h4>
                <p class="condis-box-intro">非上市企业存续期满一年，并且满足下列四项标准之一，即可在江西联合股权交易中心挂牌</p>
                <div class="condis-box-left-detail">
                    <em class="ico" style="height: 272px;"></em>
                    <ol>
                        <li>
                            <span class="cbld-tit">1：盈利指标</span>
                            <p>最近12个月的净利润累计不少于300万元。</p>
                        </li>
                        <li>
                            <span class="cbld-tit">2：营业收入+成长指标</span>
                            <p>最近12个月的营业收入累计不少于2000万元；</p>
                            <p>或最近24个月的营业收入累计不少于2000万元，且最近十二个月比上十二个月增长率不小于30%。</p>
                        </li>
                        <li>
                            <span class="cbld-tit">3：净资产+营业收入指标</span>
                            <p>净资产不少于1000万元，且最近12个月营业收入不少于500万元。</p>
                        </li>
                        <li>
                            <span class="cbld-tit">4：金融机构增信指标</span>
                            <p>最近12个月银行贷款100万元以上；</p>
                            <p>或投资机构股权投资达100万元以上。</p>
                        </li>
                    </ol>
                </div>
            </div>
            <div class="condis-box condis-box-right fl">
                <h4 class="condis-box-tit">孵化板</h4>
                <p class="condis-box-intro">在中华人民共和国境内依法注册成立并合法存续的公司，企业或其他合法组织，并满足如下要求，可申请在江西联合股权交易中心孵化板挂牌</p>
                <ol>
                    <li>1、固定的办公场所；</li>
                    <li>2、满足企业正常运作的人员；</li>
                    <li>3、合法有效的营业执照或其他合法执业证照；</li>
                    <li>4、不存在重大违法违规行为或被国家相关部门 予以严重处罚；</li>
                    <li>5、企业的董事、监事、经营管理人员不存在 《公司法》第一百四十六条所列属的或违反国家 其他相关法律法规的情形；</li>
                    <li>6、本中心认定的其他情形。</li>
                </ol>
            </div>
            <div class="condis-box condis-box-right fl">
                <h4 class="condis-box-tit">青创板</h4>
                <p class="condis-box-intro">符合以下条件的青年创意企业、初创型企业及成长性企业即可申请“青创板”挂牌</p>
                <ol>
                    <li>1、固定的办公场所；</li>
                    <li>2、满足企业正常运作的人员；</li>
                    <li>3、合法有效的营业执照或其他合法执业证照；</li>
                    <li>4、企业及企业法人不存在重大违法违规行为；</li>

                    <li>5、同意将股权托管在中心指定平台</li>
                    <li>6、属于青年创业项目，满足以下条件之一：</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;1，企业创业项目参与“青创赛”、“挑战杯”等创业大赛</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;2，企业项目获省团委或相关机构认可符合创业项目标准</li>
                </ol>
            </div>
        </div>
        <!--资料-->
        <div class="datas">
            <h3>挂牌需准备的资料</h3>
            <ul class="datas-tab-tits">
                <li class="bs select">
                    标准板
                </li>
                <li class="fh">
                    孵化板
                </li>
            </ul>
            <div class="tab-con-bs tab-con">
                <table>
                    <tbody>
                    <tr>
                        <th class="col0">序号</th>
                        <th class="col1">标准板挂牌资料清单</th>
                        <th class="col2">要求</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td class="col1">营业执照副本</td>
                        <td rowspan="3">加盖公章、扫描并上传至中心官网</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td class="col1"> 组织机构代码证副本</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td class="col1"> 税务登记证（国税、地税）副本</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td class="col1"> 企业法定代表人任职证明与委托书</td>
                        <td>从中心官网下载模板，签字加盖公章、扫描并上传</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td class="col1">法定代表人与受托经办人有效身份证明文件</td>
                        <td>加盖公章、扫描并上传至中心官网</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td class="col1">最近一月的企业信息查询单（“基本信息页”“股东信息页”“行政处罚”)</td>
                        <td>查询单上含打印日期，扫描并上传至中心官网</td>
                    </tr>
                    <tr class="ht-auto">
                        <td>7</td>
                        <td class="col1">
                            <p>证明企业满足中心“3211”挂牌标准条件的文件（提供其中一项即可）：</p>
                            <ol>
                                <li>
                                    <em>（1）</em>
                                    <span>最近一个会计年度或两个会计年度的审计报告或财务报表。</span>
                                </li>
                                <li>
                                    <em>（2）</em>
                                    <span>最近12个月银行贷款达100万元以上的证明文件：</span>
                                    <span>   贷款或授信合同，或在人民银行征信系统打印出的企业信用报告。</span>
                                </li>
                                <li>
                                    <em>（3）</em>
                                    <span>最近12个月外部投资机构股权投资达100万元以上的证明文件：<br>（A或B提供其一即可）：</span>
                                    <span>   A、外部投资机构增资的，请提供验资报告或资金进账单、显示变更前后股东信息的工商查询单或工商变更登记核准文件、投资机构的股东信息查询单；</span>
                                    <span>   B、外部投资机构受让股权的，请提供股权转让协议、显示变更前后股东信息的工商查询单或工商变更登记核准文件、投资机构的股东信息查询单。</span>
                                </li>
                            </ol>
                        </td>
                        <td style="line-height:34px;">
                            1、证明文件需加盖公章，扫描并上传至中心官网。<br>
                            2、财务报告和审计报告选其一，财务报告需由企业负责人和财务负责人签名并加盖公章。
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="tab-con-fh tab-con" style="display:none;">
                <table>
                    <tbody>
                    <tr>
                        <th class="col0">序号</th>
                        <th class="col1">孵化板挂牌资料清单</th>
                        <th class="col2">要求</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td class="col1">营业执照副本</td>
                        <td rowspan="3">加盖公章、扫描并上传至中心官网</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td class="col1">组织机构代码证副本</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td class="col1">税务登记证（国税、地税）副本</td>

                    </tr>
                    <tr>
                        <td>4</td>
                        <td class="col1">企业法定代表人任职证明与委托书</td>
                        <td>从中心官网下载模板，签字加盖公章、扫描并上传</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td class="col1"> 法定代表人与受托经办人有效身份证明文件</td>
                        <td>加盖公章、扫描并上传至中心官网</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td class="col1"> 最近一月的企业信息查询单（“基本信息页”“股东信息页”“行政处罚”)</td>
                        <td>查询单上含打印日期，扫描并上传至中心官网</td>
                    </tr>
                    <tr>
                        <td class="tip" colspan="3">下述为可选项，如提供，将增加相应的标识，标识只能选择其中一种：</td>
                    </tr>
                    <tr class="ht-auto">
                        <td class="col0">个体<br>工商户</td>
                        <td class="col1">
                            <p>证明企业满足中心挂牌条件的文件（成立满24个月，且最少提供以下一项材料）：</p>
                            <ol>
                                <li>
                                    （1）截止挂牌申请日，净资产总额累计不少于500万元（证明文件为独立第三方评估机构对房产、专业市场相关存货出具的评估报告或最近12个月的审计报告或财务报表，且最近12个月的营业收入累计不少300万元（证明文件为企业购销合同或最近12个月的审计报告或财务报表））
                                </li>
                                <li>（2）最近12个月，银行贷款达100万元以上证明文件</li>
                            </ol>
                        </td>
                        <td rowspan="5" style="vertical-align:top;">
                            <p>1、证明文件需加盖公章，扫描并上传至中心官网。</p>
                            <p>2、财务报告和审计报告选其一，财务报告需由企业负责人和财务负责人签名并加盖公章。</p>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">高新技<br>术产业</td>
                        <td class="col1">有效期限内的知识产权、专利证书</td>
                    </tr>
                    <tr>
                        <td class="col1">计划项目证明书、立项证明书、国家高新技术企业证书、政府批文等</td>
                    </tr>
                    <tr>
                        <td>众筹创业</td>
                        <td class="col1">合作平台或机构推荐材料（目前仅限于京东项目）</td>
                    </tr>
                    <tr>
                        <td>政府扶持</td>
                        <td class="col1">有关政府部门出具的证书、批文、立项证明、补贴证明等文件</td>
                    </tr>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</section>


<div class="bgGray" style="padding-bottom: 70px;">
    <div id="div-flow" class="container">
        <h3>业务流程</h3>
        <p>资料完备后，你的企业将在7个工作日内实现挂牌</p>
        <ul class="clearfix">
            <li>在线申请</li>
            <li>资料预审</li>
            <li>在线支付</li>
            <li>展示整理</li>
            <li>挂牌成功</li>
        </ul>
    </div>
</div>

<jsp:include page="${pageContext.request.contextPath}/head/customer/footer.jsp"/>
<div id="buy-packages" class="wd-apply-fixed">
    <div class="buy-packages-in clearfix">
        <h3 class="fl">挂牌辅导服务</h3>
        <p class="fl" style="">

        </p>
        <a href="" class="btn blueBtn fr">申请</a>

        <p class="money fr">
            ￥80000
        </p>
    </div>
</div>

<jsp:include page="${pageContext.request.contextPath}/head/customer/js.jsp"/>
<script>
    $(".datas-tab-tits li").mouseover(function () {
        var _this = $(this),
                index = $(".datas-tab-tits li").index(this);
        _this.addClass("select").siblings().removeClass("select");
        $(".datas .tab-con").eq(index).show(1000).siblings(".tab-con").hide(1000);
    })
</script>
</body>
</html>