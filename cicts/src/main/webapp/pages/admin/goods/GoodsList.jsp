<%--
  Created by IntelliJ IDEA.
  User: 11154
  Date: 2020/3/6
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/common.jsp"/>
    <script type="text/javascript" src="/statics/js/admin/goods/goods_list.js"></script>
</head>
<body>
<div >
<jsp:include page="/pages/plugins/split_page_search_plugin.jsp"/>
<table class="table table-condensed">
    <thead>
    <tr>
        <td class="text-center" style="width: 5%"><input type="checkbox" id="sabut"/></td>
        <td class="text-center" style="width: 10%"><strong>商品图片</strong></td>
        <td class="text-center" style="width: 10%"><strong>商品名称</strong></td>
        <td class="text-center" style="width: 10%"><strong>商品单价</strong></td>
        <td class="text-center" style="width: 10%"><strong>商品分类</strong></td>
        <td class="text-center" style="width: 45%"><strong>商品描述</strong></td>
        <td class="text-center" style="width: 45%"><strong>上传用户</strong></td>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${allGoods}" var="goods">
        <tr>
            <td class="text-center"><input type="checkbox" id="gid" value="${goods.gid}"></td>
            <td class="text-center"><img src="upload/${goods.gimg}" style="width: 50px;"></td>
            <td class="text-center">${goods.gname}</td>
            <td class="text-center">${goods.price}</td>
            <td class="text-center">${goods.type.tname}</td>
            <td class="text-left">${goods.desc}</td>
            <td class="text-center">${goods.user.uname}</td>

        </tr>
    </c:forEach>
    </tbody>
</table>
<jsp:include page="/pages/plugins/split_page_bar_plugin.jsp"/>

<jsp:include page="/pages/plugins/alert.jsp"/>
</div>
</body>
</html>
