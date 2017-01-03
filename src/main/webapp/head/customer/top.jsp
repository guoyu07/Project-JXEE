<%@ page language="java" pageEncoding="UTF-8" %>
<%--顶部导航--%>
<nav class="navbar navbar-inverse navbar-fixed-top jx-top" id="header">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="https://www.jxjee.com/"><img class="nav-logo" src="${pageContext.request.contextPath}/image/logo.png" alt="logo"/></a>
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
                <li class="dropdown">
                    <a href="" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">服务咨询 <span
                            class="caret"></span></a>
                    <ul class="dropdown-menu inner-dropdown" role="menu" aria-labelledby="navbarDrop1">
                        <li>
                            <a href="https://www.jxjee.com/node/service/listed/">企业服务</a>
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
            <form class="navbar-form navbar-right">
                <div class="form-group hidden-sm">
                    <input type="text" class="form-control" placeholder="搜索企业">
                </div>
                <button type="submit" class="btn btn-sm btn-info hidden-sm">搜索</button>
                <span></span>
                <a class="btn" href="https://www.jxjee.com/node/user/login?goto_page=/node/">登陆</a>
                <span></span>
                <a href="https://www.jxjee.com/node/user/reg" class="btn">注册</a>
            </form>
        </div>
    </div>
</nav>
