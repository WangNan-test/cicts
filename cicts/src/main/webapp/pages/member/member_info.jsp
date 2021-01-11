<%@ page import="com.tyinf.cicts.vo.User" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
 <head>
   <meta charset="utf-8"/>
  <jsp:include page="/pages/plugins/include_basepath.jsp"/>
  <link rel="stylesheet" type="text/css" href="/statics/plugs/easyui/themes/bootstrap/easyui.css">
  <link rel="stylesheet" type="text/css" href="/statics/plugs/easyui/themes/icon.css">
  <script type="text/javascript" src="/statics/plugs/easyui/jquery.min.js"></script>
  <script type="text/javascript" src="/statics/plugs/easyui/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="/statics/plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
  <script type="text/javascript" src="/statics/js/ajaxfileupload.js"></script>
     <link href="/statics/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
  <script src="/statics/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
  <title>个人中心 - 修改资料</title>
  <link href="/statics/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
  <link href="/statics/css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet" />
  <script src="/statics/js/year_month_day.js" type="text/javascript"></script>
  <script type="text/javascript" language="javascript">
    $(function(){
     //上传头像
     $("#uploadBtn").click(function () {
      $("#uploaddialogId").dialog("open");
     });
    })

    function reg(){

        if(nameNull()&&realNameNull()&&addressNull()&&phonenotNull) {
          $.post("user/save", $("#loginForm").serialize(), function (data) {
            if (data == 0) {
             alert("保存失败");
            } else if (data == 1) {
             alert("手机号已存在");
            } else if (data == 2) {
             alert("保存成功");
             location.reload();//刷新当前页面
            }
            else {
             alert("注册失败");
            }
           })
        }
    }
    function nameNull(){
     var nicname=$("#nicname").val();

     if(nicname==null||nicname==""){
      var notice = '<div class="ts_wrong"><span id="wrong">请输入昵称！</span></div>';
      $('input[name="nicname"]').parent().after(notice);
      return false;
     }else{
      $(".ts_wrong").hide();
      return true;
     }
    }
    function realNameNull(){
     var realName=$("#realName").val();
     if(realName==null||realName==""){
      var notice = '<div class="ts_wrong"><span id="wrong">请输入真实姓名！</span></div>';
      $('input[name="realName"]').parent().after(notice);
      return false;
     }else{
      $(".ts_wrong").hide();
      return true;
     }
    }
    function addressNull(){
     var address=$("#address").val();
     if(address==null||address==""){
      var notice = '<div class="ts_wrong"><span id="wrong">请输入地址！</span></div>';
      $('input[name="address"]').parent().after(notice);
      return false;
     }else{
      $(".ts_wrong").hide();
      return true;
     }
    }
    function phonenotNull(){
     var phone=$("#phone").val();
     if(phone==null||phone==""){
      var notice = '<div class="ts_wrong"><span id="wrong">请输入手机号！</span></div>';
      $('input[name="phone"]').parent().after(notice);
      return false;
     }else if(phone!=null){
      var reg = /^1[3578]\d{9}$/;
      if(reg.test(phone)) {
       $(".ts_wrong").hide();
       return true
      }else{
       var notice = '<div class="ts_wrong"><span id="wrong">手机号格式不正确</span></div>';
       $('input[name="phone"]').parent().after(notice);
       return false;
      }
     }else{
      $(".ts_wrong").hide();
      return true;
     }
    }
    </script>
      </head>
 <body>
  <form id="loginForm" action="" method="post" name="aspnetForm">
    <% User user =(User) session.getAttribute("user"); %>
   <div>
    <jsp:include page="/pages/plugins/include_headAndUSB.jsp"/>
    <div class="cort"> 
     <!--中间--> 
     <div class="cort"> 
      <!--内容--> 
      <div class="cmain mb_back"> 
       <div class="zbk_top spalid"> 
        <span>您当前的位置：</span> 
        <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span> <a target="_blank" href="index.html">Darry Ring</a> </span><span> <em>&gt;</em> </span><span> <a target="_blank" href="member_index.html">我的DR</a> </span><span> <em>&gt;</em> </span><span> <span>个人信息</span> </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span> 
       </div> 
       <!--中间内容--> 
       <div class="member_cort">
        <jsp:include page="/pages/plugins/member/member_menu.jsp"/>
        <!--右边的主要内容--> 
        <div class="member_cort-right fr"> 
         <!--我的个人信息--> 
         <div class="member_person"> 
          <div class="member_ask-tittle"> 
           <h4> 我的个人信息</h4> 

          </div> 
          <!--个人信息填写--> 
          <div class="member_person-cort"> 
           <!--左边--> 
           <div class="member_person-cort_left"> 
            <div class="person-cort_left-word">
             <span id="sp_email"></span> 
            </div>
            <input type="hidden" name="uid" value="<%=user.getUid()%>"/>
            <div class="person-cort_left-write"> 
             <span>昵&nbsp;&nbsp;称：</span> 
             <input type="text" value="<%=user.getUname()%>" class="write_text" id="nicname" name="uname" onblur="nameNull()" />

            </div>
            <div class="person-cort_left-write"> 
             <span>真实姓名：</span> 

             <input type="text" value="<%=user.getRealname()==null? "":user.getRealname()%>" class="write_text" id="realName" name="realname" onblur="realNameNull()"/>

            </div> 
            <div class="person-cort_left-write"> 
             <span>性&nbsp;&nbsp;别：</span> 
             <input type="radio" id="ctl00_content_nan" name="sex" value="男" <%="男".equals(user.getSex())? "checked":""%> />
             <label for="nan"> 男 </label>
             <input type="radio"  id="ctl00_content_nv" name="sex" value="女" <%="女".equals(user.getSex())? "checked":""%> />
             <label for="nv"> 女</label> 
            </div> 
            <div class="person-cort_left-write"> 
             <span>出生日期：</span>
             <input id="dd" type="text" value="<fmt:formatDate value="<%=user.getBirthday()%>" pattern="yyyy-MM-dd hh:mm:ss"/>" class="easyui-datebox" required="required" name="birthday">
            </div>

            <div class="person-cort_left-write">
             <span>地址：</span>
             <input type="text" value="<%=user.getAddress()==null? "":user.getAddress()%>" class="write_text" id="address" name="address" onblur="addressNull()" />

            </div>

            <div class="person-cort_left-write"> 
             <span class="fl">手&nbsp;&nbsp;机：</span> 
             <input type="text" value="<%=user.getPhone()%>" class="write_text fl" id="phone" name="phone" onblur="phonenotNull()" />

            </div> 

            <div id="btnsave" class="bt1 person-cort_left-button" onclick="reg()">
              &gt; 保存
            </div> 
           </div>
           <!--左边end--> 

          </div>
          <!--个人信息填写end--> 
         </div> 
         <!--我的个人信息end--> 
        </div> 
        <!--右边的主要内容end--> 
       </div> 
       <!--中间内容end--> 
      </div> 
      <!--内容end--> 
     </div> 
     <!--中间end--> 
    </div> 
    <!--底部-->
  </form>
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

     <div id="uploaddialogId" class="easyui-dialog" data-options="closed:true">
      <form action="" method="post" enctype="multipart/form-data">
       <input type="file" id="portrait" name="portrait">
      </form>
     </div>
 </body>
</html>