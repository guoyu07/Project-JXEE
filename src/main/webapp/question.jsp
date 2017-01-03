<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>江西联合股权交易中心--问题咨询</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>
<jsp:include page="${pageContext.request.contextPath}/head/customer/carousel.jsp"/>
<!--表单-->
<div class="container">
    <div class="form-table">
        <form action="${pageContext.request.contextPath}/newquestion" method="post">
            <blockquote><strong>请选择咨询问题类型（可多选）</strong></blockquote>
            <div class="row services">
                <div class="col-sm-6 col-md-4 service-box ">
                    <div class="thumbnail service-info" data-name="A.梧桐董秘班">
                        <img src="image/question1.png" />
                        <em class="select-icon"></em>
                        <div class="caption bill-box">
                            <h3>梧桐董秘班</h3>
                            <p>针对挂牌企业定期开展的专题培训研讨会，我们关注企业成长道路上将面临的一切问题与困惑，旨在打造一个供企业家学习交流、促进合作的平台。</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 service-box ">
                    <div class="thumbnail service-info" data-name="B.梧桐学院">
                        <img src="image/question2.png" />
                        <em class="select-icon"></em>
                        <div class="caption bill-box">
                            <h3>梧桐学院</h3>
                            <p>通过与各大专业服务机构合作，甄选优秀的实战专家，设计各类管理课程，为中小企业提供一个提升企业管理能力和锻造个人管理思维的平台。 </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 service-box ">
                    <div class="thumbnail service-info" data-name="C.梧桐董秘班">
                        <img src="image/question3.png" />
                        <em class="select-icon"></em>
                        <div class="caption bill-box">
                            <h3>梧桐董秘班</h3>
                            <p>旨在创造一个安全、信任、坦诚、私密的学习环境；构建一个相互学习、激发智慧的平台。让您撷取企业发展正能量。</p>
                        </div>
                    </div>
                </div>
                <input id="qinfo" name="qinfo" type="hidden"/>
            </div>

            <div class="row">
                <div class="col-md-6">

                    <div class="form-group">
                        <label for="uname">姓名<span class="red">*</span></label>
                        <input type="text" class="form-control" id="uname" name="uname" placeholder="姓名" required>

                    </div>
                    <div class="form-group">
                        <label for="tel">手机号<span class="red">*</span></label>
                        <input type="text" class="form-control" id="tel" name="tel" placeholder="手机号" required>
                    </div>
                    <div class="form-group">
                        <label for="bname">企业名称</label>
                        <input type="text" class="form-control" id="bname" name="bname" placeholder="企业名称">
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="resign">职务</label>
                        <input type="text" class="form-control" id="resign" name="resign" placeholder="职务">
                    </div>
                    <div class="form-group">
                        <label for="memo">其它说明</label>
                        <input type="text" class="form-control" id="memo" name="memo" placeholder="其它说明">
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
                        <div class="col-sm-6 col-md-3 service-box">
                            <div class="thumbnail service-from" data-name="B.中心官网">
                                <div class="caption bill-box">
                                    B.中心官网
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3 service-box">
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
                    </div>
                    <input id="wherefrom" name="wherefrom" type="hidden"/>
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

                $("#qinfo").val(function (index, value) {
                    return value.replace(_name, "");
                });

            } else {
                _this.addClass('selected');

                $("#qinfo").val(function (index, value) {
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