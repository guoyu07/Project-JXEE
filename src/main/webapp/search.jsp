<%--
  Created by IntelliJ IDEA.
  User: xuchao
  Date: 2016/11/2
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">

<head>
    <title>江西联合股权交易中心--搜索</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>

<div class="container container-down-4em">
    <form class="search-box">
        <blockquote><strong>资产转让</strong></blockquote>
        <div class="search-kind">
            <dl>
                <dd>
                    <div class="search-selections">
                        <div class="checkbox icheck">
                            <label class="">
                                <span class="icheckbox_square-blue"><input type="checkbox">
                                    <ins class="iCheck-helper"></ins>
                                </span>
                                债权类
                            </label>
                            <label class="">
                                <span class="icheckbox_square-blue"><input type="checkbox">
                                    <ins class="iCheck-helper"></ins>
                                </span>
                                收益权类
                            </label>
                            <label class="">
                                <span class="icheckbox_square-blue"><input type="checkbox">
                                    <ins class="iCheck-helper"></ins>
                                </span>
                                实物类
                            </label>
                            <label class="">
                                <span class="icheckbox_square-blue"><input type="checkbox">
                                    <ins class="iCheck-helper"></ins>
                                </span>
                                无形资产
                            </label>
                            <label class="">
                                <span class="icheckbox_square-blue"><input type="checkbox">
                                    <ins class="iCheck-helper"></ins>
                                </span>
                                打包资产
                            </label>
                            <label class="">
                                <span class="icheckbox_square-blue"><input type="checkbox">
                                    <ins class="iCheck-helper"></ins>
                                </span>
                                其他资产
                            </label>
                        </div>

                    </div>
                </dd>
            </dl>
        </div>
        <div class="box-tools">
            <div class="input-group search-input">
                <input name="table_search" class="form-control pull-right" placeholder="请输入项目名称（编号）"
                       type="text">

                <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </div>
        <p class="claim">
            声明：本报价由江西联合股权交易中心基于企业所提供信息，经核实统计后得出。仅供投资人参考，不作定价使用。
        </p>
        <div class="search-section">
            <div class="row Article-list">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-body table-responsive">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th><i class="fa fa-file-text-o"></i> 项目编号</th>
                                    <th><i class="fa fa-list-ol"></i> 资产类别</th>
                                    <th><i class="fa fa-file-text"></i> 转让标的名称</th>
                                    <th><i class="fa fa-user"></i> 挂牌方</th>
                                    <th><i class="fa fa-money"></i> 挂牌金额（元）</th>
                                    <th><i class="fa fa-bars"></i> 挂牌状态</th>
                                    <th><i class="fa fa-clock-o"></i> 挂牌截止日</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>ZQ2016000001</td>
                                    <td>债权类</td>
                                    <td>某某公司资产转让包</td>
                                    <td>某商业银行</td>
                                    <td>36,304,455.01</td>
                                    <td>已结束</td>
                                    <td>2016-12-26</td>
                                </tr>
                                <tr>
                                    <td>ZQ2016000002</td>
                                    <td>债权类</td>
                                    <td>某商业银行资产转让包</td>
                                    <td>某商业银行</td>
                                    <td>207,053,171.25</td>
                                    <td>已结束</td>
                                    <td>2016-12-26</td>
                                </tr>
                                <tr>
                                    <td>ZQ2016000003</td>
                                    <td>债权类</td>
                                    <td>某某公司资产包</td>
                                    <td>某商业银行</td>
                                    <td>37,996,268.88</td>
                                    <td>已结束</td>
                                    <td>2016-12-26</td>
                                </tr>
                                <tr>
                                    <td>ZQ2016000004</td>
                                    <td>债权类</td>
                                    <td>某商业银行资产转让包</td>
                                    <td>某商业银行</td>
                                    <td>560,216,760.04</td>
                                    <td>已结束</td>
                                    <td>2016-12-26</td>
                                </tr>
                                <tr>
                                    <td>ZQ2016000005</td>
                                    <td>债权类</td>
                                    <td>某商业银行资产转让包</td>
                                    <td>某商业银行</td>
                                    <td>833,413,684.17</td>
                                    <td>已结束</td>
                                    <td>2016-12-26</td>
                                </tr>
                                <tr>
                                    <td>ZQ2016000006</td>
                                    <td>债权类</td>
                                    <td>某商业银行转让包</td>
                                    <td>某商业银行</td>
                                    <td>8,299,230.02</td>
                                    <td>已结束</td>
                                    <td>2016-12-26</td>
                                </tr>
                                <tr>
                                    <td>ZQ2016000007</td>
                                    <td>债权类</td>
                                    <td>某商业银行资产转让包</td>
                                    <td>某商业银行</td>
                                    <td>188,659,740.38</td>
                                    <td>已结束</td>
                                    <td>2016-12-26</td>
                                </tr>
                                <tr>
                                    <td>ZQ2016000008</td>
                                    <td>债权类</td>
                                    <td>某商业银行资产转让包</td>
                                    <td>某商业银行</td>
                                    <td>145,353,163.20</td>
                                    <td>已结束</td>
                                    <td>2016-12-26</td>
                                </tr>
                                <tr>
                                    <td>ZQ2016000009</td>
                                    <td>债权类</td>
                                    <td>某商业银行资产转让包001号</td>
                                    <td>某商业银行</td>
                                    <td>12,547,451.16</td>
                                    <td>已结束</td>
                                    <td>2016-12-26</td>
                                </tr>
                                <tr>
                                    <td>ZQ2016000010</td>
                                    <td>债权类</td>
                                    <td>某商业银行资产转让包002号</td>
                                    <td>某商业银行</td>
                                    <td>17,650,610.96</td>
                                    <td>已结束</td>
                                    <td>2016-12-26</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<jsp:include page="${pageContext.request.contextPath}/head/customer/footer.jsp"/>
</body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/js.jsp"/>
<script src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</html>