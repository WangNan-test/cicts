
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<jsp:include page="/pages/plugins/include_basepath.jsp"/>
	<jsp:include page="/pages/plugins/common.jsp"/>
	<script type="text/javascript" src="/statics/js/admin/goods/goods_list.js"></script>
</head>
<body>

<%!
	public static String GOODS_ADD_URL = "pages/member/goods/goods_add.jsp" ;
	public static String GOODS_EDIT_URL = "goods/editpro" ;
	public static String GOODS_LIST_URL = "pages/member/goods/goods_list.jsp" ;
%>
<div>
	<jsp:include page="/pages/plugins/include_headAndUSB.jsp"/>
	<!--中间-->
	<div class="cort">
		<!--内容-->
		<div class="cmain mb_back">
			<div class="zbk_top spalid">

				<div class="zbk_top spalid">
					<span>您当前的位置：</span>
					<span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span>
                <a target="_blank" href="/pages/index.jsp">闲置商品系统</a>
            </span><span>
            <em>></em>
            </span><span>
                <a target="_blank" href="/pages/member/member_index.jsp">个人中心</a>
            </span><span>
            <em>></em>
            </span><span>
            <span>上架的商品</span>
            </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
				</div>
			</div>
			<!--中间内容-->
			<div class="member_cort">
				<!--左边树-->
				<jsp:include page="/pages/plugins/member/member_menu.jsp"/>

				<!--左边树end-->
				<!--右边的主要内容-->
				<div class="member_cort-right fr">

						<strong><span class="glyphicon glyphicon-th-list"></span>&nbsp;商品信息列表</strong>


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
										<td class="text-left" style="width: 10%"><strong>操作</strong></td>
									</tr>
									</thead>
									<tbody>
									<c:forEach items="${allGoods}" var="goods">
									<tr>
										<td class="text-center"><input type="checkbox" id="gid" value="${goods.gid}"></td>
										<td class="text-center"><img src="/upload/${goods.gimg}" style="width: 50px;"></td>
										<td class="text-center">${goods.gname}</td>
										<td class="text-center">${goods.price}</td>
										<td class="text-center">${goods.type.tname}</td>
										<td class="text-left">${goods.desc}</td>
										<td class="text-left"><a class="btn btn-warning btn-sm" href="<%=GOODS_EDIT_URL%>?gid=${goods.gid}">
											<span class="glyphicon glyphicon-edit"></span>&nbsp;编辑</a></td>
									</tr>
									</c:forEach>
									</tbody>
								</table>
								<jsp:include page="/pages/plugins/split_page_bar_plugin.jsp"/>
								<div>
									<a href="goods/addpro" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;商品发布</a>
									<button type="button" id="deleteBut" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span>&nbsp;删除商品信息</button>
								</div>
								<jsp:include page="/pages/plugins/alert.jsp"/>



				<!--右边的主要内容end-->
			</div>
			<!--中间内容end-->
		</div>
		<!--内容end-->
	</div>
	<!--中间end-->

</div>



	<!--底部-->



	<div class="model" id="model">
		<div class="Prompt" id="Prompt">
		</div>
		<span id="log_uid" style="display:none"></span>
		<span id="log_uname" style="display:none"></span>
		<span id="log_orderid" style="display:none"></span>
		<span id="log_price" style="display:none"></span>

	</div>
	<script src="http://wpa.b.qq.com/cgi/wpa.php" charset="utf-8" type="text/javascript"></script>
	<!--客服(2014年8月29日)-->
	<div style="display:none" class="Ffloat_kf">
		<div class="fkf_top">
			<div style="cursor: pointer; display: none;" id="bridgehead">
			</div>
			<div id="BizQQWPA"></div>
			<div onClick="showModel(modelsever);" style="cursor: pointer;" class="qq_hover" id="qqTalk_head">
			</div>
			<div id="BizQQWPAB" class="sh">
			</div>

			<div id="bdBridge">
				<a href="javascript:NTKF.im_openInPageChat()">
					<img width="75" height="37" src="/statics/images/zx.jpg"></a></div>

		</div>
		<div class="fkf_bottom">
			<img width="92" height="82" alt="Darry Ring 官方微信" src="/statics/images/to_erwei.jpg">
			<a href="#">
				<img width="92" height="26" src="/statics/images/db.jpg"></a>
		</div>
	</div>

	<!--新版右边客服start-->

	<!--右边漂浮悬挂大的-->
	<%--<div class="float_big">--%>
		<%--<div class="floatbig_hide fr"></div>--%>
		<%--<div class="floatbig_center">--%>
			<%--<!--客服-->--%>
			<%--<div onClick="javascript:NTKF.im_openInPageChat();" id="Bearonline" class="floatbig_center-kf"></div>--%>
			<%--<!--客服end-->--%>
			<%--<!--定制咨询-->--%>
			<%--<div id="dzzxonline" class="floatbig_center-zx">--%>
				<%--<a href="javascript:showModel(modelsever);"></a>--%>
			<%--</div>--%>
			<%--<!--定制咨询end-->--%>
			<%--<img src="/statics/images/ew.jpg">--%>
		<%--</div>--%>
	<%--</div>--%>
	<!--右边漂浮悬挂大的end-->
	<!--右边漂浮悬挂小的-->
	<%--<div class="float_small">--%>
		<%--<div class="floatbig_show fr"></div>--%>
		<%--<div class="floatbig_center">--%>
			<%--<!--客服-->--%>
			<%--<div onClick="javascript:NTKF.im_openInPageChat();" class="floatsmall_center-kf fr"></div>--%>
			<%--<!--客服end-->--%>
			<%--<!--定制咨询-->--%>
			<%--<div class="floatsmall_center-zx fr">--%>
				<%--<a href="javascript:showModel(modelsever);"></a>--%>
			<%--</div>--%>
			<%--<!--定制咨询end-->--%>
			<%--<!--二维码-->--%>
			<%--<div class="floatsmall_erwei fr">--%>
				<%--<a href="#"></a>--%>
			<%--</div>--%>
			<%--<!--二维码end-->--%>
		<%--</div>--%>
	<%--</div>--%>
	<!--右边漂浮悬挂小的end-->
	<!--返回顶部-->
	<div class="comeback"></div>
	<!--返回顶部end-->
</div>
</body></html>