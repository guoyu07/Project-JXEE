<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/15
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1">
    <title>江西联合股权交易中心</title>
    <link rel="stylesheet" href="css/customer/simply-index-v3.css">
    <link rel="stylesheet" href="fonts/FontAwesome/css/font-awesome.min.css">
    <jsp:include page="/head/customer/js.jsp"/>
    <style>
        .img {
            /*background-size: cover;*/
            background: url('image/simplyindexbg1.jpg') no-repeat center;
        }
    </style>
</head>
<body>

    <%--头部 开始--%>
    <div class="body-head">
        <div class="content header-content " data-val="" id="openhomeHeader">
            <%--首页右上角小登录注册二维码区 开始--%>
            <div class="account-center fn-clear">
                <div class="mainBox fn-clear">
                    <div class="header-account-box fn-clear">
                        <ul class="inner fn-clear">
                            <li>
                                <a class="account-meta first J_buttonLogin">登录</a>
                            </li>
                            <li>
                                <a class="account-meta" href="" target="_blank">注册</a>
                            </li>
                            <li>
                                <a class="account-meta" target="_blank" href="">二维码</a>
                            </li>
                            <li>
                                <div class="account-meta qrcode" id="J_qrcode" href="">
                                    <span class="newIcon login-qrcode"></span>
                                    <div class="qrcode-div">
                                        <div class="qrcode-inner">
                                            <p>
                                                <%--此处的二维码的宽度和高度为85px--%>
                                                <img src="image/wx-code.png" width="85"></p>
                                            <p class="txt-qrcode">请扫码关注<br>接收重要信息</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <%--首页右上角小登录注册二维码区 结束--%>
            <%--首页顶部导航区 开始--%>
            <div class="menu-area ">
                <div class="menu-content fn-clear">
                    <div class="mainBox fn-clear">
                        <%--首页logo 开始--%>
                        <div class="antLogo">
                            <a href="">
                                <img class="antLogoImg"
                                     src="image/logo.png">
                            </a>
                        </div>
                        <%--首页logo 结束--%>
                        <%--首页导航项目 开始--%>
                        <div class="nav-menu">
                            <ul class="fn-clear">
                                <li class=" menu-item home-menu  selected " data-select="true">
                                    <div>
                                        <a href="simply-index-v3.jsp">首页</a>
                                    </div>
                                </li>
                                <li class="menu-item home-menu ">
                                    <div>
                                        <a href="#">企业服务</a>
                                    </div>
                                </li>
                                <li class="menu-item home-menu ">
                                    <div>
                                        <a href="#">案例中心</a>
                                    </div>
                                </li>
                                <li class="menu-item home-menu ">
                                    <div>
                                        <a href="#">挂牌展示</a>
                                    </div>
                                </li>
                                <li class="menu-item home-menu ">
                                    <div>
                                        <a href="#">登记托管</a>
                                    </div>
                                </li>
                                <li class="menu-item home-menu ">
                                    <div>
                                        <a href="#">路演中心</a>
                                    </div>
                                </li>
                                <li class="menu-item home-menu "
                                    style="margin-right:20px;">
                                    <div>
                                        <a href="#">融资服务</a>
                                    </div>
                                </li>
                                <li class="menu-item home-menu lastChild">
                                    <div>
                                        <a href="#">党的建设</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <%--首页导航项目 结束--%>
                    </div>
                </div>
            </div>
            <%--首页顶部导航区 结束--%>
        </div>
    </div>
    <%--头部 结束--%>

    <%--内容 开始--%>
    <div class="body">
        <%--轮播页 开始--%>
        <div class="">
            <div class="content slick-content">

                <%--图片轮播 开始--%>
                <div class="slick-mainContainer ">
                    <%--轮播区 开始--%>
                    <div class="slick-content-box slick-initialized slick-slider">
                        <%--图片 开始--%>
                        <div class="slick-list draggable" tabindex="0">
                            <div class="slick-track">
                                <%--第一张图--%>
                                <div class="slick-item slick-slide selected">
                                    <div class="J-imgBox">
                                        <a class="img" target="_blank"
                                           href="#"
                                           style="background:url('image/simplyindexbg1.jpg') no-repeat;background-size: cover;background-repeat: no-repeat;background-position: center;">
                                            <div class="theme-title fn-clear">
                                                <div class="main-title"></div>
                                                <div class="sub-title"></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <%--第二张图--%>
                                <div class="slick-item slick-slide">
                                    <div class="J-imgBox">
                                        <a class="img" target="_blank"
                                           href="#"
                                           style="background:url('image/simplyindexbg2.jpg') no-repeat;background-size: cover;background-repeat: no-repeat;background-position: center;">
                                            <div class="theme-title fn-clear">
                                                <div class="main-title"></div>
                                                <div class="sub-title"></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <%--第三张图--%>
                                <div class="slick-item slick-slide">
                                    <div class="J-imgBox">
                                        <a class="img" target="_blank"
                                           href="#"
                                           style="background:url('image/simplyindexbg3.jpg') no-repeat;background-size: cover;background-repeat: no-repeat;background-position: center;">
                                            <div class="theme-title fn-clear">
                                                <div class="main-title"></div>
                                                <div class="sub-title"></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--图片 结束--%>
                        <%--左右换页 开始--%>
                        <div class="slick-page">
                            <div class="slick-pre"><i class="fa fa-angle-left"></i></div>
                            <div class="slick-next"><i class="fa fa-angle-right"></i></div>
                        </div>
                        <%--左右换页 结束--%>
                        <%--按钮 开始--%>
                        <ul class="slick-dots">
                            <li class="slick-dot selected">
                                <button type="button">1</button>
                            </li>
                            <li class="slick-dot">
                                <button type="button">2</button>
                            </li>
                            <li class="slick-dot">
                                <button type="button">3</button>
                            </li>
                        </ul>
                        <%--按钮 结束--%>
                    </div>
                    <%--轮播区 结束--%>

                    <%--导航区 mask 开始--%>
                    <div class="nav-mask-item"></div>
                    <%--导航区 mask 开始--%>
                    <%--最新新闻 mask 开始--%>
                    <div class="notice-mask-item"></div>
                    <%--最新新闻 mask 结束--%>
                    <div id="swiper-pagination" class="swiper-pagination"></div>
                </div>
                <%--图片轮播结束--%>
                <%--轮播js代码 开始--%>
                <script>
                    //                        控制轮播图片大小和窗口一致且不少于1200px
                    $(window).on('resize',
                        function () {
                            var windowWidth = $(window).width();
                            var item = $('.slick-item');
                            if (windowWidth <= 1200) {
                               item.width('1200px')
                            } else {
                               item.width(windowWidth)
                            }
                        }
                    );
                    //                        轮播代码 开始
                    $(function () {
    //                            初始化变量
    //                                 长度
                        var length = 0,
    //                                当前页
                            currentIndex = 0,
    //                                轮播间隔
                            interval,
    //                                是否已经开始
                            hasStarted = false,
    //                                轮播间隔时间
                            t = 5000;
    //                            获取轮播长度
                        length = $('.slick-item').length;
    //                            隐藏除第一个以外的图片
                        $('.slick-item:not(:first)').hide();
    //                            为第一个图片添加selected class
                        $('.slick-item:first').addClass('selected');
    //                            左右按键初始化为隐藏
    //                            $('.slick-page').hide();
    //                            鼠标介入时方法停止，并且显示左右按键
                        $('.slick-item, .slick-pre, .slick-next').hover(
                            function () {
                                stop();
                                $('.slick-page').show()
                            },
    //                                鼠标移除时，隐藏左右按键
                            function () {
                                $('.slick-page').hide();
                                start();
                            }
                        );
    //                            鼠标介入小按钮时获取index，并且执行一次函数
    //                            鼠标移除时，执行函数
                        $('.slick-dot').hover(
                            function (e) {
                                stop();
    //                                    获取当前选中点
                                var preIndex = $('.slick-dot').filter('.selected').index();
    //                                    获取点选的点
                                currentIndex = $(this).index();
    //                                    执行函数
                                play(preIndex, currentIndex);
                            }, function () {
                                start();
                            }
                        );
    //                            为左右键绑定click事件
                        $('.slick-pre').off('click').on('click', function () {
                            pre();
                        });
                        $('.slick-next').off('click').on('click', function () {
                            next();
                        });
    //                            左边的事件
                        function pre() {
                            var preIndex = currentIndex;
    //                                取余数，来取代for循环，因为for循环需要设定结束时的重新定位
                            currentIndex = ( --currentIndex + length ) % length;
    //                                调用play函数
                            play(preIndex, currentIndex);
                        }

    //                            右边的事件
                        function next() {
                            var preIndex = currentIndex;
    //                                取余数，来取代for循环，因为for循环需要设定结束时的重新定位
                            currentIndex = ++currentIndex % length;
    //                                调用play函数
                            play(preIndex, currentIndex);
                        }

                        function play(preIndex, currentIndex) {
    //                                轮播执行,将当前向隐藏，移除selected 再重新回到父级重新选取子集赋予selected属性
                            $('.slick-item').eq(preIndex).fadeOut(500).removeClass('selected').parent().children().eq(currentIndex).addClass('selected').fadeIn(1000);
                            $('.slick-dot').eq(preIndex).removeClass('selected').parent().children().eq(currentIndex).addClass('selected');
                        }

    //                            设定轮播开始
    //                            执行时，将hasStarted 设为true
                        function start() {
                            if (!hasStarted) {
                                hasStarted = true;
    //                                    设定间隔并执行next函数
                                interval = setInterval(next, t);
                            }
                        }

    //                            停止时，将hasStarted设定为false
                        function stop() {
    //                                清除间隔
                            clearInterval(interval);
                            hasStarted = false;
                        }

    //                            初始化执行一次start方法
                        start();
                    });
                    //                        轮播代码 结束
                </script>
                <%--轮播js代码 结束--%>
                <%--最新新闻 开始--%>
                <div class="notice-container">
                    <div class="inner">
                        <div class="notice-box">
                            <i class="notice-icon newIcon"></i>
                            <ul>
                                <li><a class="" target="_blank"
                                       href="">省委副书记、代省长刘奇一行莅临省股交中心指导工作
                                </a>
                                </li>
                                <li><a class="" target="_blank"
                                       href="">中心临时党支部扩大会议顺利召开</a>
                                </li>
                                <li><a class="" target="_blank"
                                       href="">
                                    省股交中心成功孵化首家“新三板”企业</a></li>
                                <li class="more-notice"> ● <a target="_blank" href="">查看更多&gt;</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%--最新新闻 结束--%>

            </div>
        </div>
        <%--轮播页 结束--%>

        <%--内容正文页 开始--%>
        <div class="content">

                <%--首页快捷菜单 开始--%>
            <div class="content">
                <div class="homeMenu">
                    <div class="homeMenuTitle">
                        <div class="homeMenuTitleIn clearfix">
                            <div class="wufuTitle"></div>
                            <a class="wufuMore clearfix" target="_blank">
                                <span class="moreBg"></span>更多服务 &gt;&gt;
                            </a>
                        </div>
                    </div>
                    <div class="homeMenuCont">
                        <div class="homeMenuContIn clearfix">
                            <div class="menuLine"></div>
                            <a target="_blank" class="menuCont">
                                <div class="menuContImg menuContImg1"></div>
                                <p class="menuContPic">企业查询</p>
                            </a>
                            <div class="menuLine"></div>
                            <a target="_blank" class="menuCont">
                                <div class="menuContImg menuContImg2"></div>
                                <p class="menuContPic">案例中心</p>
                            </a>
                            <div class="menuLine"></div>
                            <a target="_blank" class="menuCont">
                                <div class="menuContImg menuContImg3"></div>
                                <p class="menuContPic">融资服务</p>
                            </a>
                            <div class="menuLine"></div>
                            <a target="_blank" class="menuCont">
                                <div class="menuContImg menuContImg4"></div>
                                <p class="menuContPic">资料上传</p>
                            </a>
                            <div class="menuLine"></div>
                            <a target="_blank" class="menuCont">
                                <div class="menuContImg menuContImg5"></div>
                                <p class="menuContPic">登记托管</p>
                            </a>
                            <div class="menuLine"></div>
                            <a target="_blank" class="menuCont">
                                <div class="menuContImg menuContImg6"></div>
                                <p class="menuContPic">路演中心</p>
                            </a>
                            <div class="menuLine"></div>
                            <a target="_blank" class="menuCont">
                                <div class="menuContImg menuContImg7"></div>
                                <p class="menuContPic">培训咨询</p>
                            </a>
                            <div class="menuLine"></div>
                            <a target="_blank" class="menuCont">
                                <div class="menuContImg8"></div>
                                <p class="menuContPic">党的建设</p>
                            </a>
                            <div class="menuLine"></div>
                        </div>
                    </div>
                </div>
            </div>
                <%--首页快捷菜单 结束--%>

                <%--今日新闻 开始--%>
            <div class="homePage">
                <div class="height30"></div>
                <div class="homePartCont homePartContLast clearfix">
                    <div class="menuPart menuPart4">
                        <h2 class="homePartTitle ">今日新闻</h2>
                        <h3 class="menuPartTitle ">中心新闻</h3>
                        <div class="menuTabBox">
                            <a class="menuTab current">
                                <span class="menuTabIcon menuTabIcon1"></span>新闻公告
                            </a>
                            <a class="menuTab">
                                <span class="menuTabIcon menuTabIcon2"></span>党的建设
                            </a>
                        </div>
                    </div>
                    <div class="contPart contPartMiddle">
                        <div class="midleCont">
                            <div class="tabChange clearfix">
                                <a class="tab fs16 tab1">热点新闻</a>
                                <a class="tab fs16 tab2 current">最新公告</a>
                            </div>
                            <ul class="midleContIn displayN">
                                <li class="contList">
                                    <a target="_blank" href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">省委副书记、代省长刘奇一行莅临省股交中心指导工作</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2016-12-12
                                            13:26:27</b>
                                    </a>
                                </li>
                                <li class="contList">
                                    <a target="_blank" href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">省委副书记、代省长刘奇一行莅临省股交中心指导工作</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2016-12-07
                                            10:12:31</b>
                                    </a>
                                </li>
                                <li class="contList">
                                    <a target="_blank" href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">省委副书记、代省长刘奇一行莅临省股交中心指导工作</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2016-12-05
                                            15:45:00</b>
                                    </a>
                                </li>
                                <li class="contList">
                                    <a target="_blank" href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">省委副书记、代省长刘奇一行莅临省股交中心指导工作</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2016-12-02
                                            15:10:05</b>
                                    </a>
                                </li>
                                <li class="contList">
                                    <a target="_blank" href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">省委副书记、代省长刘奇一行莅临省股交中心指导工作</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2016-11-30
                                            16:53:46</b>
                                    </a>
                                </li>
                                <a class="moreDuo floatR" href=""
                                   target="_blank"><span class="moreBg"></span>更多新闻&gt;&gt;
                                </a>
                            </ul>
                            <ul class="midleContIn">
                                <li class="contList">
                                    <a target="_blank" href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow:ellipsis;white-space: nowrap;line-height:50px;">中心全资子公司取得私募基金管理人资格</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2016-06-04</b>
                                    </a>
                                </li>
                                <li class="contList">
                                    <a target="_blank" href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">省委副书记、代省长刘奇一行莅临省股交中心指导工作</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2016-12-14
                                            16:47:09</b>
                                    </a>
                                </li>
                                <li class="contList">
                                    <a target="_blank" href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">中心临时党支部扩大会议顺利召开</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2016-12-14
                                            16:44:19</b>
                                    </a>
                                </li>
                                <li class="contList">
                                    <a target="_blank" href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">省股交中心成功孵化首家“新三板”企业</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2016-12-13
                                            16:19:34</b>
                                    </a>
                                </li>
                                <li class="contList">
                                    <a target="_blank" href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">江西青创板启动 助力省内青年创业者对接资本市场 </span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2016-12-13
                                            16:19:09</b>
                                    </a>
                                </li>
                                <a href="" class="moreDuo floatR"
                                   target="_blank"><span class="moreBg"></span>更多公告&gt;&gt;</a>
                            </ul>
                        </div>
                        <div class="midleCont displayN">
                            <div class="tabChange clearfix">
                                <a class="tab fs16 tab1 current">热点专题</a>
                                <a class="tab fs16 tab2">最新活动</a>
                            </div>
                            <ul class="midleContIn">
                                <li class="contList">
                                    <a target="_blank"
                                       href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">省委副书记、代省长刘奇一行莅临省股交中心指导工作</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2015-12-31
                                            11:44:09</b>
                                    </a>
                                </li>
                                <li class="contList">
                                    <a target="_blank"
                                       href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">省委副书记、代省长刘奇一行莅临省股交中心指导工作</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2015-12-31
                                            11:39:48</b>
                                    </a>
                                </li>
                                <a href=""
                                   class="moreDuo floatR" target="_blank"><span class="moreBg"></span>更多专题&gt;&gt;</a>
                            </ul>
                            <ul class="midleContIn displayN">
                                <li class="contList">
                                    <a target="_blank"
                                       href="http://www.cpic.com.cn/cpic/cn/responsibility/future/2200.shtml">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">省委副书记、代省长刘奇一行莅临省股交中心指导工作</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2015-12-31
                                            14:20:22</b>
                                    </a>
                                </li>
                                <li class="contList">
                                    <a target="_blank"
                                       href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">省委副书记、代省长刘奇一行莅临省股交中心指导工作</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2015-12-31
                                            14:19:14</b>
                                    </a>
                                </li>
                                <li class="contList">
                                    <a target="_blank"
                                       href="">
                                        <i class="floatL"></i>
                                        <span style="float:left;width:380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;line-height:50px;">省委副书记、代省长刘奇一行莅临省股交中心指导工作</span>
                                        <b class="floatR " style="width:70px;height:24px;overflow:hidden;">2015-12-31
                                            14:17:55</b>
                                    </a>
                                </li>
                                <a href=""
                                   class="moreDuo floatR" target="_blank"><span class="moreBg"></span>更多活动&gt;&gt;</a>
                            </ul>
                        </div>
                    </div>
                    <script>
