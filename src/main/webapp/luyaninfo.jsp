<%--
  Created by IntelliJ IDEA.
  User: zz
  Date: 2016/11/29
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <title>路演企业展示--江西联合股权交易中心</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
    <style>
        body {
            color: #555;
            padding-top: 40px;
        }

        .blog-nav .active {
            color: #fff;
        }

        .blog-nav .active:after {
            position: absolute;
            bottom: 0;
            left: 50%;
            width: 0;
            height: 0;
            margin-left: -5px;
            vertical-align: middle;
            content: " ";
            border-right: 5px solid transparent;
            border-bottom: 5px solid;
            border-left: 5px solid transparent;
        }

        .blog-header {
            padding-top: 20px;
            padding-bottom: 20px;
        }

        .blog-title {
            margin-top: 30px;
            margin-bottom: 0;
            font-weight: normal;
        }

        .blog-description {
            font-size: 20px;
            color: #999;
        }

        .blog-main {
            font-size: 18px;
            line-height: 1.5;
        }

        .sidebar-module {
            padding: 15px;
            margin: 0 -15px 15px;
        }

        .sidebar-module-inset {
            padding: 15px;
            background-color: #f5f5f5;
            border-radius: 4px;
        }

        .sidebar-module-inset p:last-child,
        .sidebar-module-inset ul:last-child,
        .sidebar-module-inset ol:last-child {
            margin-bottom: 0;
        }

        .blog-post {
            margin-bottom: 60px;
        }

    </style>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>
<div class="container">
    <div class="blog-header">
        <h3 class="blog-title">${luyaninfo.pname}</h3>
        <p class="lead blog-description">${luyaninfo.cname}</p>
    </div>

    <div class="row">
        <div class="col-sm-8 blog-main">
            <div class="blog-post">
                ${luyaninfo.memo}
            </div>
        </div>

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
            <div class="sidebar-module sidebar-module-inset">
                <h4>所属行业</h4>
                <p>${luyaninfo.industryname}</p>
            </div>
            <div class="sidebar-module sidebar-module-inset">
                <h4>城市</h4>
                <p>${luyaninfo.cityname}</p>
            </div>
            <div class="sidebar-module sidebar-module-inset">
                <h4>融资额</h4>
                <p>${luyaninfo.financingname}</p>
            </div>
            <div class="sidebar-module sidebar-module-inset">
                <h4>融资方式</h4>
                <p>${luyaninfo.ftypename}</p>
            </div>

        </div>
    </div>
</div>
<jsp:include page="${pageContext.request.contextPath}/head/customer/footer.jsp"/>
</body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/js.jsp"/>
</html>
