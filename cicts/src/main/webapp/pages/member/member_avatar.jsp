<%@ page import="com.tyinf.cicts.vo.User" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
 <head>
  <jsp:include page="/pages/plugins/include_basepath.jsp"/>
  <link href="/statics/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
     <meta charset="utf-8"/>

  <script src="/statics/js/jquery.js" type="text/javascript"></script>
  <script src="/statics/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
  <title>个人中心 - 上传头像</title> 
  <link href="/statics/css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet" />
  <script type="text/javascript" src="/statics/js/member.js"></script>
  <link type="text/css" rel="stylesheet" href="/statics/css/uploadify.css" />
  <script type="text/javascript" src="/statics/js/jquery.uploadify.js"></script>
  <script type="text/javascript" src="/statics/js/jquery.Jcrop.js"></script>
  <script type="text/javascript" src="/statics/js/Jcrop_photo.js"></script>
  <jsp:include page="/pages/plugins/common.jsp"/>

 </head>

 <jsp:include page="/pages/plugins/include_headAndUSB.jsp"/>
    <script type="text/javascript">
    function logout() {
        if (window.confirm('确定退出吗？')) {

            $.get("/nAPI/QuitExit.ashx", function (data) {
                window.location.href = "/";
            });
        }
    }
</script> 
    <div class="cort"> 
     <div class="cort"> 
      <div class="tobuy cmain"> 
       <div class="cmain mb_back"> 
        <div class="zbk_top spalid"> 
         <span>您当前的位置：</span> 
         <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span> <a target="_blank" href="index.html">Darry Ring</a> </span><span> <em>&gt;</em> </span><span> <a target="_blank" href="member_index.html">我的DR</a> </span><span> <em>&gt;</em> </span><span> <span>修改头像</span> </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span> 
        </div> 
        <div class="member_cort">
         <jsp:include page="/pages/plugins/member/member_menu.jsp"/>
         <% User user =(User) session.getAttribute("user"); %>
         <!--右边的主要内容-->
         <form action="user/upload" method="post"   class="form-horizontal" id="goodsForm" enctype="multipart/form-data" >
          <c:if test="<%=user.getPortrait()==null%>">
          <div style="width: 150px;margin: 0 auto"> <img width="150" height="150" src="/statics/images/mem.jpg" /></div>
          </c:if>
          <c:if test="<%=user.getPortrait()!=null%>">
           <div style="width: 150px;margin: 0 auto"> <img width="150" height="150" src="/upload/<%=user.getPortrait()%>" /></div>
          </c:if>
          <div style="width: 150px;margin: 0 auto;padding: 20px ">
          <input type="file" name="photo" />
          </div>
          <input type="hidden" name="uid" value="<%=user.getUid()%>"/>
          <div style="width: 150px;margin: 0 auto;padding: 20px "><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil" ></span>&nbsp;上传头像</button></div>

         </form>

         <!--右边的主要内容end--> 
        </div> 
       </div> 
      </div> 
     </div> 
    </div> 
    <!--底部--> 
    <div class="footer"> 


     <!--验证身份end--> 

     <div class="cmain"> 

      <!--服务条款--> 


      <div class="tw-foot"> 
       <div class="auto" id="Copyright">
        <p>Copyright &copy; 2020 校园闲置商品交易系统. 高新学院计科1604李欢</p>
       </div> 
      </div> 
     </div> 
    </div> 





    <!--右边漂浮悬挂小的end--> 
    <!--返回顶部--> 
    <div class="comeback"></div> 
    <!--返回顶部end--> 





    
 </body>
</html>