<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>商品管理页面 >> 信息查看</span>
    </div>
    <div class="memberView">
        <p><strong>商品编码：</strong><span>${fruit.fruitCode }</span></p>
        <p><strong>商品名称：</strong><span>${fruit.fruitName }</span></p>
        <p><strong>商品价格：</strong><span>${fruit.fruitPrice }</span></p>
        <p><strong>商品库存：</strong><span>${fruit.fruitStock }</span></p>
        <p><strong>创建时间：</strong><span>${fruit.creationDate }</span></p>
        <p><strong>描述：</strong><span>${fruit.fruitDesc}</span></p>
        <div class="memberAddBtn">
            <input type="button" id="back" name="back" value="返回" >
        </div>
    </div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/fruitview.js"></script>
