<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../head/master/init.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>路演企业列表--江西股权交易中心门户后台管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <jsp:include page="${pageContext.request.contextPath}/head/master/css.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="${pageContext.request.contextPath}/head/master/top.jsp"/>
    <jsp:include page="${pageContext.request.contextPath}/head/master/left.jsp">
        <jsp:param name="parentnode" value="2"/>
        <jsp:param name="childnode" value="2"/>
    </jsp:include>
    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                路演企业
            </h1>
            <ol class="breadcrumb">
                <li><a href="index.jsp"><i class="fa fa-dashboard"></i> 主页</a></li>
                <li><a href="#"><i class="fa fa-pencil-square-o"></i> 路演企业</a></li>

            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">查询
                                <small> 企业查询</small>
                            </h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                                <form class="search-box" action="${pageContext.request.contextPath}/sys/luyanlist">
                                    <input type="hidden" id="curpageno" name="curpageno" value="0">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <div class="dataTables_length" id="1"><label>行业： <select
                                                    name="industry" id="industry"
                                                    autocomplete="off"
                                                    class="form-control input-sm">

                                                <option value=-1>不限</option>
                                                <option value=1
                                                        <c:choose>
                                                            <c:when test="${industry == 1}">selected="selected"</c:when>
                                                        </c:choose>
                                                >
                                                    互联网
                                                </option>
                                                <option value=2
                                                        <c:choose>
                                                            <c:when test="${industry == 2}">selected="selected"</c:when>
                                                        </c:choose>
                                                >
                                                    计算机IT
                                                </option>
                                                <option value=3
                                                        <c:choose>
                                                            <c:when test="${industry == 3}">selected="selected"</c:when>
                                                        </c:choose>
                                                >电信及增值
                                                </option>
                                                <option value=4
                                                        <c:choose>
                                                            <c:when test="${industry == 4}">selected="selected"</c:when>
                                                        </c:choose>
                                                >传媒娱乐
                                                </option>
                                                <option value=5
                                                        <c:choose>
                                                            <c:when test="${industry == 5}">selected="selected"</c:when>
                                                        </c:choose>
                                                >节能环保
                                                </option>
                                                <option value=6
                                                        <c:choose>
                                                            <c:when test="${industry == 6}">selected="selected"</c:when>
                                                        </c:choose>
                                                >医疗健康
                                                </option>
                                                <option value=7
                                                        <c:choose>
                                                            <c:when test="${industry == 7}">selected="selected"</c:when>
                                                        </c:choose>
                                                >金融
                                                </option>
                                                <option value=8
                                                        <c:choose>
                                                            <c:when test="${industry == 8}">selected="selected"</c:when>
                                                        </c:choose>
                                                >教育
                                                </option>
                                                <option value=9
                                                        <c:choose>
                                                            <c:when test="${industry == 9}">selected="selected"</c:when>
                                                        </c:choose>
                                                >农林牧渔
                                                </option>
                                            </select> </label></div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="dataTables_length" id="2"><label>地区： <select
                                                    name="city" id="city"
                                                    autocomplete="off"
                                                    class="form-control input-sm">
                                                <option value=-1
                                                        <c:choose>
                                                            <c:when test="${city == -1}">selected="selected"</c:when>
                                                        </c:choose>
                                                >不限
                                                </option>
                                                <option value=3601
                                                        <c:choose>
                                                            <c:when test="${city == 3601}">selected="selected"</c:when>
                                                        </c:choose>>南昌
                                                </option>
                                                <option value=3602
                                                        <c:choose>
                                                            <c:when test="${city == 3602}">selected="selected"</c:when>
                                                        </c:choose>>景德镇
                                                </option>
                                                <option value=3603
                                                        <c:choose>
                                                            <c:when test="${city == 3603}">selected="selected"</c:when>
                                                        </c:choose>>萍乡
                                                </option>
                                                <option value=3604
                                                        <c:choose>
                                                            <c:when test="${city == 3604}">selected="selected"</c:when>
                                                        </c:choose>>九江
                                                </option>
                                                <option value=3605
                                                        <c:choose>
                                                            <c:when test="${city == 3605}">selected="selected"</c:when>
                                                        </c:choose>>新余
                                                </option>
                                                <option value=3606
                                                        <c:choose>
                                                            <c:when test="${city == 3606}">selected="selected"</c:when>
                                                        </c:choose>>鹰潭
                                                </option>
                                                <option value=3607
                                                        <c:choose>
                                                            <c:when test="${city == 3607}">selected="selected"</c:when>
                                                        </c:choose>>赣州
                                                </option>
                                                <option value=3608
                                                        <c:choose>
                                                            <c:when test="${city == 3608}">selected="selected"</c:when>
                                                        </c:choose>>吉安
                                                </option>
                                                <option value=3609
                                                        <c:choose>
                                                            <c:when test="${city == 3609}">selected="selected"</c:when>
                                                        </c:choose>>宜春
                                                </option>
                                                <option value=3610
                                                        <c:choose>
                                                            <c:when test="${city == 3610}">selected="selected"</c:when>
                                                        </c:choose>>抚州
                                                </option>
                                                <option value=3611
                                                        <c:choose>
                                                            <c:when test="${city == 3611}">selected="selected"</c:when>
                                                        </c:choose>>上饶
                                                </option>
                                                <option value=0
                                                        <c:choose>
                                                            <c:when test="${city == 0}">selected="selected"</c:when>
                                                        </c:choose>>外省
                                                </option>
                                            </select> </label></div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="dataTables_length" id="3"><label>融资金额： <select
                                                    name="financing" id="financing"
                                                    autocomplete="off"
                                                    class="form-control input-sm">
                                                <option value=-1
                                                        <c:choose>
                                                            <c:when test="${financing==-1}">selected = "selected"</c:when>
                                                        </c:choose>
                                                >不限
                                                </option>
                                                <option value=1
                                                        <c:choose>
                                                            <c:when test="${financing==1}">selected = "selected"</c:when>
                                                        </c:choose> >100万
                                                </option>
                                                <option value=2
                                                        <c:choose>
                                                            <c:when test="${financing==2}">selected = "selected"</c:when>
                                                        </c:choose> >100万-500万
                                                </option>
                                                <option value=3
                                                        <c:choose>
                                                            <c:when test="${financing==3}">selected = "selected"</c:when>
                                                        </c:choose> >500万-1000万
                                                </option>
                                                <option value=4
                                                        <c:choose>
                                                            <c:when test="${financing==4}">selected = "selected"</c:when>
                                                        </c:choose> >1000-3000万
                                                </option>
                                                <option value=5
                                                        <c:choose>
                                                            <c:when test="${financing==5}">selected = "selected"</c:when>
                                                        </c:choose> >3000-5000万
                                                </option>
                                                <option value=6
                                                        <c:choose>
                                                            <c:when test="${financing==6}">selected = "selected"</c:when>
                                                        </c:choose> >5000万-1亿
                                                </option>
                                                <option value=7
                                                        <c:choose>
                                                            <c:when test="${financing==7}">selected = "selected"</c:when>
                                                        </c:choose> >1亿以上
                                                </option>
                                            </select> </label></div>
                                        </div>

                                        <div class="col-sm-3">
                                            <strong>搜索 :</strong>
                                            <div class="input-group">

                                                <input type="text" class="form-control input-sm" name="keyname"
                                                       placeholder="输入企业名称"
                                                       value="${keyname}">

                                                <div class="input-group-addon">

                                                    <label for="submitButton"><i class="fa fa-search"></i></label>
                                                    <button type="submit" class="displayN" id="submitButton"></button>

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
                                                <th>企业名称</th>
                                                <th>项目名称</th>
                                                <th>地区</th>
                                                <th>融资金额</th>
                                                <th>融资方式</th>
                                                <th>行业</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:choose>
                                                <c:when test="${empty thelist}">
                                                    <tr>
                                                        <td colspan="7">
                                                            没有结果
                                                        </td>
                                                    </tr>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:forEach items="${thelist}" var="thelist" varStatus="status">
                                                        <tr>
                                                            <td>${thelist.cname}</td>
                                                            <td>${thelist.pname}</td>
                                                            <td>${thelist.cityname}</td>
                                                            <td>${thelist.financingname}</td>
                                                            <td>${thelist.ftypename}</td>
                                                            <td>${thelist.industryname}</td>
                                                            <td>
                                                                <a href="${pageContext.request.contextPath}/sys/luyaninfo/${thelist.id}"
                                                                   class="btn btn-default btn-sm"><i
                                                                        class="fa fa-edit"></i> 详情</a>
                                                                <a href="${pageContext.request.contextPath}/sys/delluyan?keyname=${keyname }&city=${city }&industry=${industry }&financing=${financing }&curpageno=${currentpageno}&lyid=${thelist.id}"
                                                                   class="btn btn-default btn-sm"><i
                                                                        class="fa fa-times"></i> 删除</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </c:otherwise>
                                            </c:choose>
                                            </tbody>
                                            <tfoot>
                                            <tr>
                                                <th>企业名称</th>
                                                <th>项目名称</th>
                                                <th>地区</th>
                                                <th>融资金额</th>
                                                <th>融资方式</th>
                                                <th>行业</th>
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
</body>
<jsp:include page="${pageContext.request.contextPath}/head/master/js.jsp"/>
<script src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '10%'
        });
    });
</script>
</html>
