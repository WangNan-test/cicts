<%@ page import="com.tyinf.cicts.vo.User" %>
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
                            	<li class="member_all-nav-click">购买订单</li>
                                <li>我的订单</li>
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
                                
<script type="text/javascript" language="javascript">
    function deleteOrder(orderid) {
        if (confirm("确定要取消订单吗?")) {
            $.get("order/cancel",{oid:orderid},function(data){
                alert(data)
                window.location.reload();
            })
        }
        
    }
</script>
                    <table cellspacing="0" cellpadding="0" border="0" class="member_title-table">
                    	<tbody><tr class="member_myorder-table-first">
                        	<td class="myorder-table_td1">订单总条数</td>
                            <td class="myorder-table_td2">订单金额</td>
                            <td class="myorder-table_td2">已付金额</td>
                            <td class="myorder-table_td5">订单状态</td>
                            <td class="myorder-table_td6">操作</td>
                        </tr>
                    </tbody></table>
                                <c:if test="${list.size()==0}">快去购买商品把！！！<a class="jx_shop" href="page/list">去购物</a></c:if>
                        <c:forEach items="#{list}" var="order">
                            <table cellspacing="0" cellpadding="0" border="0" class="member_myorder-table">
                                        <tbody><tr class="member_myorder-table-sec">
                                            <td class="myorder-table-sec_td1" colspan="4">订单号：${order.oid}</td>
                                            <td class="myorder-table-sec_td2" colspan="2">下单时间：<fmt:formatDate value="${order.time}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
                                        </tr>
                                                <tr class="member_myorder-table-third">
                                                    <td class="myorder-table_td1">
                                                                <div>

                                                                    <div class="img_right fr">
                                                                              <a href="/darry_ring/87.html">
                                                                        <p>${order.sum}件商品</p>
                                                                        </a>
                                                                        
                                                                    </div>
                                                                </div>
                                                            
                                                    </td>
                                                    <td class="myorder-table_td3">
                                                        
                                                                <div style="height:55px;line-height:55px;font-family:微软雅黑;" class="myorder-table-third-cp">
                                                                ￥${order.total}</div>
                                                            
                                                    </td>
                                                    <td style="font-family:微软雅黑;" class="myorder-table_td2">
                                                        <c:if test="${order.status==2}">
                                                        ￥${order.total}
                                                        </c:if>
                                                        <c:if test="${order.status==1}">
                                                            ￥0
                                                        </c:if>
                                                        </td>

                                                    <td class="myorder-table_td5">
                                                        <c:if test="${order.status==2}">
                                                            已支付
                                                        </c:if>
                                                        <c:if test="${order.status==1}">
                                                            未处理
                                                        </c:if>
                                                    </td>
                                                    <td class="myorder-table_td6">
                                                        <c:if test="${order.status==2}">
                                                            <a class="myorder-table_pay" href="javaScript:void();">已支 付</a>
                                                        </c:if>


                                                        <c:if test="${order.status==1}">
                                                            <a class="myorder-table_pay" href="javascript:pay(${order.oid})">支 付</a>
                                                        </c:if>



                                                        
                                                         <p>
                                                            <a href="order/allGoods?oid=${order.oid}">查看</a>
                                                        </p>
                                                        <p style="cursor:pointer">
                                                            <a onClick="deleteOrder(${order.oid})">取消订单</a>
                                                        </p>
                                                    </td>
                                                </tr>
                            </tbody></table>
                        </c:forEach>

                            </div>

                            <div style="display:none" class="member_news-it">
                                

<script type="text/javascript" language="javascript">
    <% User user =(User) session.getAttribute("user"); %>
    function pay(oid){
          var address="<%=user.getAddress()%>";

          if(address!="null"){
                $.get("order/pay",{oid:oid},function(data){
                    alert(data)
                    window.location.reload();
                })
          }else{
              alert("收货地址还未填写！！")
              window.location.href = "/pages/member/member_info.jsp";
          }
    }
</script>


                                <table cellspacing="0" cellpadding="0" border="0" class="member_title-table">
                                    <tbody><tr class="member_myorder-table-first">
                                        <td class="myorder-table_td1">商品信息</td>
                                        <td class="myorder-table_td2">商品价格</td>
                                        <td class="myorder-table_td2">顾客姓名</td>
                                        <td class="myorder-table_td4">顾客电话</td>
                                        <td class="myorder-table_td5">顾客地址</td>
                                        <td class="myorder-table_td6">状态</td>
                                    </tr>
                                    </tbody></table>

                                <c:forEach items="${buyList}" var="blist">
                                    <table cellspacing="0" cellpadding="0" border="0" class="member_myorder-table">

                                        <tbody><tr class="member_myorder-table-sec">
                                            <td class="myorder-table-sec_td1" colspan="4">订单号：${blist.oid}</td>
                                            <td class="myorder-table-sec_td2" colspan="2">下单时间：<fmt:formatDate value="${blist.time}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
                                        </tr>
                                        <tr class="member_myorder-table-third">
                                            <td class="myorder-table_td1">

                                                <div class="myorder-table-third-cp">
                                                    <div class="img_left fl">
                                                        <a href="page/gid?gid=${blist.gid}">
                                                            <img width="55" height="55" src="/upload/${blist.gimg}">
                                                        </a>
                                                    </div>
                                                    <div class="img_right fr">
                                                        <a href="page/gid?gid=${blist.gid}">
                                                            <p>${blist.gname}</p>
                                                        </a>

                                                    </div>
                                                </div>

                                            </td>
                                            <td class="myorder-table_td3">

                                                <div style="height:55px;line-height:55px;font-family:微软雅黑;" class="myorder-table-third-cp">
                                                    ￥${blist.price}</div>

                                            </td>
                                            <td style="font-family:微软雅黑;" class="myorder-table_td2">
                                                ${blist.uname}
                                            </td>
                                            <td class="myorder-table_td4">${blist.phone}</td>
                                            <td class="myorder-table_td5">
                                                ${blist.address}
                                            </td>
                                            <td style="font-family:微软雅黑;" class="myorder-table_td6">
                                                已支付

                                            </td>
                                        </tr>


                                        </tbody></table>
                                </c:forEach>
  

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