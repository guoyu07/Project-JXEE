<%--
  Created by IntelliJ IDEA.
  User: zz
  Date: 2016/11/2
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>江西联合股权交易中心--产品详情</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>
<div class="container-fluid product">
    <h3 class="product-info-bg"></h3>
    <div class="container page">
        <div class="col-xs-12 part-1">
            <div class="box box-solid">
                <div class="box-body">
                    <dl class="dl-horizontal">
                        <dt>项目编号:</dt>
                        <dd>No0001</dd>
                        <dt>项目名称:</dt>
                        <dd></dd>
                        <dt>挂牌价格:</dt>
                        <dd>50万</dd>
                        <dt>保证金:</dt>
                        <dd></dd>
                        <dt>挂牌截止始时间:</dt>
                        <dd>2016-12-31</dd>
                    </dl>
                </div>
            </div>
        </div>
        <hr>
        <div class="col-xs-12 part-2">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab_1" data-toggle="tab">转让标的的情况</a></li>
                    <li><a href="#tab_2" data-toggle="tab">重要信息披露</a></li>
                    <li><a href="#tab_3" data-toggle="tab">转让方基本情况</a></li>
                    <li><a href="#tab_4" data-toggle="tab">交易条件</a></li>
                    <li><a href="#tab_5" data-toggle="tab">联系方式</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="tab_1">
                        <div class="box-body">
                            <dl class="dl-horizontal">
                                <dt>交易类别:</dt>
                                <dd></dd>
                                <dt>标的资产名称:</dt>
                                <dd></dd>
                                <dt>标的企业性质:</dt>
                                <dd></dd>
                                <dt>所在地区:</dt>
                                <dd></dd>
                                <dt>出具法律意见书的律师机构:</dt>
                                <dd></dd>
                            </dl>
                        </div>

                    </div>
                    <!-- /.tab-pane -->
                    <div class="tab-pane" id="tab_2">
                        <div class="box-body">
                            <dl class="dl-horizontal">
                                <dt>债权本金（万元）:</dt>
                                <dd></dd>
                                <dt>其中保证本金（万元）:</dt>
                                <dd></dd>
                                <dt>其中抵押本金（万元）:</dt>
                                <dd></dd>
                                <dt>债权利息（万元）:</dt>
                                <dd></dd>
                                <dt>债权孳生利息（万元）:</dt>
                                <dd></dd>
                                <dt>物权（万元）:</dt>
                                <dd></dd>
                                <dt>股权（万元）:</dt>
                                <dd></dd>
                                <dt>处置公告:</dt>
                                <dd></dd>
                                <dt>重大事项披露:</dt>
                                <dd></dd>
                            </dl>
                        </div>
                    </div>
                    <!-- /.tab-pane -->
                    <div class="tab-pane" id="tab_3">
                        <div class="box-body">
                            <dl class="dl-horizontal">
                                <dt>转让方企业名称：</dt>
                                <dd></dd>
                                <dt>营业执照编码：</dt>
                                <dd></dd>
                                <dt>所在地区：</dt>
                                <dd></dd>
                                <dt>经营规模：</dt>
                                <dd></dd>
                                <dt>批准单位：</dt>
                                <dd></dd>
                                <dt>批复文号：</dt>
                                <dd></dd>
                                <dt>批复日期：</dt>
                                <dd></dd>
                                <dt>批准文件类型：</dt>
                                <dd></dd>
                            </dl>
                        </div>
                    </div>
                    <!-- /.tab-pane -->
                    <div class="tab-pane" id="tab_4">
                        <div class="box-body">
                            <dl class="dl-horizontal">
                                <dt>付款方式（是否分期付款：</dt>
                                <dd></dd>
                                <dt>延牌约定的周期次数：</dt>
                                <dd></dd>
                                <dt>延牌周期约定的天数：</dt>
                                <dd></dd>
                                <dt>挂牌公告期满后，如未征集到意向 &nbsp;&nbsp;</dt>
                                <dd></dd>
                                <dt>受让方，受让方应具备的基本条件：</dt>
                                <dd></dd>
                            </dl>
                        </div>
                    </div>
                    <div class="tab-pane" id="tab_5">
                        <div class="box-body">
                            <dl class="dl-horizontal">
                                <dt>联系人:</dt>
                                <dd></dd>
                                <dt>联系电话:</dt>
                                <dd></dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <!-- /.tab-content -->
            </div>
            <!-- nav-tabs-custom -->
        </div>
    </div>
    </div>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/footer.jsp"/>
</body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/js.jsp"/>
</html>
