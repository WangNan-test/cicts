<%@ page import="com.tyinf.cicts.vo.User" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
    <head>
     <jsp:include page="/pages/plugins/include_basepath.jsp"/>
        <meta charset="utf-8"/>
  <link href="/statics/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />


  <script src="/statics/js/jquery.js" type="text/javascript"></script>
  <script src="/statics/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
  <title>个人中心 - 首页</title> 
  <link href="/statics/css/dr.css?v=1.3.5.0" type="text/css" rel="stylesheet" />
  <link href="/statics/css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet" />
  <script type="text/javascript" src="/statics/js/member.js"></script>
   </head>
 <body>
  <form id="aspnetForm" action="member_index.html" method="post" name="aspnetForm"/>
   
   <div>

    <jsp:include page="/pages/plugins/include_headAndUSB.jsp"/>

    <div class="cort"> 
     <div class="cort"> 
      <div class="tobuy cmain"> 
       <div class="cmain mb_back"> 
        <div class="zbk_top spalid"> 
         <span>您当前的位置：</span> 
         <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span> <a target="_blank" href="/pages/index.jsp">闲置商品系统</a> </span><span> <em>&gt;</em> </span><span> <span>个人中心</span> </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
        </div> 
        <div class="member_cort"> 
         <jsp:include page="/pages/plugins/member/member_menu.jsp"/>
         <!--右边的主要内容--> 
         <div class="member_cort-right fr"> 
          <!--我的dr首页--> 
          <div class="member_my_index"> 
           <!--第一块--> 
           <div class="member_cortr-first"> 
            <!--左边--> 
            <div class="member_cortr-first-left fl"> 
             <!--名字--> 
             <div class="member_first-left-top"> 
              <div class="mb_theleft fl">
               <% User user =(User) session.getAttribute("user"); %>
               <span>您好！<%=user.getUname()%></span>
               <a href="/pages/member/member_info.jsp">（个人信息完善）</a>
              </div> 

             </div> 
             <!--名字end--> 
             <!--订单提醒--> 
             <div class="member_first-left-sec"> 
              <div class="mb_theright-sec fl"> 
               <p> <span>订单提醒：</span> <a href="order/list"><span class="vtop">待处理订单</span></a>
              </div> 
              <div class="mb_theright fl"> 
               <p> <span>安全级别：</span> <em class="mb_red-color" id="rou">弱</em> <em id="zhong" class="mb_red-color">中</em> <em id="strong">强</em> </p> 
               <span style="display:none" id="span_pwd">hjl7233163</span> 
               <script type="text/javascript" language="javascript">
                                        $(function () {
                                            var pwd = document.getElementById("span_pwd").innerHTML;

                                            if (pwd.length >= 5 && pwd.length < 9) {
                                                $("#rou").addClass('mb_red-color');
                                                $("#zhong").removeClass('mb_red-color');
                                                $("#strong").removeClass('mb_red-color');
                                            }
                                            if (pwd.length >= 9 && pwd.length < 12) {
                                                $("#rou").addClass('mb_red-color');
                                                $("#zhong").addClass('mb_red-color');
                                                $("#strong").removeClass('mb_red-color');

                                            }
                                            if (pwd.length >= 12 && pwd.length < 20) {
                                                $("#rou").addClass('mb_red-color');
                                                $("#zhong").addClass('mb_red-color');
                                                $("#strong").addClass('mb_red-color');
                                            }

                                        });
                                    </script> 
               <p class="oth_span"> <span>为了您帐户安全，建议进行</span> <a href="/pages/member/member_pwd.jsp">设置</a> </p>
              </div> 
             </div> 
             <!--订单提醒end--> 
            </div> 
            <!--左边end--> 
            <!--右边--> 
            <div class="member_cortr-first-right fr">
             <c:if test="<%=user.getPortrait()==null%>">
              <img width="90" height="90" src="/statics/images/mem.jpg" />
             </c:if>
             <c:if test="<%=user.getPortrait()!=null%>">
              <img width="90" height="90" src="/upload/<%=user.getPortrait()%>" />
             </c:if>

             <p><a href="/pages/member/member_avatar.jsp">编辑个人资料</a></p>
            </div> 
            <!--右边end--> 
           </div> 
           <!--第一块end--> 
           <!--第二块--> 

           <!--快捷通道-->
           <ul class="member_cortr-sec">
            <li class="mb_border">
             <div class="member_cortr-sec-left fl"></div>
             <div class="member_cortr-sec-right fl">
              <h4><a href="order/list">订单查询</a></h4>
              <p>-修改订单</p>
              <p>-订单详情</p>
             </div> </li>
            <li>
             <div class="member_cortr-sec-left member_secimg_2 fl"></div>
             <div class="member_cortr-sec-right fl">
              <h4><a href="cart/list">购物车</a></h4>
              <p>-结算购物</p>
              <p>-查看购物</p>
             </div> </li>
            <li>
             <div class="member_cortr-sec-left member_secimg_3 fl"></div>
             <div class="member_cortr-sec-right fl">
              <h4><a href="favorite/list">查看收藏</a></h4>
              <p>-管理收藏</p>
              <p>-定位商品</p>

             </div> </li>
            <li>
             <div class="member_cortr-sec-left member_secimg_4 fl"></div>
             <div class="member_cortr-sec-right fl">
              <h4><a href="goods/list">上架商品</a></h4>
              <p>-管理商品</p>
              <p>-查看商品</p>
             </div> </li>
           </ul>
           <!--快捷通道end--> 
           <!--第二块end--> 
           <!--第三块--> 


          </div> 
          <!--我的dr首页end--> 
         </div> 
         <!--右边的主要内容end--> 
        </div> 
       </div> 
      </div> 
     </div> 
    </div> 

      <!--条文--> 
      <div class="auto" id="Menu_Service"> 
      </div> 
      <div class="tw-foot"> 
       <div class="auto" id="Copyright">
        <p>Copyright &copy; 2021 电子商城项目系统. 高新学院计科刘佳利</p>
       </div> 
      </div> 
     </div> 
    </div> 



    <!--返回顶部--> 
    <div class="comeback"></div> 
    <!--返回顶部end--> 





 </body>
</html>