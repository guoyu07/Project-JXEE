<%--
  Created by IntelliJ IDEA.
  User: zz
  Date: 2016/10/25
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../head/master/init.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>栏目列表--江西股权交易中心门户后台管理系统</title>
    <jsp:include page="${pageContext.request.contextPath}/head/master/css.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="${pageContext.request.contextPath}/head/master/top.jsp"/>
    <jsp:include page="${pageContext.request.contextPath}/head/master/left.jsp">
        <jsp:param name="parentnode" value="4"/>
        <jsp:param name="childnode" value="1"/>
    </jsp:include>
    <div class="content-wrapper">
        <section class="content-header">
            <h1>栏目管理</h1>
            <ol class="breadcrumb">
                <li><a href="index.jsp"><i class="fa fa-home"></i> 主页</a></li>
                <li><a href="#"><i class="fa fa-table"></i> 栏目管理</a></li>
                <li><a href="#"><i class="fa fa-th-list"></i> 栏目管理</a></li>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">查询
                                <small> 咨询查询</small>
                            </h3>
                        </div>
                        <div class="box-body">
                            <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">


                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-bordered table-striped table-hover dataTable">
                                            <thead>
                                            <tr>
                                                <th>栏目名</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:choose>
                                                <c:when test="${empty thelist}">
                                                    <tr>
                                                        <td colspan="2">
                                                            没有结果
                                                        </td>
                                                    </tr>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach items="${thelist}" var="thelist" varStatus="status">
                                                        <tr>
                                                            <td>${thelist.columnname}</td>
                                                            <td>
                                                                <button name="coledit_btn"
                                                                        class="btn btn-sm btn-default"
                                                                        data-id="${thelist.id}"
                                                                        data-cname="${thelist.columnname}">
                                                                    修改
                                                                </button>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </c:otherwise>
                                            </c:choose>
                                            </tbody>
                                            <thead>
                                            <tr>
                                                <th>栏目名</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<div class="modal fade" id="coledit_modal" data-keyboard="false" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <form id="columnedit_form" action="sys/columnsave">
                    <input id="cid" name="cid" type="hidden">
                    <div class="form-group">
                        <label for="columnname">栏目名称</label>
                        <input type="text" class="form-control" id="columnname" name="columnname"
                               placeholder="栏目名称">
                    </div>
                </form>
                <button id="modifybtn" class="btn btn-sm btn-danger btn-flat">修改</button>
            </div>
        </div>
    </div>
</div>
</body>

<jsp:include page="${pageContext.request.contextPath}/head/master/js.jsp"/>
<script>
    $(function () {
        $("button[name='coledit_btn']").on("click", function () {
            $("#cid").val($(this).attr("data-id"));
            $("#columnname").val($(this).attr("data-cname"));
            $("#coledit_modal").modal("show");
        });
        $("#modifybtn").on("click", function () {
            $("#columnedit_form").submit();
        });
    });
</script>
</html>
