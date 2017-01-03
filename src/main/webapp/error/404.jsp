<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>江西联合股权交易中心 | 404 页面没找到</title>
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
        <h2 class="headline text-yellow">404</h2>

        <div class="error-content">
            <h3><i class="fa fa-warning text-yellow"></i> 你要的页面没找到</h3>

            <p>
                你访问了一个不存在的地址！
                你可以先回<a href="${pageContext.request.contextPath}/index.jsp">主页</a>看看。
            </p>
        </div>
    </div>
</section>
</body>
<jsp:include page="${pageContext.request.contextPath}/head/master/js.jsp"/>
</html>
