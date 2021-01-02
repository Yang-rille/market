<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>会员管理页面 >> 信息查看</span>
    </div>
    <div class="memberView">
        <p><strong>会员编码：</strong><span>${member.memCode }</span></p>
        <p><strong>会员名称：</strong><span>${member.memName }</span></p>
        <p><strong>会员住址：</strong><span>${member.memAddress }</span></p>
        <p><strong>联系电话：</strong><span>${member.memPhone }</span></p>
        <p><strong>创建时间：</strong><span>${member.creationDate }</span></p>
        <p><strong>描述：</strong><span>${member.memDesc}</span></p>
        <div class="memberAddBtn">
            <input type="button" id="back" name="back" value="返回" >
        </div>
    </div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/memberview.js"></script>
