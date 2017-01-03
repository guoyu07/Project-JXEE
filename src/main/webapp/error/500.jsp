<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>江西联合股权交易中心 | 500 错误</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/customer/jxjee.css">
    <jsp:include page="${pageContext.request.contextPath}/head/master/css.jsp"/>
    <style type="text/css">
        .content {
            margin-top: 60px;
            border: 0;
        }
    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>
<section class="content">
    <div class="error-page">
        <h2 class="headline text-red">500</h2>

        <div class="error-content">
            <h3><i class="fa fa-warning text-red"></i> 啊哦! 系统出了点毛病</h3>

            <p>
                网站给攻城狮开了个玩笑，我们正在努力处理~~
                你可以先回<a href="${pageContext.request.contextPath}/index.jsp">主页</a>看看。
            </p>
        </div>
    </div>
</section>
</body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/js.jsp"/>
</html>
