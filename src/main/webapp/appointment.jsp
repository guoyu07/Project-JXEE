<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>江西联合股权交易中心--产品投资预约</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>
<jsp:include page="${pageContext.request.contextPath}/head/customer/carousel.jsp"/>
<!--表单-->
<div class="container">
    <div class="form-table">
        <form action="${pageContext.request.contextPath}/newappointment" method="post">
            <blockquote><strong>请选择预约的产品（可多选）</strong></blockquote>
            <div class="row services">
                <div class="col-sm-6 col-md-3 service-box ">
                    <div class="thumbnail service-info" data-name="A.江右私募债">
                        <img src="${pageContext.request.contextPath}/image/a1.jpg"/>
                        <em class="select-icon"></em>
                        <div class="caption bill-box">
                            <h3>江右私募债</h3>
                            <p>江西联合股权交易中心担任备案人</p>
                            <p><a href="https://www.jxjee.com/node/comb-wisdom/private-debt" target="_blank"
                                  class="btn btn-info btn-more" role="button">了解更多</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service-box">
                    <div class="thumbnail service-info" data-name="B.江右投融宝理财管理计划">
                        <img src="${pageContext.request.contextPath}/image/a2.jpg"/>
                        <em class="select-icon"></em>
                        <div class="caption bill-box">
                            <h3>江右投融宝理财管理计划</h3>
                            <p>江西联合股权交易中心担任管理人</p>
                            <p><a href="https://www.jxjee.com/node/invest/rongbaoinfo" class="btn btn-info btn-more"
                                  role="button" target="_blank">了解更多</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service-box">
                    <div class="thumbnail service-info" data-name="C.江右股权投资">
                        <img src="${pageContext.request.contextPath}/image/a3.jpg"/>
                        <em class="select-icon"></em>
                        <div class="caption bill-box">
                            <h3>江右股权投资</h3>
                            <p>江西联合股权交易中心担任财务顾问</p>
                            <p><a href="https://www.jxjee.com/node/stock-middle/index_new" target="_blank"
                                  class="btn btn-info btn-more" role="button">了解更多</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 service-box">
                    <div class="thumbnail service-info" data-name="D.资产转让">
                        <img src="${pageContext.request.contextPath}/image/a4.jpg"/>
                        <em class="select-icon"></em>
                        <div class="caption bill-box">
                            <h3>资产转让</h3>
                            <p>江西联合股权交易中心担任转让平台</p>
                            <p><a href="https://www.jxjee.com/node/npa-transfer/npa_transfer" target="_blank"
                                  class="btn btn-info btn-more" role="button">了解更多</a></p>
                        </div>
                    </div>
                </div>

                <input id="cno" name="cno" type="hidden"/>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="cname">姓名 <span class="red">*</span></label>
                        <input type="text" class="form-control" id="cname" name="cname" placeholder="姓名" required>

                    </div>
                    <div class="form-group">
                        <label for="ctel">手机号 <span class="red">*</span></label>
                        <input type="text" class="form-control" id="ctel" name="ctel" placeholder="手机号" required>
                    </div>
                    <div class="form-group">
                        <label for="iamount">预约金额 <span class="red">*</span></label>
                        <input type="text" class="form-control" id="iamount" name="iamount" placeholder="预约金额" required>
                    </div>
                    <div class="form-group">
                        <label for="pname">推荐人</label>
                        <input type="text" class="form-control" id="pname" name="pname" placeholder="推荐人">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="memo">问题</label>
                        <textarea class="form-control textArea" id="memo" name="memo"></textarea>
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
                </div>
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
        $(".service-info").click(function () {
            var _this = $(this);
            var _name = $(this).attr("data-name");
            if (_this.hasClass('selected')) {
                _this.removeClass('selected');

                $("#cno").val(function (index, value) {
                    return value.replace(_name, "");
                });

            } else {
                _this.addClass('selected');

                $("#cno").val(function (index, value) {
                    return value + _name;
                });
            }
        });

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