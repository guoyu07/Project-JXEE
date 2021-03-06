<%--
  Created by IntelliJ IDEA.
  User: zz
  Date: 2016/11/3
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../head/master/init.jsp" %>
<%
    String result = request.getParameter("result");
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>路演发布--江西股权交易中心门户后台管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2/css/select2.min.css">
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
                            <h3 class="box-title">新增文章
                                <small> 添加文章至主页</small>
                            </h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row article-edit">
                                <div class="col-md-12">
                                    <form action="${pageContext.request.contextPath}/sys/luyansave"
                                          class="form-horizontal" method="post"
                                          id="articleform">
                                        <input type="hidden" id="lyid" name="lyid" value="${luyaninfo.id }">
                                        <div class="form-group">
                                            <label for="cname" class="col-md-2 control-label"><i
                                                    class="fa fa-fw fa-pencil-square-o"></i>
                                                公司名称:</label>
                                            <div class="col-md-4">
                                                <input type="text" class="form-control" id="cname" name="cname"
                                                       placeholder="公司名称"
                                                       value="${luyaninfo.cname }">
                                            </div>
                                            <label for="pname" class="col-md-2 control-label"><i
                                                    class="fa fa-fw fa-pencil-square-o"></i>
                                                项目名称:</label>
                                            <div class="col-md-4">
                                                <input type="text" class="form-control" id="pname" name="pname"
                                                       placeholder="项目名称"
                                                       value="${luyaninfo.pname }">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="cityid" class="col-md-2 control-label"><i
                                                    class="fa fa-fw fa-pencil-square-o"></i>
                                                城市:</label>
                                            <div class="col-md-4">

                                                <select class="select2-data-array form-control" id="cityid"
                                                        name="cityid" autocomplete="off">
                                                    <c:forEach items="${citylist}" var="citylist" varStatus="status">
                                                        <option value="${citylist.id}" <c:choose>
                                                            <c:when test="${citylist.id == luyaninfo.city }">selected="selected"</c:when>
                                                        </c:choose>>${citylist.cityname}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <label for="financing" class="col-md-2 control-label"><i
                                                    class="fa fa-fw fa-pencil-square-o"></i>
                                                融资金额:</label>
                                            <div class="col-md-4">
                                                <select class="select2-data-array form-control" id="financing"
                                                        name="financing" autocomplete="off">
                                                    <c:forEach items="${financinglist}" var="financinglist"
                                                               varStatus="status">
                                                        <option value="${financinglist.dvalue}"
                                                                <c:choose>
                                                                    <c:when test="${financinglist.dvalue == luyaninfo.financing }">selected="selected"</c:when>
                                                                </c:choose>>${financinglist.dmemo}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="ftype" class="col-md-2 control-label"><i
                                                    class="fa fa-fw fa-pencil-square-o"></i>
                                                融资方式:</label>
                                            <div class="col-md-4">
                                                <select class="select2-data-array form-control" id="ftype" name="ftype"
                                                        autocomplete="off">
                                                    <c:forEach items="${financetypelist}" var="financetypelist"
                                                               varStatus="status">
                                                        <option value="${financetypelist.dvalue}"
                                                                <c:choose>
                                                                    <c:when test="${financetypelist.dvalue == luyaninfo.ftype }">selected="selected"</c:when>
                                                                </c:choose>>${financetypelist.dmemo}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <label for="industry" class="col-md-2 control-label"><i
                                                    class="fa fa-fw fa-pencil-square-o"></i>
                                                行业:</label>
                                            <div class="col-md-4">
                                                <select class="select2-data-array form-control" id="industry"
                                                        name="industry" autocomplete="off">
                                                    <c:forEach items="${industrylist}" var="industrylist"
                                                               varStatus="status">
                                                        <option value="${industrylist.dvalue}"
                                                                <c:choose>
                                                                    <c:when test="${industrylist.dvalue == luyaninfo.industry }">selected="selected"</c:when>
                                                                </c:choose>>${industrylist.dmemo}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                        </div>

                                        <div class="form-group article-text">
                                            <label for="memo" class="col-md-2 control-label"><i
                                                    class="fa fa-fw fa-pencil-square-o"></i>
                                                缩略图片:</label>
                                            <div class="col-md-10">
                                                <%--<img id="pic1img" src="${luyaninfo.imgthumb }" height="150" width="150">--%>
                                                <img src="http://placehold.it/150x100" alt="..." class="margin">
                                                <input type="hidden" id="imgthumb" name="imgthumb"
                                                       value="${luyaninfo.imgthumb }">
                                                <button id="pic1" name="pic1"
                                                        class="btn btn-sm btn-primary btn-flat"
                                                        value="上传图片"><i class="fa fa-camera"></i> 上传图片
                                                </button>
                                            </div>
                                        </div>


                                        <div class="form-group article-text">
                                            <label for="memo" class="col-md-2 control-label"><i
                                                    class="fa fa-fw fa-pencil-square-o"></i>
                                                项目简介:</label>
                                            <div class="col-md-10">
                        <textarea id="memo" name="memo"
                                  style="width:100%;height:400px;">${luyaninfo.memo }</textarea>
                                            </div>
                                        </div>
                                    </form>
                                    <a class="col-md-offset-2 btn btn-primary btn-flat center" id="savebtn">保存</a>
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

</body>
<jsp:include page="../head/master/js.jsp"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/select2/js/select2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/select2/js/i18n/zh-CN.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/plugins/kindeditor/kindeditor-all-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript">
    $(function () {
        var result = String("<%=result%>");

        if (result != "null") {
            if (result == "true") {
                alert("修改成功");
            } else {
                alert("修改失败");
            }
        }
        $(".select2-data-array").select2();

        KindEditor.ready(function (K) {
            var editor = K.editor({
                resizeType: 1,
                autoHeightMode: true,
                uploadJson: '${pageContext.request.contextPath}/sys/upload_json.jsp'
            });

            K('#pic1').click(function () {
                editor.loadPlugin('image', function () {
                    editor.plugin.imageDialog({
                        showRemote: false,
                        imageUrl: K('#pic1img').val(),
                        clickFn: function (url) {
                            $('#pic1img').attr("src", url);
                            $('#imgthumb').val(url);
                            editor.hideDialog();
                        }
                    });
                });
            });

            K.create('textarea[name="memo"]', {
                resizeType: 1,
                autoHeightMode: true,
                uploadJson: "${pageContext.request.contextPath}/sys/upload_json.jsp",
                fileManagerJson: "${pageContext.request.contextPath}/sys/file_manager_json.jsp",
                allowFileManager: true,
                afterBlur: function () {
                    this.sync();
                }
            });
        });

        $("#savebtn").on("click", function () {
            $("#articleform").submit();
        });
    });
</script>