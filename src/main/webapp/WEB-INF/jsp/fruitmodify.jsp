<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>商品管理页面 >> 商品修改页</span>
    </div>
    <div class="memberAdd">
        <form id="memberForm" name="memberForm" method="post" action="${pageContext.request.contextPath }/fruit/modifysave">
            <input type="hidden" name="id" value="${fruit.id }">
            <!--div的class 为error是验证错误，ok是验证成功-->
            <div class="">
                <label for="fruitCode">商品编码：</label>
                <input type="text" name="fruitCode" id="fruitCode" value="${fruit.fruitCode }" readonly="readonly">
            </div>
            <div>
                <label for="fruitName">商品名称：</label>
                <input type="text" name="fruitName" id="fruitName" value="${fruit.fruitName }">
                <font color="red"></font>
            </div>

            <div>
                <label for="fruitPrice">商品价格：</label>
                <input type="text" name="fruitPrice" id="fruitPrice" value="${fruit.fruitPrice }">
                <font color="red"></font>
            </div>

            <div>
                <label for="fruitStock">商品库存：</label>
                <input type="text" name="fruitStock" id="fruitStock" value="${fruit.fruitStock }">
                <font color="red"></font>
            </div>

            <div>
                <label for="fruitDesc">描述：</label>
                <input type="text" name="fruitDesc" id="fruitDesc" value="${fruit.fruitDesc }">
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
<script type="text/javascript" src="${pageContext.request.contextPath }/js/fruitmodify.js"></script>