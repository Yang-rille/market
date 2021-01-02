<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>商品管理页面</span>
    </div>
    <div class="search">
        <form method="get" action="${pageContext.request.contextPath }/fruit/query">

            <span>商品名称：</span>
            <input name="queryFruitName" type="text" value="${queryFruitName }">

            <input value="查 询" type="submit" id="searchbutton">
            <a href="${pageContext.request.contextPath }/fruit/userAdd">添加商品</a>
        </form>
    </div>
    <!--会员操作表格-->
    <table class="memberTable" cellpadding="0" cellspacing="0">
        <tr class="firstTr">
            <th width="10%">商品编码</th>
            <th width="10%">商品名称</th>
            <th width="10%">商品价格</th>
            <th width="10%">商品库存</th>
            <th width="20%">描述</th>
            <th width="10%">创建时间</th>
            <th width="30%">操作</th>
        </tr>
        <c:forEach var="fruit" items="${fruitList }" varStatus="status">
            <tr>
                <td>
                    <span>${fruit.fruitCode }</span>
                </td>
                <td>
                    <span>${fruit.fruitName }</span>
                </td>
                <td>
                    <span>${fruit.fruitPrice}</span>
                </td>
                <td>
                    <span>${fruit.fruitStock}</span>
                </td>
                <td>
                    <span>${fruit.fruitDesc}</span>
                </td>
                <td>
					<span>
					<fmt:formatDate value="${fruit.creationDate}" pattern="yyyy-MM-dd"/>
					</span>
                </td>
                <td>
                    <span><a class="viewFruit" href="javascript:;" fruitId=${fruit.id } fruitName=${fruit.fruitName }><img src="${pageContext.request.contextPath }/images/read.png" alt="查看" title="查看"/></a></span>
                    <span><a class="modifyFruit" href="javascript:;" fruitId=${fruit.id } fruitName=${fruit.fruitName }><img src="${pageContext.request.contextPath }/images/xiugai.png" alt="修改" title="修改"/></a></span>
                    <span><a class="deleteFruit" href="javascript:;" fruitId=${fruit.id } fruitName=${fruit.fruitName }><img src="${pageContext.request.contextPath }/images/schu.png" alt="删除" title="删除"/></a></span>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeFruit">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain" >
            <p>你确定要删除该商品吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/fruitlist.js"></script>
