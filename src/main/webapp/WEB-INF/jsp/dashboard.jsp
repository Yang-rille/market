<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/jsp/common/head.jsp" %>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>概览统计页面</span>
    </div>

    <div style="width: 1300px; height: 450px;margin-top: 40px">
        <div id="pillar" style="width: 600px; height: 400px; float: left"></div>
        <div id="pie" style="width: 600px; height: 400px; float: right"></div>
    </div>
</div>

<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/dashboard.js"></script>