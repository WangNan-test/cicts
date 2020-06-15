<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
    <head>
<meta charset="utf-8"/>
        <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <title>个人中心 - 订单中心</title>
    <link href="/statics/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet"/>
    <link href="/statics/css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet"/>
      <script src="/statics/js/jquery.js" type="text/javascript"></script>
      <script src="/statics/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
    <script type="text/javascript" src="/statics/js/member.js"></script>
    </head>
<body>

<jsp:include page="/pages/plugins/include_headAndUSB.jsp"/>




        <div class="cort">

   <div class="cort">
   <div class="tobuy cmain">
   <div class="cmain mb_back">

        <div class="zbk_top spalid">
        <span>您当前的位置：</span>
        <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
        </div>
        <div class="member_cort">

            <jsp:include page="/pages/plugins/member/member_menu.jsp"/>


            <!--右边的主要内容-->
            <div class="member_cort-right fr">
            	<!--我的订单-->
                <div class="member_myorder">
                	<!--切换nav-->
                    <div class="member_all-nav">
                    	<div class="member_all-nav-top">
                        	<ul class="member_all-nav-ul fl">
                            	<li class="member_all-nav-click">全部评论</li>

                            </ul>
                            <!--右边-->
                            <div class="member_all-nav-right fr">
                            	<i class="member_tz"></i>
                                <span>订单如需加急处理，请及时联系</span>
                               <a target="_blank" style="cursor: pointer" onClick="javascript:showxiaon();">
                                在线客服>></a>
                            </div>
                            <!--右边end-->
                        </div>
                        <!--黄色线-->
                        <div class="member_all-nav-line"></div>
                        <!--黄色线end-->
                    </div>
                    <!--切换nav end-->
                    <!--订单-->

                        <div class="member_myorder-allorder">
                            <div class="member_news-it">

<script src="js/orderlist.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript">
    function deleteOrder(cid) {
        if (confirm("确定要删除评论吗?")) {
            $.get("comment/delete",{cid:cid},function(data){
                alert(data)
                window.location.reload();
            })
        }

    }
</script>
                    <table cellspacing="0" cellpadding="0" border="0" class="member_title-table">
                    	<tbody><tr class="member_myorder-table-first">
                        	<td class="myorder-table_td1">商品信息</td>
                            <td class="myorder-table_td2">商品价格</td>
                            <td class="myorder-table_td3">商品描述</td>
                            <td class="myorder-table_td4">评论信息</td>
                            <td class="myorder-table_td5">评论时间</td>
                            <td class="myorder-table_td6">操作</td>
                        </tr>
                    </tbody></table>
                                <c:if test="${list.size()==0}">还未评论快去逛逛把<a class="jx_shop" href="page/list">去购物</a></c:if>
                        <c:forEach items="#{list}" var="goods">
                            <table cellspacing="0" cellpadding="0" border="0" class="member_myorder-table">
                                        <tbody>
                                                <tr class="member_myorder-table-third">
                                                    <td class="myorder-table_td1">
                                                        <div class="myorder-table-third-cp">
                                                            <div class="img_left fl">
                                                                <a href="page/gid?gid=${goods.gid}">
                                                                    <img width="55" height="55" src="/upload/${goods.gimg}">
                                                                </a>
                                                            </div>
                                                            <div class="img_right fr">
                                                                <a href="page/gid?gid=${goods.gid}">
                                                                    <p>${goods.gname}</p>
                                                                </a>

                                                            </div>
                                                        </div>


                                                    </td>

                                                    <td class="myorder-table_td2">

                                                                <div style="height:55px;line-height:55px;font-family:微软雅黑;" class="myorder-table-third-cp">
                                                                ￥${goods.price}</div>

                                                    </td>
                                                    <td  class="myorder-table_td3">
                                                        ${goods.desc}
                                                    </td>
                                                    <td style="font-family:微软雅黑;" class="myorder-table_td4">
                                                        ${goods.content}
                                                        </td>

                                                    <td class="myorder-table_td5">
                                                        <fmt:formatDate value="${goods.opertime}" pattern="yyyy-MM-dd hh:mm:ss"/>
                                                    </td>
                                                    <td class="myorder-table_td6">


                                                        <p style="cursor:pointer">
                                                            <a onClick="deleteOrder(${goods.id})">删除评论</a>
                                                        </p>
                                                    </td>
                                                </tr>
                            </tbody></table>
                        </c:forEach>

                            </div>

                            <div style="display:none" class="member_news-it">

<script src="js/orderlist.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript">

    function pay(oid){
        $.get("order/pay",{oid:oid},function(data){
            alert(data)
            window.location.reload();
        })
    }
</script>





                            </div>
                        </div>

                   	</div>

                </div>
            	<!--我的订单end-->
            </div>
            <!--右边的主要内容end-->
            </div>

   </div>
   </div>

        </div>


<!--底部-->
<div class="footer">

    <div class="cmain">

        <div class="tw-foot">
            <div class="auto" id="Copyright">
                <p>Copyright &copy; 2020 校园闲置商品交易系统. 高新学院计科1604李欢</p>
            </div>
        </div>
    </div>
</div>



</body></html>