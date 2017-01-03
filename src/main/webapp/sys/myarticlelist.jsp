<%--
  Created by IntelliJ IDEA.
  User: zz
  Date: 2016/10/1
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../head/master/init.jsp" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>我的文章列表--江西股权交易中心门户后台管理系统</title>
    <jsp:include page="${pageContext.request.contextPath}/head/master/css.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<jsp:include page="${pageContext.request.contextPath}/head/master/top.jsp"/>
<jsp:include page="${pageContext.request.contextPath}/head/master/left.jsp">
    <jsp:param name="parentnode" value="1"/>
    <jsp:param name="childnode" value="2"/>
</jsp:include>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            我的文章
        </h1>
        <ol class="breadcrumb">
            <li><a href="index.jsp"><i class="fa fa-dashboard"></i> 主页</a></li>
            <li><a href="#"><i class="fa fa-dashboard"></i> 文章管理</a></li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">
                            <small> 文章列表</small>
                        </h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                            <div class="col-xs-12 sys-article-table">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th><i class="fa  fa-file-text-o"></i> 文章标题</th>
                                        <th><i class="fa  fa-file-text"></i> 文章缩略标题</th>
                                        <th><i class="fa fa-user"></i> 编辑</th>
                                        <th><i class="fa fa-clock-o"></i> 创建时间</th>
                                        <th><i class="fa  fa-bars"></i> 栏目</th>
                                        <th><i class="fa fa-book"></i> 阅读量</th>
                                        <th><i class="fa  fa-thumbs-o-up"></i> 点赞量</th>
                                        <th><i class="fa fa-cog"></i> 操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:choose>
                                        <c:when test="${empty thelist}">
                                            <tr>
                                                <td colspan="8">
                                                    没有结果
                                                </td>
                                            </tr>
                                        </c:when>
                                        <c:otherwise>
                                            <c:forEach items="${thelist}" var="thelist" varStatus="status">
                                                <tr>
                                                    <td>${thelist.atitle}</td>
                                                    <td>${thelist.atitle_min}</td>
                                                    <td>${thelist.creatername}</td>
                                                    <td>${thelist.createdatetime}</td>
                                                    <td>${thelist.columnname}</td>
                                                    <td>${thelist.readcount}</td>
                                                    <td>${thelist.goodcount}</td>
                                                    <td>
                                                        <a href="${pageContext.request.contextPath}/sys/articleedit/${thelist.id}"
                                                           class="btn btn-sm btn-default"><i class="fa fa-edit"></i> 编辑</a>
                                                        <a href="${pageContext.request.contextPath}/sys/articledel/${thelist.id}"
                                                           class="btn btn-sm btn-default"><i class="fa fa-trash-o"></i>
                                                            删除</a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                    </tbody>
                                </table>
                                <nav>
                                    <ul class="pagination">
                                        <li><a href="#">共${totalrecode}条记录</a></li>
                                        <li><a href="#">共${totalpage }页</a></li>
                                    </ul>
                                    <ul class="pagination pull-right">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/sys/myarticlelist?curpageno=1">
                                                <span aria-hidden="true">首页</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/sys/myarticlelist?curpageno=${prepage}">上一页</a>
                                        </li>
                                        <li><a href="#">${currentpageno}</a></li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/sys/myarticlelist?curpageno=${nextpage}">下一页</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/sys/myarticlelist?curpageno=${totalpage}">
                                                尾页<span aria-hidden="true"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>

                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
    </section>
</div>

</body>
<jsp:include page="${pageContext.request.contextPath}/head/master/js.jsp"/>
<script>
    var a = $(document).height() + 'px';
    $('.main-sidebar').css('height', a);
    $(window).resize(function () {
        $('.main-sidebar').css('height', a);
    });

</script>
</html>
