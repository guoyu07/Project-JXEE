<%--
  Created by IntelliJ IDEA.
  User: zz
  Date: 2016/11/2
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>江西联合股权交易中心--资产受让意向</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>

<div class="container container-down-4em">
    <div class="form-table">
        <form action="${pageContext.request.contextPath}/newappointment" method="post">
            <blockquote><strong>资产受让意向</strong></blockquote>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="pno">项目编号 <span class="red">*</span></label>
                        <input type="text" class="form-control" id="pno" name="pno" placeholder="项目编号" required>
                    </div>
                    <div class="form-group">
                        <label for="cname">姓名 <span class="red">*</span></label>
                        <input type="text" class="form-control" id="cname" name="cname" placeholder="姓名" required>

                    </div>
                    <div class="form-group">
                        <label for="ctel">手机号 <span class="red">*</span></label>
                        <input type="text" class="form-control" id="ctel" name="ctel" placeholder="手机号" required>
                    </div>

                    <div class="form-group">
                        <label for="rname">推荐人</label>
                        <input type="text" class="form-control" id="rname" name="rname" placeholder="推荐人">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="cno">机构名称</label>
                        <input type="text" class="form-control" id="cno" name="cno" placeholder="机构名称">
                    </div>
                    <div class="form-group">
                        <label for="memo">问题</label>
                        <textarea class="form-control textArea" id="memo" name="memo"></textarea>
                    </div>
                </div>
            </div>
            <p class="service-options">您是如何得知可以在中心官网提交需求的？（可多选）</p>
            <div class="row">
                <div class="col-sm-6 col-md-3 service-box ">
                    <div class="thumbnail service-from" data-name="A.官方微信">
                        <div class="caption bill-box">
                            A.官方微信
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service-box ">
                    <div class="thumbnail service-from" data-name="B.中心官网">
                        <div class="caption bill-box">
                            B.中心官网
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service-box ">
                    <div class="thumbnail service-from" data-name="C.朋友介绍">
                        <div class="caption bill-box">
                            C.朋友介绍
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service-box ">
                    <div class="thumbnail service-from" data-name="D.其他渠道">
                        <div class="caption bill-box">
                            D.其他渠道
                        </div>
                    </div>
                </div>
                <input id="wherefrom" name="wherefrom" type="hidden"/>
            </div>
            <button type="submit" class="btn btn-warning fr">提交申请</button>

        </form>
    </div>
</div>
<jsp:include page="${pageContext.request.contextPath}/head/customer/footer.jsp"/>
</body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/js.jsp"/>
<script type="text/javascript">
    $(function () {
        $(".service-from").click(function () {
            var _this = $(this);
            var _name = $(this).attr("data-name");
            if (_this.hasClass('selected')) {
                _this.removeClass('selected');
                $("#wherefrom").val(function (index, value) {
                    return value.replace(_name, "");
                });
            } else {
                _this.addClass('selected');

                $("#wherefrom").val(function (index, value) {
                    return value + _name;
                });
            }
        });
    });
</script>
</html>
