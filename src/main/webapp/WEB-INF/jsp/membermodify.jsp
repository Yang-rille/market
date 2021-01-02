<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>会员管理页面 >> 会员修改页</span>
    </div>
    <div class="memberAdd">
        <form id="memberForm" name="memberForm" method="post" action="${pageContext.request.contextPath }/member/modifysave">
            <input type="hidden" name="id" value="${member.id }">
            <!--div的class 为error是验证错误，ok是验证成功-->
            <div class="">
                <label for="memCode">会员编码：</label>
                <input type="text" name="memCode" id="memCode" value="${member.memCode }" readonly="readonly">
            </div>
            <div>
                <label for="memName">会员名称：</label>
                <input type="text" name="memName" id="memName" value="${member.memName }">
                <font color="red"></font>
            </div>

            <div>
                <label for="memAddress">会员住址：</label>
                <input type="text" name="memAddress" id="memAddress" value="${member.memAddress }">
                <font color="red"></font>
            </div>

            <div>
                <label for="memPhone">联系电话：</label>
                <input type="text" name="memPhone" id="memPhone" value="${member.memPhone }">
                <font color="red"></font>
            </div>

            <div>
                <label for="memDesc">描述：</label>
                <input type="text" name="memDesc" id="memDesc" value="${member.memDesc }">
            </div>
            <div class="memberAddBtn">
                <input type="button" name="save" id="save" value="保存">
                <input type="button" id="back" name="back" value="返回" >
            </div>
        </form>
    </div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/membermodify.js"></script>