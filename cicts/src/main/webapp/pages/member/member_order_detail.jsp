<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded"><head>
    <link href="/statics/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet"/>

 <meta charset="utf-8"/>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <title>个人中心 - 订单详情</title>
    <link href="/statics/css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet"/>
     <script src="/statics/js/jquery.js" type="text/javascript"></script>
     <script src="/statics/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
     <script src="/statics/js/member.js" type="text/javascript"></script>
    <script>
        function showPrint(i) {
            window.open('http://dr.darryring.com/PrintOrderNew.aspx?o=' + i + "&m=" + '238716', 'newwindow', 'height=700,width=755,top=0,left=0,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no');
        }
    </script>
     </head>
<body>
    <form id="aspnetForm" action="/member/member_order_detail.html" method="post" name="aspnetForm">

        <jsp:include page="/pages/plugins/include_headAndUSB.jsp"/>


        <div class="cort">
        
    <div class="cort">
    <div class="tobuy cmain">
    <div class="cmain mb_back">
        
        <div class="zbk_top spalid">
        <span>您当前的位置：</span>
        <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span>
                <a target="_blank" href="/pages/index.jsp">校园闲置</a>
            </span><span>
            <em>></em>
            </span><span>
                <a target="_blank" href="/pages/member/member_index.jsp">个人中心</a>
            </span><span>
            <em>></em>
            </span><span>
            <span>订单详情</span>
            </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
        </div>
        <div class="member_cort">

            <jsp:include page="/pages/plugins/member/member_menu.jsp"/>

         <!--右边的主要内容-->
            <div class="member_cort-right fr">
            	<!--我的订单详情-->
                <div class="member_myorder-xq">
                	<!--详情顶部-->
                    <ul class="member_myorder-xq-tittle">
                    	<li>
                        	<i>您的订单号：${order.oid}</i>
                        </li>
                        <li>
                        	<i>订单状态： </i>
                            <a href="#"><c:if test="${order.status==2}">
                                已支付
                            </c:if>
                                <c:if test="${order.status==1}">
                                    未处理
                                </c:if></a>
                        </li>
                        <li>
                            <i>下单时间：</i>
                            <span><fmt:formatDate value="${order.time}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
                        </li>
                    </ul>
                    <!--详情顶部-->
                    <!--订单情况-->

                    <!--订单情况end-->
                    <!--订单信息-->
                    <div class="member_myorder-xq-news">
                    	<div class="myorder-xq-news_top">
                        	<p class="fl">订单信息</p>
                            <div class="member_all-nav-right fr">
                                <span>订单如需加急处理，请及时联系</span>
                                <a style="cursor: pointer" onClick="javascript:showxiaon();">管理员>></a>
                            </div>
                        </div>
                        <!--订单信息的table-->
                        <table cellspacing="0" cellpadding="0" border="0" class="myorder-xq-news_table" style="font-family:微软雅黑">
                        	<tbody><tr>
                            	<td class="news_table-td1">订单状态</td>
                                <td class="news_table-td2"><c:if test="${order.status==2}">
                                    已支付
                                </c:if>
                                    <c:if test="${order.status==1}">
                                        未处理
                                    </c:if></td>
                                <td class="news_table-td1">用户名称</td>
                                <td class="news_table-td3">${user.uname}</td>
                            </tr>
                            <tr>
                            	<td class="news_table-td1">订单总金额</td>
                                <td class="news_table-td2">￥${order.total}</td>
                                <td class="news_table-td1">用户性别</td>
                                <td class="news_table-td3">${user.sex}</td>
                            </tr>
                            <tr>
                            	<td class="news_table-td1">收货人</td>
                                <td class="news_table-td2">${user.realname}</td>
                                <td class="news_table-td1">邮政编码</td>
                                <td class="news_table-td3">710000</td>
                            </tr>
                            <tr>
                            	<td class="news_table-td1">移动电话</td>
                                <td class="news_table-td2">${user.phone}</td>
                                <td class="news_table-td1">收货人地址</td>
                                <td class="news_table-td3">${user.address}</td>
                            </tr>


                        </tbody></table>
                        <!--订单信息的table end-->
                        <div class="myorder-xq-news_top">
                        	<p class="fl">商品明细</p>
                            <div class="member_all-nav-right fr">
                                <i class="member_dy"></i>
                                <a onClick="showPrint('20150707888887');" target="_blank" style="cursor: pointer">打印订单</a>
                            </div>
                        </div>
                        <!--商品明细-->
                        <table cellspacing="0" cellpadding="0" border="0" class="myorder-xq-shop_table">
                        	<tbody><tr class="xq-shop_table-trfirst">
                            	<td class="xq-shop_table-td1">商 品</td>
                                <td class="xq-shop_table-td2">描述</td>

                                <td class="xq-shop_table-td4">数量</td>

                                <td class="xq-shop_table-td6">价 格</td>
                            </tr>
                                    <c:forEach items="${list}" var="goods">
                                    <tr class="xq-shop_table-trsec">
                            	        <td class="xq-shop_table-td1">
                                	        <a href="page/gid?gid=${goods.gid}">
                                            <img width="55" height="55" class="fl" src="/upload/${goods.gimg}">
                                            <span class="fl">
                                            ${goods.gname}
                                            </span></a>
                                        </td>
                                        <td class="xq-shop_table-td2">
                                	        <p>${goods.desc}</p>
                              	        </td>

                                        <td class="xq-shop_table-td4">
                                	        <p>1</p>
                                        </td>

                                        <td style="font-family:微软雅黑" class="xq-shop_table-td6">￥${goods.price}</td>
                                    </tr>
                                    </c:forEach>
                        </tbody></table>
                        <!--商品明细end-->

                    <!--订单信息end-->
                    <!--返回订单-->
                    <div class="member_myorder-xq-retrun">
                    	<a class="fr" href="order/list">> 返回订单列表</a>
                    </div>
                    <!--返回订单end-->
                </div>
            	<!--我的订单详情end-->
            </div>
            <!--右边的主要内容end-->
            </div>
            </div>
    </div>
    </div>
    </div>

        </div>
        

<!--底部-->
<div class="footer">


            <!--验证身份end-->
    <div class="cmain">

        <div class="tw-foot">
            <div class="auto" id="Copyright">
                <p>Copyright &copy; 2020 校园闲置商品交易系统. 高新学院计科1604李欢</p>
            </div>
        </div>
    </div>
</div>




</body></html>