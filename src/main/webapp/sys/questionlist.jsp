<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../head/master/init.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>咨询处理--江西股权交易中心门户后台管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2/css/select2.min.css">
    <jsp:include page="${pageContext.request.contextPath}/head/master/css.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="${pageContext.request.contextPath}/head/master/top.jsp"/>
    <jsp:include page="${pageContext.request.contextPath}/head/master/left.jsp">
        <jsp:param name="parentnode" value="3"/>
        <jsp:param name="childnode" value="2"/>
    </jsp:include>
    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                咨询
            </h1>
            <ol class="breadcrumb">
                <li><a href="index.jsp"><i class="fa  fa-home"></i> 主页</a></li>
                <li><a href="#"><i class="fa  fa-calendar"></i> 预约与咨询</a></li>
                <li><a href="#"><i class="fa  fa-phone"></i> 咨询</a></li>

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
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                                <form class="search-box" action="${pageContext.request.contextPath}/sys/questionlist"
                                      id="questionform">
                                    <input type="hidden" id="curpageno" name="curpageno" value="0">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <div class="dataTables_length" id="1"><label>状态：
                                                <select id="astate" name="astate"
                                                        class="select2-data-array form-control"
                                                        autocomplete="off">
                                                    <option value="1"
                                                            <c:choose>
                                                                <c:when test="${astate==1 }">selected="selected"</c:when>
                                                            </c:choose>>处理完成
                                                    </option>
                                                    <option value="0"
                                                            <c:choose>
                                                                <c:when test="${astate==0 }">selected="selected"</c:when>
                                                            </c:choose>>未处理
                                                    </option>
                                                </select>
                                            </label></div>
                                        </div>

                                        <div class="col-sm-3">
                                            <strong>搜索 :</strong>
                                            <div class="input-group">

                                                <input type="text" class="form-control input-sm" placeholder="搜索"
                                                       value="${keyname}">

                                                <div class="input-group-addon">
                                                    <a id="searchinfo" class=""><i class="fa fa-search"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table id="example1"
                                               class="table table-bordered table-striped table-hover dataTable"
                                               role="grid">
                                            <thead>
                                            <tr role="row">
                                                <th>姓名</th>
                                                <th>手机号码</th>
                                                <th>企业名称</th>
                                                <th>职务</th>
                                                <th>问题类别</th>
                                                <th>来源</th>
                                                <th>咨询时间</th>
                                                <th>操作</th>
                                            </tr>

                                            </thead>
                                            <tbody>
                                            <c:choose>
                                                <c:when test="${empty thelist}">
                                                    <tr>
                                                        <td colspan="9">
                                                            没有结果
                                                        </td>
                                                    </tr>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach items="${thelist}" var="thelist" varStatus="status">
                                                        <tr>
                                                            <td>${thelist.uname}</td>
                                                            <td>${thelist.tel}</td>
                                                            <td>${thelist.bname}</td>
                                                            <td>${thelist.resign}</td>
                                                            <td>${thelist.qinfo}</td>
                                                            <td>${thelist.wherefrom}</td>
                                                            <td>${thelist.createtime}</td>
                                                            <td>
                                                                <c:choose>
                                                                    <c:when test="${astate==1 }">
                                                                        ${thelist.dealman} (${thelist.createtime})
                                                                    </c:when>
                                                                </c:choose>

                                                                <button name="questiondetail_btn"
                                                                        class="btn btn-default btn-sm"
                                                                        data-id="${thelist.id}">问题说明
                                                                </button>
                                                                <c:choose>
                                                                    <c:when test="${astate==0 }">
                                                                        <a href="sys/questiondeal/${thelist.id}/${currentpageno}/${astate}"
                                                                           class="btn btn-warning">处理</a>
                                                                    </c:when>
                                                                </c:choose>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </c:otherwise>
                                            </c:choose>
                                            </tbody>
                                            <tfoot>
                                            <tr>
                                                <th>姓名</th>
                                                <th>手机号码</th>
                                                <th>企业名称</th>
                                                <th>职务</th>
                                                <th>问题类别</th>
                                                <th>来源</th>
                                                <th>咨询时间</th>
                                                <th>操作</th>
                                            </tr>

                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                                <nav>
                                    <ul class="pagination">
                                        <li><a href="#">共${totalrecode}条记录</a></li>
                                        <li><a href="#">共${totalpage }页</a></li>
                                    </ul>
                                    <ul class="pagination pull-right">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/sys/appointmentlist?curpageno=1&astate=${astate}">
                                                <span aria-hidden="true">首页</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/sys/appointmentlist?curpageno=${prepage}&astate=${astate}">上一页</a>
                                        </li>
                                        <li><a href="#">${currentpageno}</a></li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/sys/appointmentlist?curpageno=${nextpage}&astate=${astate}">下一页</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/sys/appointmentlist?curpageno=${totalpage}&astate=${astate}">
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
</div>
</div>
<div class="modal fade" id="question_modal" data-keyboard="false" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body form-inline">
                <div class="form-group">
                    <label for="qmemo">问题详情</label>
                    <textarea id="qmemo" name="qmemo" class="form-control" rows="8"></textarea>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<jsp:include page="${pageContext.request.contextPath}/head/master/js.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/moment.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/select2/js/select2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/select2/js/i18n/zh-CN.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $(".select2-data-array").select2();

        $("#searchinfo").on("click", function () {
            $("#questionform").submit();
        });

        $("button[name='questiondetail_btn']").on("click", function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/sys/questioninfo?qid=" + $(this).attr("data-id"),
                contentType: "application/json",
                type: "post",
                dataType: "json",
                timeout: 500000,
                error: function (xmlHttpRequest, error) {
                    alert("请求失败");
                },
                success: function (data) {
                    $("#qmemo").val(data.questionInfo.memo);
                    $("#question_modal").modal("show");
                }
            });
        });
    });
</script>
</html>
