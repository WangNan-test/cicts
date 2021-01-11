<%@ page import="com.tyinf.cicts.vo.User" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
 <head></head>
 <body>
 <jsp:include page="/pages/plugins/include_basepath.jsp"/>
  <link href="/statics/css/shopping.css?v=1.3.5" type="text/css" rel="stylesheet" />
  
  <script src="/statics/js/jquery.js" type="text/javascript"></script>
  <script src="/statics/js/shoppcart.js" type="text/javascript"></script>
  <title>购物车</title> 
  <iframe src="javascript:false;" style="display: none;"></iframe> 
  <form id="aspnetForm" action="/nCart/Cart.aspx" method="post" name="aspnetForm"> 

   <!--全部背景--> 
   <div class="all-thing"> 
    <!--中间内容--> 
    <div class="tcmain">
     <!--头部-->
     <div class="shop_top">
      <div class="shopt_left fl">
       <a title="Darry Ring" href="/pages/index.jsp"> <img width="186" height="42" src="/statics/images/logo-white.png" /> </a>
       <span>校园闲置商品交易系统</span>
      </div>
      <% User user =(User) session.getAttribute("user"); %>
      <div class="shopt_right fr">
       <span id="ctl00_ltlUname">你好！<%=user.getUname()%></span>
       <a class="my_dr" href="/pages/member/member_index.jsp">个人中心</a>
       <a onClick="javascript:logout()" class="tc_dr" href="#">退出</a>
      </div>
     </div>
     <!--头部end-->
     <!--导航条--> 

     <!--导航条end--> 
  
     <script type="text/javascript">
    $(function(){
     $.ajax({
      url:"cart/count",
      type: "post",
      success: function(data){
       $("#cart").html(data)
      }
     })

     $.ajax({
      url:"cart/allprice",
      type: "post",
      success: function(data){
       $("#price").html("￥"+data)
      }
     })
    })
    function deleteCart(gid) {
        if (confirm("确认删除？")) {
            $.get("cart/delete?gid=" + gid, function (data) {
                alert(data)
             window.location.reload();
            });
        }
    }

    function clearCart() {
        if (confirm("确认清除？")) {
            $.get("cart/deleteAll", function (data) {
             alert(data)
                window.location.reload();
            });
        }
    }

</script> 
     <!--内容--> 
     <div class="shop_cort"> 
      <!--左边--> 
      <div class="shop_cort-left fl"> 
       <h3>查看我的购物车</h3> 
       <!--购物车--> 
       <table cellspacing="0" cellpadding="0" border="0" class="shop_tabble"> 
        <tbody>
         <tr class="nav_tr"> 
          <td style="width:240px" class="sp_td">商品</td> 
          <td style="width:100px" class="cz_td">描述</td>
          <td style="width:100px" class="kz_td">id</td>
          <td class="gm_td">购买价</td> 
         </tr>
         <c:forEach items="${list}" var="goods">
         <tr class="cp_tr"> 
          <td class="sp_td"> <a href="page/gid?gid=${goods.gid}" class="jx_shop"> <img width="85" height="85" src="/upload/${goods.gimg}" /> <span> ${goods.gname}</span></a> </td>
          <td class="cz_td">${goods.desc}</td>
          <td class="kz_td">${goods.gid}</td>
          <td style="font-family:微软雅黑" class="gm_td">￥${goods.price}</td>
          <td class="close_td"><span onClick="deleteCart(${goods.gid});" class="sicon s_close"></span></td>
         </tr>
         </c:forEach>
        </tbody>
       </table> 
       <!--购物车end--> 
       <!--结算--> 
       <div class="shop_js"> 
        <a class="jx_shop" href="page/list">继续购物</a>
        <a class="qk_shop" href="javascript:clearCart();">清空购物车</a> 
        <span>你购买了<i id="cart"></i>件商品</span>
        <span>总计：<i style="font-family:微软雅黑" class="fw_bold" id="price"></i></span>
        <span onClick="toPay();" class="end_bt"><em>立即结算</em></span> 
       </div> 
       <!--结算end--> 
      </div>
      <script type="text/javascript">
       function toPay() {
         $.get("order/add", function (data) {
          if(data==1){
           alert("结算成功！");
           window.location.href = "order/list";
          }
          if(data==0){
           alert("快去将商品添加到购物车把！")
           window.location.href = "page/list";
          }
         });

       }

      </script>
      <!--左边end--> 
      <!--右边--> 
      <!--右边--> 
      <div class="shop_cort-right fr"> 
       <div class="shop_right-nr"> 
        <h3>购物帮助指南</h3> 
        <div class="shop_right-zx line_bottom"> 
         <p class="shop_lx">请放心购物</p>
         <p class="shop_tel">任何问题请联系管理员</p>
        </div> 
        <div class="shop_right-zf line_bottom"> 
         <h4>支付安全保障</h4> 
         <p>一手交钱一手交货</p>
         <ul class="shop_right-ul"> 

         </ul> 
        </div> 
        <div class="shop_right-ps"> 
         <h4>全校配送</h4>
         <p class="shop_kd">支持全校配送。</p>
        </div>
       </div> 
      </div> 
      <!--右边end--> 
      <!--右边end--> 
     </div> 
     <!--底部-->
     <!--底部-->
     <div class="cmain shop_foot">
      <p>Copyright &copy; 2021 电子商城项目系统. 高新学院计科刘佳利</p>
      <div class="shop_foot-img">
       <img src="/statics/images/db.jpg" />
      </div>
     </div>
     <!--底部end-->
    </div>

    <!--底部end-->
    </div> 
    <!--全部背景end--> 
   </div> 

  </form> 
 
 </body>
</html>