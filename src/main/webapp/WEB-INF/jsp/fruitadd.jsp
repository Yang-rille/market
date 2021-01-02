<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>商品管理页面 >> 商品添加页面</span>
    </div>
    <div class="memberAdd">
        <form id="memberForm" name="memberForm" method="post" action="${pageContext.request.contextPath }/fruit/add">
            <!--div的class 为error是验证错误，ok是验证成功-->
            <div class="">
                <label for="fruitCode">商品编码：</label>
                <input type="text" name="fruitCode" id="fruitCode" value="">
                <!-- 放置提示信息 -->
                <font color="red"></font>
            </div>
            <div>
                <label for="fruitName">商品名称：</label>
                <input type="text" name="fruitName" id="fruitName" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="fruitPrice">商品价格：</label>
                <input type="text" name="fruitPrice" id="fruitPrice" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="fruitStock">商品数量：</label>
                <input type="number" name="fruitStock" id="fruitStock" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="fruitDesc">描述：</label>
                <input type="text" name="fruitDesc" id="fruitDesc" value="">
            </div>
            <div class="memberAddBtn">
                <input type="button" name="add" id="add" value="保存">
                <input type="button" id="back" name="back" value="返回" >
            </div>
        </form>
    </div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/fruitadd.js"></script>
