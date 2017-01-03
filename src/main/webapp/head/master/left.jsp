<%@ page language="java" import="com.jxjee.entity.JXadmin" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    boolean isLegal = false;
    JXadmin admininfo = (JXadmin) session.getAttribute("admininfo");

    int sid = 0;
    String sname = "";
    int sroleid = 0;
    int suserlevel = 0;

    if (null != admininfo) {
        isLegal = true;
        if (admininfo != null) {
            sid = admininfo.getId();
            sname = admininfo.getNickname();
            sroleid = admininfo.getRoleid();
            suserlevel = admininfo.getUserlevel();
        }
    } else {
        isLegal = false;
    }
    String parentnode = request.getParameter("parentnode");
    String childnode = request.getParameter("childnode");
%>
<aside class="main-sidebar">
    <section class="sidebar">
        <div class="user-panel">
            <div class="pull-left image">
                <img src="${pageContext.request.contextPath}/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p><%=sname%>
                </p>
                <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
            </div>
        </div>
        <ul class="sidebar-menu">
            <li class="header">功能项</li>
            <li class="treeview <% if("1".equalsIgnoreCase(parentnode)) {out.print("active");}%>">
                <a href="#">
                    <i class="fa fa-file-text-o"></i> <span>文章管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<% if("1".equalsIgnoreCase(childnode) && "1".equalsIgnoreCase(parentnode)) {out.print("active");}%>"><a href="${pageContext.request.contextPath}/sys/newarticle"><i class="fa fa-circle-o"></i> 新增文章 </a></li>
                    <li class="<% if("2".equalsIgnoreCase(childnode) && "1".equalsIgnoreCase(parentnode)) {out.print("active");}%>"><a href="${pageContext.request.contextPath}/sys/myarticlelist?curpageno=1"><i class="fa fa-circle-o"></i> 我的文章 </a></li>
                </ul>
            </li>

            <li class="treeview <% if("2".equalsIgnoreCase(parentnode)) {out.print("active");}%>">
                <a href="#">
                    <i class="fa fa-automobile"></i> <span>路演企业管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<% if("1".equalsIgnoreCase(childnode) && "2".equalsIgnoreCase(parentnode)) {out.print("active");}%>"><a href="${pageContext.request.contextPath}/sys/newluyan"> <i class="fa fa-circle-o"></i>路演发布</a></li>
                    <li class="<% if("2".equalsIgnoreCase(childnode) && "2".equalsIgnoreCase(parentnode)) {out.print("active");}%>"><a href="${pageContext.request.contextPath}/sys/luyanlist?keyname=&city=-1&industry=-1&financing=-1&curpageno=0"> <i class="fa fa-circle-o"></i>路演企业</a></li>
                </ul>
            </li>

            <li class="treeview <% if("5".equalsIgnoreCase(parentnode)) {out.print("active");}%>">
                <a href="#">
                    <i class="fa  fa-tree"></i> <span>青创板企业管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<% if("1".equalsIgnoreCase(childnode) && "5".equalsIgnoreCase(parentnode)) {out.print("active");}%>"><a href="${pageContext.request.contextPath}/sys/newqcb"> <i class="fa fa-circle-o"></i>青创板企业发布</a></li>
                    <li class="<% if("2".equalsIgnoreCase(childnode) && "5".equalsIgnoreCase(parentnode)) {out.print("active");}%>"><a href="${pageContext.request.contextPath}/sys/qcblist?keyname=&city=-1&industry=-1&curpageno=0&qstatus=-1"> <i class="fa fa-circle-o"></i>青创板企业列表</a></li>
                </ul>
            </li>


            <li class="<% if("3".equalsIgnoreCase(parentnode)) {out.print("active");}%> treeview">
                <a href="#">
                    <i class="fa fa-calendar"></i> <span>预约与咨询</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<% if("1".equalsIgnoreCase(childnode) && "3".equalsIgnoreCase(parentnode)) {out.print("active");}%>"><a href="${pageContext.request.contextPath}/sys/appointmentlist?curpageno=1&astate=0"> <i class="fa fa-circle-o"></i>预约</a></li>
                    <li class="<% if("2".equalsIgnoreCase(childnode) && "3".equalsIgnoreCase(parentnode)) {out.print("active");}%>"><a href="${pageContext.request.contextPath}/sys/questionlist?curpageno=1&astate=0"> <i class="fa fa-circle-o"></i>咨询</a></li>
                </ul>
            </li>

            <li class="<% if("4".equalsIgnoreCase(parentnode)) {out.print("active");}%> treeview">
                <a href="#">
                    <i class="fa fa-graduation-cap"></i> <span>栏目管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<% if("1".equalsIgnoreCase(childnode) && "4".equalsIgnoreCase(parentnode)) {out.print("active");}%>"><a href="${pageContext.request.contextPath}/sys/columnlist"><i class="fa fa-circle-o"></i> 栏目管理</a></li>
                </ul>
            </li>
        </ul>


    </section>
    <!-- /.sidebar -->
</aside>