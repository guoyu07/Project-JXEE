<%@ page language="java" pageEncoding="UTF-8"%>
<%
session.invalidate();
%>
<!DOCTYPE HTML>
<html lang="zh">
  <head>
    <title>安全退出</title>
    <script type="text/javascript">
    	window.location.href="${pageContext.request.contextPath}/index.jsp";
    </script>
  </head>
  <body>
  	  退出中……<br>
  </body>
</html>