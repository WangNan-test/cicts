<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
 <head>
  <jsp:include page="/pages/plugins/include_basepath.jsp"/>
  <title>商品列表</title>
  <meta content="format=html5; url=http://m.darryring.com/diamondring_list.aspx" name="mobile-agent" />
  <link rel="stylesheet" type="text/css" href="/statics/bootstrap/css/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="/statics/bootstrap/datetimepicker/bootstrap-datetimepicker.css" />

 </head>
 <body>

  <link href="/statics/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
  <link href="/statics/css/dr.css?v=1.3.5.0" type="text/css" rel="stylesheet" />
  <script src="/statics/js/jquery.js" type="text/javascript"></script>
  <script src="/statics/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>


   <jsp:include page="/pages/plugins/include_headAndUSB.jsp"/>
   <!--导航end-->
   <script type="text/javascript">

</script> 
   <!--钻戒页面中间--> 
   <div class="cort"> 
    <div class="cmain sp_cort fix"> 
     <!--背景图--> 
     <div class="zj_bk"> 
      <div class="zbk_top spalid"> 
       <span>您当前的位置：</span> 
       <span id="website_SiteMapPath1"><a href="#website_SiteMapPath1_SkipLink"></a><span> <a target="_blank" href="/pages/index.jsp">商品浏览</a> </span><span> <em>&gt;</em> </span><span> <span>商品分类</span> </span><a id="website_SiteMapPath1_SkipLink"></a></span>
      </div> 
      <!--banner中间内容--> 

     </div> 
     <!--背景图end--> 


     <!--小导航--> 
     <div class="allchose_nav"> 
      <!--购买选项--> 
      <div class="dr_choose"> 
       <!--选项nav--> 
       <div class="drcho_top"> 
        <ul class="drchoose_ul" id="drchoose_ul">

        </ul> 
       </div>
       <div class="drcho_bto"></div> 
      </div>
      <!--小导航end-->
      <!--参数选项-->
      <div class="select_choose">
       <jsp:include page="/pages/plugins/split_page_search_plugin.jsp"/>
      </div>
      <!--参数选项end-->
     </div>
     <!--高级搜索--> 
     <!--高级搜索end--> 
     <!--购买的款式--> 
     <div class="cmain">
      <ul class="buyit">
       <!--每一个款式-->

       <c:forEach items="${allGoods}" var="goods">
        <!--每一个款式-->

            <li >
             <div class="by_top">
              <a target="_blank" href="page/gid?gid=${goods.gid}"></a>
              <div class="bything-one">
               <img width="236px" height="236" alt="${goods.gname}" src="upload/${goods.gimg}" />
              </div>
             </div>
             <div class="by_center">
             </div>
             <div class="by_bottom">
              <p> <a target="_blank" href="page/gid?gid=${goods.gid}">${goods.gname}</a></span><i>上传时间：
               <fmt:formatDate value="${goods.putday}" pattern="yyyy-MM-dd hh:mm:ss"/></i></p>
              <p> <span>￥${goods.price}</span><i>上传用户：${goods.user.uname}</i></p>
             </div>
            </li>
           </c:forEach>

      </ul> 
      <!--购买的款式end--> 
     </div> 
    
     <div class="paging_all" id="pageing_pagingDiv"> 
      <div class="paging_all-cort">
       <jsp:include page="/pages/plugins/split_page_bar_plugin.jsp"/>
      </div> 
     </div> 
     <!--分页end--> 
     <!--分页end--> 
    </div> 
   </div> 
   <!--底部--> 
   <div class="footer">
     <div class="tw-foot"> 
      <div class="auto" id="Copyright">
       <p>Copyright &copy; 2021 电子商城项目系统. 高新学院计科刘佳利</p>
      </div> 
     </div> 
    </div> 
   </div>
   <!--返回顶部-->
   <div class="comeback" style="display: none;"></div>
   <!--返回顶部end-->
 </body>
</html>