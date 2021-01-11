<%@ page import="com.tyinf.cicts.vo.User" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html  class="hb-loaded">
 <head></head>
 <body>
 <jsp:include page="/pages/plugins/include_basepath.jsp"/>
  <link href="/statics/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
  <script src="/statics/js/jquery.js" type="text/javascript"></script>
  <script src="/statics/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
  <meta content="Darry Ring官网提供Darry Ring 锁住一生 LOCK套链购买，更有锁住一生 LOCK套链等相关资讯，了解锁住一生 LOCK套链图片、价格就上戴瑞珠宝官网。" name="description" /> 

  <script src="/statics/js/buy_xq.js" type="text/javascript"></script>
  <script src="/statics/js/Magnifier.js" type="text/javascript"></script>
  <script src="/statics/js/fd_hd.js" type="text/javascript"></script>
  <script src="/statics/js/navQH.js" type="text/javascript"></script>
  <link href="/statics/css/dr.css?v=1.3.5.0" type="text/css" rel="stylesheet" />
 <link rel="stylesheet" type="text/css" href="/statics/bootstrap/css/bootstrap.min.css" />
 <link rel="stylesheet" type="text/css" href="/statics/bootstrap/datetimepicker/bootstrap-datetimepicker.css" />

  <title>商品详情</title>
  <script type="text/javascript" async="async" charset="utf-8" src="/statics/js/zh_cn.js?siteid=kf_9883" data-requiremodule="lang"></script>
 <script type="text/javascript" async="async" charset="utf-8" src="/statics/js/chat.in.js?siteid=kf_9883" data-requiremodule="chatManage"></script>
 <script type="text/javascript" async="async" charset="utf-8" src="/statics/js/nt2.js?siteid=kf_9883" data-requiremodule="Window"></script>
 <script type="text/javascript" async="async" charset="utf-8" src="/statics/js/zh_cn.js?siteid=kf_9883" data-requiremodule="lang"></script>
 <script type="text/javascript" async="async" charset="utf-8" src="/statics/js/chat.in.js?siteid=kf_9883" data-requiremodule="chatManage"></script>
 <script type="text/javascript" async="async" charset="utf-8" src="/statics/js/nt2.js?siteid=kf_9883" data-requiremodule="Window"></script>
 <iframe src="javascript:false;" style="display: none;"></iframe>
 <link href="/statics/css/jiathis_counter.css" rel="stylesheet" type="text/css" />

 <script src="http://tajs.qq.com/jiathis.php?uid=1626433&amp;dm=www.darryring.com" charset="utf-8"></script>
 <link href="/statics/css/jiathis_share.css" rel="stylesheet" type="text/css" />
  <iframe frameborder="0" style="position: fixed; display: none; opacity: 0;"></iframe>
  <div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; top: 50%; left: 50%; overflow: auto;"></div>
  <div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; overflow: auto;"></div>
  <iframe frameborder="0" style="display: none;" src="http://v3.jiathis.com/code_mini/jiathis_utility.html"></iframe> 


   <div> 

    <jsp:include page="/pages/plugins/include_headAndUSB.jsp"/>

    <div class="cort"> 
     <!--遮罩--> 
     <div class="backall"> 
     </div> 
     <!--遮罩end--> 
     <!--钻戒页面中间--> 
     <div class="cort"> 
      <div class="tobuy cmain"> 
       <div class="zbk_top spalid"> 
        <span>您当前的位置：</span> 
        <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span> <a target="_blank" href="/page/list">商品浏览</a> </span><span> <em>&gt;</em> </span><span> <a target="_blank" href="/page/list">商品详情</a> </span>
       </div> 
       <!--购买页中间--> 
       <div class="buy_cort"> 
        <script type="text/javascript">
    /*收藏事件*/

    $(function () {

        $(".share_sc").click(function () {
         var gid=${goods.gid}
         $.get("favorite/add",{gid:gid},function(data){
          alert(data);

         } )
        });

    });

