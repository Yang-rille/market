<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>会员管理页面</span>
    </div>
    <div class="search">
        <form method="get" action="${pageContext.request.contextPath }/member/query">
            <span>会员编码：</span>
            <input name="queryMemCode" type="text" value="${queryMemCode }">

            <span>会员名称：</span>
            <input name="queryMemName" type="text" value="${queryMemName }">

            <input value="查 询" type="submit" id="searchbutton">
            <a href="${pageContext.request.contextPath }/member/userAdd">添加会员</a>
        </form>
    </div>
    <!--会员操作表格-->
    <table class="memberTable" cellpadding="0" cellspacing="0">
        <tr class="firstTr">
            <th width="10%">会员编码</th>
            <th width="20%">会员住址</th>
            <th width="10%">会员名称</th>
            <th width="10%">联系电话</th>
            <th width="10%">描述</th>
            <th width="10%">创建时间</th>
            <th width="30%">操作</th>
        </tr>
        <c:forEach var="member" items="${memberList }" varStatus="status">
            <tr>
                <td>
                    <span>${member.memCode }</span>
                </td>
                <td>
                    <span>${member.memAddress }</span>
                </td>
                <td>
                    <span>${member.memName}</span>
                </td>
                <td>
                    <span>${member.memPhone}</span>
                </td>
                <td>
                    <span>${member.memDesc}</span>
                </td>
                <td>
					<span>
					<fmt:formatDate value="${member.creationDate}" pattern="yyyy-MM-dd"/>
					</span>
                </td>
                <td>
                    <span><a class="viewMember" href="javascript:;" memid=${member.id } memname=${member.memName }><img src="${pageContext.request.contextPath }/images/read.png" alt="查看" title="查看"/></a></span>
                    <span><a class="modifyMember" href="javascript:;" memid=${member.id } memname=${member.memName }><img src="${pageContext.request.contextPath }/images/xiugai.png" alt="修改" title="修改"/></a></span>
                    <span><a class="deleteMember" href="javascript:;" memid=${member.id } memname=${member.memName }><img src="${pageContext.request.contextPath }/images/schu.png" alt="删除" title="删除"/></a></span>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeMem">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain" >
            <p>你确定要删除该会员吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/memberlist.js"></script>
