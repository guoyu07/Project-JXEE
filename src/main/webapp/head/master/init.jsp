<%@ page language="java"
         import="com.jxjee.entity.JXadmin"
         pageEncoding="UTF-8" %>
<%
    boolean isLegal;
    JXadmin admininfo = (JXadmin) session.getAttribute("admininfo");

    int sid = 0;
    String sname = "";
    if (null != admininfo) {
        isLegal = true;
        if (admininfo != null) {
            sid = admininfo.getId();
            sname = admininfo.getUsername();
        }
    } else {
        isLegal = false;
    }

    if (!isLegal) {
%>
<jsp:forward page="${pageContext.request.contextPath}/sys/login.jsp"/>
<%
    }
%>