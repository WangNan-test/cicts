<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
     <meta charset="utf-8"/>
     <jsp:include page="/pages/plugins/include_basepath.jsp"/>
  <title>个人中心 - 我的收藏</title> 

  <script src="/statics/js/jquery.js" type="text/javascript"></script>
  <script src="/statics/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>

   <link href="/statics/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
  <link href="/statics/css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet" />
  <script type="text/javascript" src="/statics/js/member.js"></script>
  <script type="text/javascript">

        function GetUrl(pid, myparm, type) {
            $.get("/nAPI/favorites.ashx?action=geturl", { type: type,myparm:myparm, pid: pid }, function (data) {
                window.location.href = data;
            });
        }
        function deleteFav(gid) {

          $.get("favorite/delete",{gid:gid},function(data){
           alert(data);
           window.location.reload();
          });

        }
    </script>

</head>
<body>
<jsp:include page="/pages/plugins/include_headAndUSB.jsp"/>
    <script type="text/javascript">
    function logout() {
        if (window.confirm('确定退出吗？')) {

            $.get("/nAPI/QuitExit.ashx", function (data) {
                window.location.href = "/";
            });
        }
    }
     function cartId(gid){

              $.get("cart/add" ,{gid:gid},function(data){
               alert(data);
               window.location.reload();
              } )
     }



</script> 
    <div class="cort"> 
     <div class="cort"> 
      <div class="tobuy cmain"> 
       <div class="cmain mb_back"> 
        <div class="zbk_top spalid"> 
         <span>您当前的位置：</span> 
         <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span> <a target="_blank" href="/pages/index.jsp">闲置商品系统</a> </span><span> <em>&gt;</em> </span><span> <a target="_blank" href="/pages/member/member_index.jsp">个人中心</a> </span><span> <em>&gt;</em> </span><span> <span>我的收藏</span> </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
        </div> 
        <div class="member_cort">
            <jsp:include page="/pages/plugins/member/member_menu.jsp"/>
         <!--右边的主要内容--> 
         <div class="member_cort-right fr"> 
          <!--我的收藏--> 
          <div class="member_ollection"> 
           <div class="myorder-xq-news_top"> 
            <p class="fl"> 我的收藏</p> 
            <div class="member_all-nav-right fr"> 
             <span>遇到感兴趣的商品时，如果还没决定立即购买，您可以先把它放入我的收藏，以便下次的查找与购买。</span> 
            </div> 
           </div> 
           <!--收藏的table--> 
           <table cellspacing="0" cellpadding="0" border="0" class="member_ollection-table"> 
            <tbody>
             <tr class="ollection-table-trfirst"> 
              <td class="ollection-table-td1"> 商品信息 </td> 
              <td class="ollection-table-td2"> 价格 </td> 
              <td class="ollection-table-td3"> 收藏日期 </td> 
              <td class="ollection-table-td4"> 操作 </td> 
             </tr>
             <c:forEach items="${list}" var="goods">
             <tr id="myf29592" class="ollection-table-trsec"> 
              <td class="ollection-table-td1"> <img width="93" height="93" class="fl" src="/upload/${goods.gimg}" />
               <div class="ollection-table-word fl"> 
                <p> ${goods.gname}</p>
                <p> ${goods.gid}</p>

               </div> </td> 
              <td class="ollection-table-td2"> ￥${goods.price}</td>
              <td class="ollection-table-td3"> <p> <fmt:formatDate value="${goods.putday}" pattern="yyyy-MM-dd hh:mm:ss"/> 收藏</p> <p>  </p> </td>
              <td class="ollection-table-td4" > <p> <a class="ollection-xq" href="javaScript:void();" onclick="cartId(${goods.gid})" >加入购物车</a> </p> <p> <a class="ollection-xq" href="page/gid?gid=${goods.gid}">商品详情</a> </p> <p class="show_hover">
               <a href="javaScript:void();" onclick="deleteFav(${goods.gid})">删除收藏</a> </p> </td>
             </tr>
             </c:forEach>
            </tbody>
           </table> 
           <!--收藏的table end--> 
          </div> 
          <!--我的收藏end--> 
         </div> 
         <!--右边的主要内容end--> 
        </div> 
       </div> 
      </div> 
     </div> 
    </div> 
    <!--底部--> 
    <div class="footer"> 

     <div style="clear:both"></div> 
     <div class="cmain"> 



      <div class="tw-foot"> 
       <div class="auto" id="Copyright">
        <p>Copyright &copy; 2020 校园闲置商品交易系统. 高新学院计科1604李欢</p>
       </div> 
      </div> 
     </div> 
    </div> 




    <!--返回顶部--> 
    <div class="comeback"></div> 
    <!--返回顶部end--> 





   
 </body>
</html>