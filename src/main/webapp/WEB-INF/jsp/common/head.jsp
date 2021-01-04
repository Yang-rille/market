<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>慧清水果超市管理系统</title>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath }/css/style.css"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath }/css/public.css"/>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>慧清水果超市管理系统</h1>
    <div class="publicHeaderR">
        <p><span>欢迎访问, </span><span style="color: #fff21b"> ${userSession.userName }</span>！</p>
        <a href="${pageContext.request.contextPath }/user/loginOut">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2021年1月1日 20:20  星期五</span>
</section>
<!--主体内容-->
<section class="publicMian ">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li><a href="${pageContext.request.contextPath }/user/query">人员管理</a></li>
                <li><a href="${pageContext.request.contextPath }/member/query">会员管理</a></li>
                <li><a href="${pageContext.request.contextPath }/fruit/query">商品管理</a></li>
                <li><a href="${pageContext.request.contextPath }/bill/query">订单管理</a></li>
                <li><a href="${pageContext.request.contextPath }/dashboard/view">概览统计</a></li>
                <li><a href="${pageContext.request.contextPath }/user/pwd">密码修改</a></li>
                <li><a href="${pageContext.request.contextPath }/user/loginOut">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
    <input type="hidden" id="referer" name="referer" value="<%=request.getHeader("Referer")%>"/>