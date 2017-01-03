<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<!--[if IE]>
<h1>推荐使用非IE内核浏览器。<small>下载推荐浏览器请<a href="http://www.firefox.com.cn/">点击这里</a></small></h1>
<![endif]-->
<html lang="zh">
<head>
    <title>登陆--江西联合股权交易中心门户后台管理系统</title>
    <jsp:include page="${pageContext.request.contextPath}/head/master/css.jsp"/>
</head>
<body class="hold-transition layout-boxed">
<img class="jxjee-logo-img"
     src="${pageContext.request.contextPath}/image/logo.png">
<div class="login-box">
    <div class="login-box-body">
        <p class="login-box-msg">后台管理系统</p>

        <form action="${pageContext.request.contextPath}/sys/login" method="post">
            <div class="form-group has-feedback">
                <input type="text" class="form-control" placeholder="帐号" id="username" name="username">
                <span class="fa fa-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="密码" id="pswd" name="pswd">
                <span class="fa fa-key form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">登陆</button>
                </div>
            </div>
        </form>
    </div>
</div>
<jsp:include page="${pageContext.request.contextPath}/head/master/js.jsp"/>
</body>
<script>
    $(document).ready(function () {
        //设置背景图高度等于背景高度；
        var $a = $(window).height();
        $('.login-page').css('height', $a);
    })
</script>
</html>