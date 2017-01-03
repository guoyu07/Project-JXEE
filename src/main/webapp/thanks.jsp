<%--
  Created by IntelliJ IDEA.
  User: xuchao
  Date: 2016/11/1
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">

<head>
    <title>非常感谢--江西联合股权交易中心</title>
    <jsp:include page="${pageContext.request.contextPath}/head/customer/css.jsp"/>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/top.jsp"/>

<div class="thanks-document">
<div class="page">
    <blockquote><h1>感谢您的大力支持！</h1></blockquote>

    <p>${msg}，请您保持电话畅通。</p>
    <p>联合股权交易中心向您表示最诚挚的谢意！因为有了您的关注及合作，才有了我们现在的成绩。您的支持与信任就是我们的财富，我们期待着与您有更多地合作、更多地交流，更好地为您服务!</p></div>

</div>
<jsp:include page="${pageContext.request.contextPath}/head/customer/footer.jsp"/>
</body>
<jsp:include page="${pageContext.request.contextPath}/head/customer/js.jsp"/>
</html>