//                        tab切换
                        $(function () {
                            $('.tabChange a').on('mouseenter',function () {
                               var index = $(this).index();
                               $(this).addClass('current').siblings().removeClass('current');
                               var midContIn = $(this).parent().parent().children('ul');
                                midContIn.eq(index).removeClass('displayN').siblings(':not("div")').addClass('displayN');
                            })
                        });
                        $(function () {
                            $('.menuTab').on('mouseenter',function () {
                                var index = $(this).index();
                                $(this).addClass('current').siblings().removeClass('current');
                                $('.midleCont').eq(index).removeClass('displayN').siblings().addClass('displayN');
                            })
                        })
                    </script>
                    <div class="contPartRight">
                        <h2 class="homePartTitle  clearfix">
                            <%--<img src="http://a2cdn.cpic.com.cn/images2/gwsy/index/price_title.jpg">--%>
                            股交中心
                        </h2>
                        <div class="hang-box">
                            <%--<a target="_blank" href="">--%>
                                <div class="inboxCon inboxCon-inner">
                                    <h3 class="fs18 ta-center"><span class="num">1001</span>家</h3>
                                    <p class=" height60">挂牌企业，挂牌企业是在新四板上市的可用于股权交易的四板市场，是活跃市场的组成部分，是
                                        多层次市场的重要部分</p>
                                    <div class="contList">
                                        <font class=" displayB height30 clearfix"><span></span>解答查询挂牌信息 </font>
                                        <font class=" displayB height30 clearfix"><span></span>挂牌相关常见问题 </font>
                                        <span class=" displayB height30 clearfix"><span></span>咨询如何登记挂牌 </span>
                                    </div>
                                </div>
                            <%--</a>--%>
                        </div>
                    </div>
                </div>
            </div>
                <%--今日新闻 结束--%>

                <%--中心展示 开始--%>
            <div class="content platform-content">
                <div class="platform-title">中心展示</div>
                <div class="platform-box ">
                    <div class="platform-ul fn-clear">
                        <div class="platform-item">
                            <div class="platform-item-title">1000家</div>
                            <div class="platform-item-tip">已挂牌企业数量，通过在中心挂牌，展示企业进行股权交易</div>
                        </div>
                        <div class="platform-item">
                            <div class="platform-item-title">2亿</div>
                            <div class="platform-item-tip">已融资金额，通过路演对企业进行展示之后对企业进行融资</div>
                        </div>
                        <div class="platform-item">
                            <div class="platform-item-title">216家</div>
                            <div class="platform-item-tip">近一季度以来，挂牌企业数，中心快速发展之中</div>
                        </div>
                        <div class="platform-item">
                            <div class="platform-item-title">80%</div>
                            <div class="platform-item-tip">中心专业人才80%具有硕士学历，50%专业人才具有注会、律师、翻译等执业资格</div>
                        </div>

                    </div>
                </div>
            </div>
                <%--中心展示 结束--%>

                <%--路演中心 开始--%>
            <div class="content success-content">
                <div class="success-title">路演中心</div>
                <div class="success-list-content">
                    <ul class="success-ul fn-clear">
                        <li class="suc-li" data-url="">
                            <div class="suc-item">
                                <div class="suc-item-type" data-url="">
                                    <a target="_blank">餐饮业</a>
                                </div>
                                <div class="suc-item-bg">
                                    <img src="image/luyanpic1.png">
                                </div>
                                <div class="suc-item-logo">
                                    <img src="image/luyanpic1logo.jpg">
                                </div>
                                <div class="suc-item-title">雅座</div>
                                <div class="suc-item-tip">帮助商家建立移动支付场景，打通支付平台与商家CRM系统</div>
                                <a class="J_toCaseDetail"></a>
                            </div>
                        </li>
                        <li class="suc-li" data-url="">
                            <div class="suc-item">
                                <div class="suc-item-type" data-url="">
                                    <a target="_blank">休闲娱乐</a>
                                </div>
                                <div class="suc-item-bg">
                                    <img src="image/luyanpic2.jpg">
                                </div>
                                <div class="suc-item-logo">
                                    <img src="image/luyanpic2logo.png">
                                </div>
                                <div class="suc-item-title">华佗驾到</div>
                                <div class="suc-item-tip">有效进行会员管理，提升用户复购率和留存率</div>
                                <a class="J_toCaseDetail" target="_blank"></a>
                            </div>
                        </li>
                        <li class="suc-li" data-url="">
                            <div class="suc-item">
                                <div class="suc-item-type" data-url="">
                                    <a target="_blank">商超</a>
                                </div>
                                <div class="suc-item-bg">
                                    <img src="image/luyanpic3.png">
                                </div>
                                <div class="suc-item-logo">
                                    <img src="image/luyanpic3logo.png">
                                </div>
                                <div class="suc-item-title">米雅</div>
                                <div class="suc-item-tip">提供移动支付和精营销方案，为企业降低成本提升效益</div>
                                <a class="J_toCaseDetail" target="_blank"></a>
                            </div>
                        </li>
                        <li class="suc-li" data-url="">
                            <div class="suc-item">
                                <div class="suc-item-type" data-url="">
                                    <a target="_blank">医疗</a>
                                </div>
                                <div class="suc-item-bg">
                                    <img src="image/luyanpic4.png">
                                </div>
                                <div class="suc-item-logo">
                                    <img src="image/luyanpic4logo.png">
                                </div>
                                <div class="suc-item-title">广州妇儿</div>
                                <div class="suc-item-tip">信用就医，零排队，让医疗变得温暖</div>
                                <a class="J_toCaseDetail" target="_blank"></a>
                            </div>
                        </li>

                    </ul>
                </div>
                <div class="button-content">
                    <a target="_blank" class="jui-btn jui-btn-table">查看更多</a>
                </div>
            </div>
                <%--路演中心 结束--%>

                <%--相聚在梧桐树下 开始--%>
            <div class="content feelings-content">
                <div class="mask"></div>
                <div class="feelings-title">相聚在梧桐树下</div>
            </div>
                <%--相聚在梧桐树下--%>

        </div>
        <%--内容正文页 结束--%>
    </div>
    <%--内容 结束--%>

    <%--脚部 开始--%>
    <div class="body-footer">
        <div class="content footer-content complete" id="black-footer">
            <div class="link-content">
                <ul class="link-list-content fn-clear">
                    <li class="web-content">
                        <div class="list-title">相关网站</div>
                        <ul class="web-ul">
                            <li><a href="" target="_blank">江西金控</a></li>
                            <li><a href="" target="_blank">汇通汇金</a></li>
                            <li><a href="" target="_blank">江西登记结算中心</a></li>
                            <li><a href="" target="_blank">赣投公司</a></li>
                        </ul>
                    </li>
                    <li class="links-content">
                        <div class="list-title">友情链接</div>
                        <ul class="link-ul fn-clear">
                            <li><a href="" target="_blank">江西省金融办</a></li>
                            <li><a href="" target="_blank">江西省发改委</a></li>
                            <li><a href="" target="_blank">江西省工商局</a></li>
                            <li><a href="" target="_blank">江西金控</a></li>
                        </ul>
                    </li>
                    <li class="services-content">
                        <div class="list-title">在线客服</div>
                        <ul class="list-ul">
                            <li>服务时间：周一至周日 8:00-24:00<br>
                                <a href="" target="_blank">
                                    <img class="service-icon" src="">
                                    <span>点此咨询</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="business-content">
                        <div class="list-title">党建热线</div>
                        <ul class="business-ul">
                            <li>服务时间：周一至周日 8:00-24:00<br>
                                <img class="service-icon" src=""><span>0571-88158090</span>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="right-content">
                ©2015 江西联合股权交易中心 版权所有 赣ICP备 15008881号-1
                <div class="server" id="ServerNum"> openhome-60-3 &nbsp; 0ae40c471481778031306412930623_0</div>
            </div>
        </div>
    </div>
    <%--脚部 结束--%>

</body>

</html>