</script>
        <!--购买页中间的左边图片--> 
        <div class="buycort_left fl"> 
         <ul class="bc_left"> 
          <li class="li_border"> <img src="/upload/${goods.gimg}" alt="${goods.gname}" /> </li>
         </ul> 
         <!--上下按钮--> 
         <div class="top"></div> 
         <div class="bottom"></div> 
        </div> 
        <!--购买页中间的左边图片end--> 
        <!--购买页中间的中间图片--> 
        <div class="buycort_center fl"> 
         <ul class="ul_center"> 
          <li id="magnifier2083" style="display: list-item;"> <img src="/upload/${goods.gimg}" alt="锁住一生 LOCK套链 0.006 G-I" /> <span style="position: absolute; left: 248px; top: 248px; display: none; width: 150px; height: 150px; background: rgb(153, 153, 153) none repeat scroll 0% 0%; border: 1px solid rgb(0, 0, 0); cursor: move; opacity: 0.4;"></span>
           <div style="position: absolute; overflow: hidden; width: 300px; height: 300px; top: 0px; right: -385px; border: 1px solid rgb(204, 204, 204); z-index: 99998; display: none;">
            <img src="/upload/${goods.gimg}" style="position: absolute; left: -498px; top: -498px; width: 800px; height: 800px;" />
           </div></li> 

         </ul> 
         <div class="kzyl"></div> 
         <!--右按钮--> 
         <div class="big_next"></div> 
         <!--收藏分享--> 
         <div class="share">
          <span class="share_sc fl">收藏商品</span>
          <!-- JiaThis Button BEGIN --> 

          <script charset="utf-8" src="/statics/js/jia.js" type="text/javascript"></script>
          <script charset="utf-8" src="/statics/js/plugin.client.js" type="text/javascript"></script>
          <!-- JiaThis Button END --> 
         </div> 
         <!--收藏分享end--> 
        </div> 
        <!--购买页中间的中间图片end--> 
        <!--购买页中间的右边购买选项--> 
        <div class="buycort_right fr"> 
         <!--钻戒--> 
         <div class="byright_top"> 
          <p>${goods.gname}</p>
          <p> <span>&yen;${goods.price}</span> </p>
          <div class="byright_top-xq"> 
           <i>上传时间：<fmt:formatDate value="${goods.putday}" pattern="yyyy-MM-dd hh:mm:ss"/></i>
           <i>用户评论：${count}</i>

          </div> 
         </div> 
         <!--钻戒end--> 
         <!--参数--> 
         <div class="pho_cs" id="ctl00_content_zbDiv"> 
          <p> <span>商品描述：</span> <i>${goods.desc}</i> </p>

         </div> 
         <!--参数end--> 
         <!--选择材质刻字等--> 

         <!--选择材质刻字等end--> 
         <p class="thered_word">中国大陆用户付款后15个工作日内可收到货品,其它地区请咨询客服。</p> 
         <!--购买选项--> 
         <div id="addCa" class="button buy_button"> 
          <div title="购买商品" class="bt1" id="cartId">
           <span>加入购物车</span>
          </div> 

         </div> 
        </div> 
        <!--购买页中间的右边end--> 
       </div> 
       <!--购买页中间end--> 
      </div>
      <script type="text/javascript" language="javascript">

         $("#cartId").click(function(){
           var gid=${goods.gid}
            $.get("cart/add" ,{gid:gid},function(data){
              alert(data);
             window.location.reload();
            } )
         })
     </script>
      <script>
    function addy(id) {
        
        $.post("/API/ProductAPI.ashx", { action: 'addy', id: id }, function(data) {
            $("#addy" + id).text('(' + data + ')是');
           
        });
    }
    function addn(id) {
         
        $.post("/API/ProductAPI.ashx", { action: 'addn', id: id }, function (data) {
            $("#addn" + id).text('(' + data + ')否');
        });
    }
    </script> 
      <!--小导航--> 
      <div class="allthenav"> 
       <!--导航--> 
       <div class="gd_nav"> 
        <ul class="gdnav_ul"> 
         <li class="gdnav_sp"> <span>商品详情</span> </li> 
         <li> <span>最新评论<em id="commentDataCount">(${count})</em></span> </li>

        </ul> 
       </div> 
       <!--导航end--> 
       <!--导航下的线条--> 
       <div class="gd_nav-line"></div> 
       <!--导航下的线条end--> 
      </div> 
      <!--小导航end--> 
      <!--导航下的所有--> 
      <div class="sy_xx"> 
       <!--商品详情--> 
       <div style="display:block" id="wrap" class="thing_wrap xqbuy_it cmain"> 
        <!--参数详情加图片--> 
        <div class="xq_it cmain"> 
         <!--参数显示--> 
         <div class="border_cs"> 
          <table cellspacing="0" cellpadding="0" border="0" class="border_cs-table"> 
           <tbody>
            <tr> 
             <td class="border_cs-td1">商品信息</td>
             <td class="border_cs-td2"> <span>商品编号：</span> <em>${goods.gid}</em> </td>
             <td class="border_cs-td3"> <span>商品名称：</span> <em>${goods.gname}</em> </td>
             <td class="border_cs-td5"> <span>商品类型：</span> <em>${goods.type.tname}</em> </td>
             <td class="border_cs-td6">&nbsp;</td> 
            </tr> 
            <tr> 
             <td class="border_cs-td1">上传人信息</td>
             <td class="border_cs-td2"> <span>上传人ID：</span> <em>${goods.user.uid}</em> </td>
             <td class="border_cs-td3"> <span>上传人姓名：</span> <em>${goods.user.uname}</em> </td>
            </tr>

           </tbody>
          </table> 
         </div> 
         <!--参数显示end--> 
         <!--产品详情图片--> 

         <!--产品详情图片end--> 
        </div> 
        <!--参数详情加图片end--> 
        <!--评论页开始--> 
        <!--评论页结束--> 
       </div> 
       <!--商品详情end--> 
       <!--最新评论--> 
       <!--评论页--> 
       <div id="wrap" class="xq_it xqbuy_it cmain">

        <!--评论页--> 
        <div class="ask cmain"> 
         <!--别人的评论--> 
         <div class="talk_it"> 
          <!--new评论标题--> 
          <div class="talkit_top"> 
           <div class="talktop_left">
             最新评论 
           </div> 
          </div> 
          <div id="commentContent">
           <c:forEach items="#{list}" var="comment">
           <!--每一条评论-->
           <div class="every_talk"> 
            <!--每一条评论左边--> 
            <div class="evertalk_right fl"> 
             <p>${comment.content}</p>
             <p></p> 
            </div> 
            <!--每一条评论左边end--> 
            <!--每一条评论左边-->

            <div class="evertalk_left fr"> 
             <!--星星--> 
             <p class="star"> </p> 
             <div class="name_date">


              <p>评论人:${comment.uname}</p>
              <p> <fmt:formatDate value="${comment.opertime}" pattern="yyyy-MM-dd hh:mm:ss"/></p>
             </div> 
            </div> 
            <!--每一条评论左边end--> 
           </div>
           </c:forEach>

           <%--<!--每一条评论end--> --%>
           <%--<!--每一条评论--> --%>
           <%--<div class="every_talk"> --%>
            <%--<!--每一条评论左边--> --%>
            <%--<div class="evertalk_right fl"> --%>
             <%--<p>很好很有意义</p> --%>
             <%--<p></p> --%>
            <%--</div> --%>
            <%--<!--每一条评论左边end--> --%>
            <%--<!--每一条评论左边--> --%>
            <%--<div class="evertalk_left fr"> --%>
             <%--<!--星星--> --%>
             <%--<p class="star"> </p> --%>
             <%--<div class="name_date"> --%>
              <%--<p>A**</p> --%>
              <%--<p>2015/6/9 13:18:31</p> --%>
             <%--</div> --%>
            <%--</div> --%>
            <%--<!--每一条评论左边end--> --%>
           <%--</div> --%>
           <%--<!--每一条评论end--> --%>
           <%--<!--每一条评论--> --%>
           <%--<div class="every_talk"> --%>
            <%--<!--每一条评论左边--> --%>
            <%--<div class="evertalk_right fl"> --%>
             <%--<p>1</p> --%>
             <%--<p></p> --%>
            <%--</div> --%>
            <%--<!--每一条评论左边end--> --%>
            <%--<!--每一条评论左边--> --%>
            <%--<div class="evertalk_left fr"> --%>
             <%--<!--星星--> --%>
             <%--<p class="star"> </p> --%>
             <%--<div class="name_date"> --%>
              <%--<p>匿名**</p> --%>
              <%--<p>2015/5/15 16:42:36</p> --%>
             <%--</div> --%>
            <%--</div> --%>
            <%--<!--每一条评论左边end--> --%>
           <%--</div> --%>
           <%--<!--每一条评论end--> --%>
           <%--<!--每一条评论--> --%>
           <%--<div class="every_talk"> --%>
            <%--<!--每一条评论左边--> --%>
            <%--<div class="evertalk_right fl"> --%>
             <%--<p>老婆大人很满意！</p> --%>
             <%--<p></p> --%>
            <%--</div> --%>
            <%--<!--每一条评论左边end--> --%>
            <%--<!--每一条评论左边--> --%>
            <%--<div class="evertalk_left fr"> --%>
             <%--<!--星星--> --%>
             <%--<p class="star"> </p> --%>
             <%--<div class="name_date"> --%>
              <%--<p>晨**</p> --%>
              <%--<p>2015/4/25 10:54:30</p> --%>
             <%--</div> --%>
            <%--</div> --%>
            <%--<!--每一条评论左边end--> --%>
           <%--</div> --%>
           <%--<!--每一条评论end--> --%>
           <%--<!--每一条评论--> --%>
           <%--<div class="every_talk"> --%>
            <%--<!--每一条评论左边--> --%>
            <%--<div class="evertalk_right fl"> --%>
             <%--<p>刚去了武汉店回来有点失望，戒指大了半寸打算编个绳子的，结果营业员说不允许编只能改大小，态度真是不想说了，我还是拿着你们的钻戒去其它品牌店编的，还准备买个男戒，结果品种太少只有几款，至于说选购的感受，感觉跟期望中的实体店相差太大。</p> --%>
             <%--<p></p> --%>
            <%--</div> --%>
            <%--<!--每一条评论左边end--> --%>
            <%--<!--每一条评论左边--> --%>
            <%--<div class="evertalk_left fr"> --%>
             <%--<!--星星--> --%>
             <%--<p class="star"> </p> --%>
             <%--<div class="name_date"> --%>
              <%--<p>勺**</p> --%>
              <%--<p>2015/4/19 21:15:33</p> --%>
             <%--</div> --%>
            <%--</div> --%>
            <%--<!--每一条评论左边end--> --%>
           <%--</div> --%>
           <%--<!--每一条评论end--> --%>
           <%--<!--每一条评论--> --%>
           <%--<div class="every_talk"> --%>
            <%--<!--每一条评论左边--> --%>
            <%--<div class="evertalk_right fl"> --%>
             <%--<p>赞</p> --%>
             <%--<p></p> --%>
            <%--</div> --%>
            <%--<!--每一条评论左边end--> --%>
            <%--<!--每一条评论左边--> --%>
            <%--<div class="evertalk_left fr"> --%>
             <%--<!--星星--> --%>
             <%--<p class="star"> </p> --%>
             <%--<div class="name_date"> --%>
              <%--<p>匿名**</p> --%>
              <%--<p>2015/2/11 22:51:35</p> --%>
             <%--</div> --%>
            <%--</div> --%>
            <%--<!--每一条评论左边end--> --%>
           <%--</div> --%>
           <!--每一条评论end--> 
          </div> 
          <!--new评论标题end--> 
          <!--评论数目--> 
          <div class="talkit_top"> 

            <form method="post"  action="comment/add?gid=${goods.gid}">
             <textarea id="note" name="content" class="form-control" placeholder="请输入评论信息"></textarea>
             <button type="submit" class="btn btn-primary" ><span class="glyphicon glyphicon-pencil" ></span>&nbsp;我要评论</button>
            </form>


           <div class="talktop_left fr"> 
            <span>共<i id="countpl">${count}</i>条评论</span>


           </div> 
          </div> 
          <!--评论数目end--> 
         </div> 
         <!--别人的评论end--> 


        </div> 
        <!--评论页end--> 
       </div> 
       <!--评论页end--> 
       <!--最新评论end-->
      </div> 
      <!--导航下的所有end--> 
      <!--预约其他功能-->
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

   
 </body>
</html>