<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../head/master/init.jsp" %>

<!DOCTYPE html>
<!--[if IE]>
<div class="modal" id="attention" data-keyboard="false" data-backdrop="static">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-body center">
<p>推荐使用非IE内核浏览器。下载推荐浏览器请<a href="http://www.firefox.com.cn/">点击这里</a></p>
</div>
</div>
</div>
</div>
<![endif]-->
<html lang="zh">
<head>
    <title>首页--江西股权交易中心门户后台管理系统</title>
    <jsp:include page="${pageContext.request.contextPath}/head/master/css.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <jsp:include page="${pageContext.request.contextPath}/head/master/top.jsp"/>
    <jsp:include page="${pageContext.request.contextPath}/head/master/left.jsp"/>
    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                全部文章
                <small>近期发表文章</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="index.jsp"><i class="fa fa-home"></i> 主页</a></li>
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
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="dataTables_length" id="1"><label>行业： <select
                                                name="example1_length"
                                                class="form-control input-sm">
                                            <option value="1">不限</option>
                                            <option value="2">金融</option>
                                            <option value="3">教育</option>
                                            <option value="4">农业</option>
                                        </select> </label></div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="dataTables_length" id="2"><label>地区： <select
                                                name="example1_length"
                                                class="form-control input-sm">
                                            <option value="1">不限</option>
                                            <option value="2">赣州</option>
                                            <option value="3">南昌</option>
                                            <option value="4">上饶</option>
                                        </select> </label></div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="dataTables_length" id="3"><label>融资金额： <select
                                                name="example1_length"
                                                class="form-control input-sm">
                                            <option value="1">不限</option>
                                            <option value="2">100万</option>
                                            <option value="3">100万-500万</option>
                                            <option value="4">500万-1000万</option>
                                        </select> </label></div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div id="example1_filter" class="dataTables_filter"><label> 搜索 : <input
                                                type="search" class="form-control input-sm" placeholder="输入企业名称"
                                                aria-controls="example1"></label></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table id="example1"
                                               class="table table-bordered table-striped table-hover dataTable"
                                               role="grid" aria-describedby="example1_info">
                                            <thead>
                                            <tr role="row">
                                                <th>企业名称</th>
                                                <th>地区</th>
                                                <th>融资金额</th>
                                                <th>行业</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>


                                            <tr role="row" class="odd">
                                                <td class="sorting_1">江西联合股权交易中心</td>
                                                <td>南昌</td>
                                                <td>200000000</td>
                                                <td>互联网金融</td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-edit"></i>
                                                        修改
                                                    </button>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-times"></i>
                                                        删除
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class="sorting_1">江西联合股权交易中心</td>
                                                <td>南昌</td>
                                                <td>200000000</td>
                                                <td>互联网金融</td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-edit"></i>
                                                        修改
                                                    </button>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-times"></i>
                                                        删除
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="sorting_1">江西联合股权交易中心</td>
                                                <td>南昌</td>
                                                <td>200000000</td>
                                                <td>互联网金融</td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-edit"></i>
                                                        修改
                                                    </button>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-times"></i>
                                                        删除
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class="sorting_1">江西联合股权交易中心</td>
                                                <td>南昌</td>
                                                <td>200000000</td>
                                                <td>互联网金融</td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-edit"></i>
                                                        修改
                                                    </button>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-times"></i>
                                                        删除
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="sorting_1">江西联合股权交易中心</td>
                                                <td>南昌</td>
                                                <td>200000000</td>
                                                <td>互联网金融</td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-edit"></i>
                                                        修改
                                                    </button>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-times"></i>
                                                        删除
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class="sorting_1">江西联合股权交易中心</td>
                                                <td>南昌</td>
                                                <td>200000000</td>
                                                <td>互联网金融</td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-edit"></i>
                                                        修改
                                                    </button>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-times"></i>
                                                        删除
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="sorting_1">江西联合股权交易中心</td>
                                                <td>南昌</td>
                                                <td>200000000</td>
                                                <td>互联网金融</td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-edit"></i>
                                                        修改
                                                    </button>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-times"></i>
                                                        删除
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class="sorting_1">江西联合股权交易中心</td>
                                                <td>南昌</td>
                                                <td>200000000</td>
                                                <td>互联网金融</td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-edit"></i>
                                                        修改
                                                    </button>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-times"></i>
                                                        删除
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td class="sorting_1">江西联合股权交易中心</td>
                                                <td>南昌</td>
                                                <td>200000000</td>
                                                <td>互联网金融</td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-edit"></i>
                                                        修改
                                                    </button>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-times"></i>
                                                        删除
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr role="row" class="even">
                                                <td class="sorting_1">江西联合股权交易中心</td>
                                                <td>南昌</td>
                                                <td>200000000</td>
                                                <td>互联网金融</td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-edit"></i>
                                                        修改
                                                    </button>
                                                    <button type="button" class="btn btn-default btn-sm">
                                                        <i class="fa fa-times"></i>
                                                        删除
                                                    </button>
                                                </td>
                                            </tr>
                                            </tbody>
                                            <tfoot>
                                            <tr>
                                                <th>企业名称</th>
                                                <th>地区</th>
                                                <th>融资金额</th>
                                                <th>行业</th>
                                                <th>操作</th>
                                            </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5">
                                        <div class="dataTables_info" id="example1_info" role="status"
                                             aria-live="polite">显示 1 到 10 总计 579
                                        </div>
                                    </div>
                                    <div class="col-sm-7">
                                        <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate"
                                             style="
    float: right;
">
                                            <ul class="pagination">
                                                <li class="paginate_button previous disabled" id="example1_previous"><a
                                                        href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">上一页</a>
                                                </li>
                                                <li class="paginate_button active"><a href="#" aria-controls="example1"
                                                                                      data-dt-idx="1" tabindex="0">1</a>
                                                </li>
                                                <li class="paginate_button "><a href="#" aria-controls="example1"
                                                                                data-dt-idx="2" tabindex="0">2</a></li>
                                                <li class="paginate_button "><a href="#" aria-controls="example1"
                                                                                data-dt-idx="3" tabindex="0">3</a></li>
                                                <li class="paginate_button "><a href="#" aria-controls="example1"
                                                                                data-dt-idx="4" tabindex="0">4</a></li>
                                                <li class="paginate_button "><a href="#" aria-controls="example1"
                                                                                data-dt-idx="5" tabindex="0">5</a></li>
                                                <li class="paginate_button "><a href="#" aria-controls="example1"
                                                                                data-dt-idx="6" tabindex="0">6</a></li>
                                                <li class="paginate_button next" id="example1_next"><a href="#"
                                                                                                       aria-controls="example1"
                                                                                                       data-dt-idx="7"
                                                                                                       tabindex="0">下一页</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
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
<script type="text/javascript">
    $(function () {
    });
</script>
</html>