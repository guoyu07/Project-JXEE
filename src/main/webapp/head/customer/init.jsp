<%@ page language="java"
         import="com.jxjee.entity.JXuser"
         pageEncoding="UTF-8" %>
<%
    boolean isLegal;
    JXuser jxuser = (JXuser) session.getAttribute("jxuser");

    int sid = 0;
    String sname = "";
    if (null != jxuser) {
        isLegal = true;
        if (jxuser != null) {
            sid = jxuser.getId();
            sname = jxuser.getUsername();
        }
    } else {
        isLegal = false;
    }

    if (!isLegal) {
%>
<jsp:forward page="${pageContext.request.contextPath}/login.jsp"/>
<%
    }
%>